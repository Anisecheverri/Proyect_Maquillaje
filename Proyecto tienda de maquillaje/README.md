-- Modelo Relacional para una tienda de maquillaje

Cliente(customer)

customer_id(PK) Primary Key / Llave primaria (Numerico)
customer_name: Nombre del autor (Texto o Alfanumerico)
customer_email: Correo del cliente (Texto o Alfanumerico)
customer_phone: Telefono del cliente (Numerico o Alfanumerico)
customer_address: Direccion del cliente (Texto o ALfanumerico)

Producto(Product)

Product_id(PK) Identificador unico del producto (Numerico o Alfanumerico)
Product_name: Nombre del producto (Texto)
Product_description: Descripcion del producto (Texto)
Product_price: Precio del producto (Numerico o ALfanumerico)
Product_category_id: Tipo de categoria del producto (Numerico o Alfanumerico)

Categoria(Category)

Category_id(PK) Identificador unico de la categoria (Numerico o ALfanumerico)
Category_name: Nombre de la categoria (Texto)
Category_description: Descripcion de la categoria (Texto)

Vendedor(seller)

seller_id(PK) Identificador unico del vendedor (Numerico o ALfanumerico)
seller_name: Nombre del vendedor (Texto)
seller_lastname: Apellido del vendedor (Texto)
seller_phone: Telefono del vendedor (Numerico o Alfanumerico)

Compra(buys)

buys_id: Identificador unico de la compra (Numerico o Alfanumerico)
buys_date: Fecha en la que realiza la compra (Numerico o Alfanumerico)
buys_customer_id: Identificador del cliente que realiza la compra (Numerico o Alfanumerico)

Detalle compra (purchase detail)

purchasedetail_id(PK) Identificador unico del detalle de la compra (Numerico o Alfanumerico)
purchasedetail_buys_id: Identificador de la compra realizada (Numerico o Alfanumerico)
purchasedetail_product_id: Identificador del producto comprado (Numerico o Alfanumerico)