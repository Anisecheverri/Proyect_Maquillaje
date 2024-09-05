--Crear base de datos con MySQL
CREATE DATABASE Tiendamaquillaje;

Use Tiendamaquillaje;

--Crear tabla Cliente
CREATE TABLE "Customer" (
	"customer_id"	INTEGER,
	"customer_name"	TEXT NOT NULL,
	"customer_email"	TEXT,
	"customer_phone"	NUMERIC NOT NULL,
	"customer_address"	TEXT,
	PRIMARY KEY("customer_id" AUTOINCREMENT)
);

--Crear tabla Producto
CREATE TABLE "Product" (
	"Product_id"	INTEGER,
	"Product_name"	TEXT NOT NULL,
	"Product_description"	TEXT NOT NULL,
	"Product_price"	NUMERIC NOT NULL,
	"Product_category_id"	INTEGER,
	PRIMARY KEY("Product_id" AUTOINCREMENT)
	FOREIGN KEY("Product_category_id") REFERENCES Category(Category_id)
);

--Crear tabla categoria
CREATE TABLE "Category" (
	"Category_id"	INTEGER,
	"Category_name"	TEXT NOT NULL,
	"Category_description"	TEXT,
	PRIMARY KEY("Category_id" AUTOINCREMENT)
);

--Crear tabla vendedor
CREATE TABLE "Seller" (
	"seller_id"	INTEGER,
	"seller_name"	TEXT NOT NULL,
	"seller_lastname"	TEXT,
	"seller_phone"	NUMERIC NOT NULL,
	PRIMARY KEY("seller_id" AUTOINCREMENT)
);

--Crear tabla compra
CREATE TABLE "Buys" (
	"buys_id"	INTEGER,
	"buys_date"	NUMERIC NOT NULL,
	"buys_client_id"	INTEGER,
	PRIMARY KEY("buys_id" AUTOINCREMENT)
	FOREIGN KEY("buys_client_id") REFERENCES Customer(customer_id)
);

--Crear tabla Detalle compra
CREATE TABLE "Purchasedetail" (
	"purchasedetail_id"	INTEGER,
	"purchasedetail_buys_id"	INTEGER,
	"purchasedetail_product_id"	INTEGER,
	PRIMARY KEY("purchasedetail_id" AUTOINCREMENT)
	FOREIGN KEY("purchasedetail_buys_id") REFERENCES Buys(buys_id)
	FOREIGN KEY("purchasedetail_product_id") REFERENCES Product(Product_id)
);