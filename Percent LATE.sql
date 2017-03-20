Select Round((Count(Delivery_Status)/25.0),2)*100 AS [Percent Late]

From ((dbo.Orders$ O JOIN dbo.Employee$ E ON O.EMPLOYEE_ID = E.Employee_ID)
JOIN dbo.Shipments$ SH ON O.SHIP_ID = SH.Shipment_ID)

Where Delivery_Status LIKE 'LATE';