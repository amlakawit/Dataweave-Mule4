%dw 2.0
output application/json

import * from dw::core::Arrays

var customers = readUrl("classpath://w3schools/customers.csv", "application/csv")
var orders = readUrl("classpath://w3schools/orders.csv", "application/csv")

var joined = join(customers, 
	orders,
	(customers)->customers.CustomerID, 
	(orders)->orders.CustomerID
)
---

joined map (value) -> {
	CustomerID: value.l.CustomerID,
	CustomerName: value.l.CustomerName,
	Address: value.l.Address,
	City:value.l.City,
	Country:  value.l.Country,
	OrderID: value.r.OrderID,
	EmployeeID: value.r.EmployeeID,
	OrderDate: value.r.OrderDate,
	ShipperID: value.r.ShipperID
} 

