var mysql = require("mysql");
var inquirer = require("inquirer");

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
    connection.query("SELECT * FROM products", function (err, results){
if (err) throw err;
var stock = results;
var app = newTable();

stock.forEach(function (result){
app.cell("ID", result.id);
app.cell("product name", result.product_name);
app.cell("department name", result.department_name);
app.cell("price", result.price);
app.cell("stock", result.stock_quantity);
app.newRow();
});
console.log(app.toString());
selectItem();

    });
}

list_products();
function selectItem(){
    connection.query("SELECT * FROM products", function (err, results){
        if (err) throw err;
})

inquirer.prompt({
    name: "item_id"
    type: "stock_quantity"
    message: "Choose item using ID number and type a quantity"
    })
    .then(function (answer){
        var idItem = answer.item_id;
        var quantity = answer.quantity;
        quantity = Number(quantity);
        var ItemInCart = []

var inStock = connection.query(
    "SELECT stock_quantity FROM products WHERE id IN ("+ idItem +")",
function (err, id) {
    if (err){throw err;
    }
    else{
        setValue(id);
    }
}
);
function setValue(value){
if (value[0] != undefined){
inStock = value;
idItem = parseInt(idItem);
var idArray = [];
for (var i=0,; i < result.length; i++){
idArray.push(results[i].id);
}
newInventory = inStock[0].stock_quantity;
if (idArray.includes(idItem) && newInventory >= quantity){
    console.log("transaction succesful");
    var updatedInventory = newInventory - quantity;
    connection.query(
        'UPDATE products SET stock_quantity = ${updatedInventory} WHERE id=${idItem}'
    );
    list_products();
}
else{
    console.log("Not enough products in stock");
    list_products();
}
}
else{
console.log("try another product")
list_products();
}
}
})
