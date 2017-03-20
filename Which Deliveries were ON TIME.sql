Select O.O_ID AS [Order ID], E.Employee_Name AS Employee,
O.Date_Ordered AS [Date Ordered], SH.Date_Arrived AS [Date Arrived],
SH.Delivery_Status AS [Status]

From ((dbo.Orders$ O JOIN dbo.Employee$ E ON O.EMPLOYEE_ID = E.Employee_ID)
JOIN dbo.Shipments$ SH ON O.SHIP_ID = SH.Shipment_ID)

Where SH.Delivery_Status = 'ON TIME'

Order By [Order ID];