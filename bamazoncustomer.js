var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");
var products =[];

var connection = mysql.createConnection({
    host:"localhost",
    port:3306,
    user:"root",
    password: "a123456b",
    database: "bamazon_db",
});

connection.connect(function (err) {
    if (err) throw err;
    list_products();
});

function list_products(){
connection.query("SELECT * FROM products", function (err, res){
if (err) throw err;
var stock = [];
res.forEach((app) => {
var newTable = [
    app.item_id,
    app.product_name,
    app.department_name,
    app.price,
    app.stock_quantity,
];
products.push(newTable);
});
console.table(
    ["id", "product", "department", "price", "quantity"],
    products
);

selectItem();

    });
}

function selectItem(){
inquirer.prompt([
    {
    name: "product",
    message: "Choose item using ID",
    },
    {
        name: "quantity",
        message: "type number of items you want to buy",
        },
])
    .then(function (answer){
        connection.query("SELECT * FROM products WHERE ?", 
        {item_id: answer.product,},
        function (err, res){
        if (err) throw err;
        if(res[0].stock_quantity >= Number(answer.quantity)){
            updateInventory(answer.product, answer.quantity);
            console.log("transaction succesful");
        }
        else{
            console.log("Not enough items");
        }
    
    });
});
};


function updateInventory(product, quantity) {
var inventory = 0;
connection.query("SELECT FROM products WHERE ?",
{
    item_id: product,
},
function (err, res) {
    (inventory = res.stock_quantity);
    updateDatabase(inventory, product, quantity);
}
);
}

function updateDatabase (inventory, product, quantity){
    connection.quary("UPDATE products SET ? WHERE ?",
   
        {
            stock_quantity: quantity - inventory,
        },
        {
            item_id: product,
        },
    

    function (err, res) {
        if (err) throw err;
    });
}
