CREATE TABLE Customer(
	customer_id int,
	customer_name nvarchar(100),

	primary key(customer_id)
);

CREATE TABLE Employee(
	employee_id int,
	employee_name nvarchar(100),
	salary float,
	supervisor_id int,

	primary key(employee_id)
);

CREATE TABLE Product(
	product_id int,
	product_name nvarchar(100),
	product_price float,

	primary key(product_id)
);

CREATE TABLE Orders(
	order_id int,
	order_date datetime,
	customer_id int,
	employee_id int,
	total float,

	primary key(order_id),
	foreign key(customer_id) references Customer(customer_id),
	foreign key(employee_id) references Employee(employee_id)
);

CREATE TABLE LineItem(
	order_id int,
	product_id int,
	quantity int,
	price float,

	primary key(order_id, product_id),
	foreign key(order_id) references Orders(order_id),
	foreign key(product_id) references Product(product_id)
);

-- Thêm dữ liệu vào bảng dbo.Customer
INSERT INTO dbo.Customer VALUES (1,N'Bùi Tấn Trường');
INSERT INTO dbo.Customer VALUES (2,N'Đoàn Văn Hậu');
INSERT INTO dbo.Customer VALUES (3,N'Quế Ngọc Hải');
INSERT INTO dbo.Customer VALUES (4,N'Phạm Đức Huy');
INSERT INTO dbo.Customer VALUES (5,N'Nguyễn Công Phượng');

-- Thêm dữ liệu vào bảng dbo.Employee
INSERT INTO dbo.Employee VALUES (1,N'Hà Đức Chinh',8.234, 113);
INSERT INTO dbo.Employee VALUES (2,N'Nguyễn Văn Toàn',7.564, 115);

-- Thêm dữ liệu vào bảng dbo.Product
INSERT INTO dbo.Product VALUES (1,N'Bàn Phím', 345.686);
INSERT INTO dbo.Product VALUES (2,N'Chuột', 125.123);
INSERT INTO dbo.Product VALUES (3,N'Tai nghe', 225.500);

-- Thêm dữ liệu vào bảng dbo.Orders
INSERT INTO dbo.Orders VALUES (1,2021-28-10,1,2,345.686);
INSERT INTO dbo.Orders VALUES (2,2021-01-11,2,2,350.623);

-- Thêm dữ liệu vào bảng dbo.LineItem
INSERT INTO dbo.LineItem VALUES(1,1,1,345.686);
INSERT INTO dbo.LineItem VALUES(2,2,1,125.123);
INSERT INTO dbo.LineItem VALUES(2,3,1,225.500);


