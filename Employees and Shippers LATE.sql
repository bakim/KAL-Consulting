Select O.O_ID AS [Order ID], E.Employee_Name AS Employee,
SHP.Shipper_Name AS Shipper, O.Date_Ordered AS [Date Ordered],
SH.Date_Arrived AS [Date Arrived], SH.Delivery_Status AS [Status]

From ((dbo.Orders$ O LEFT JOIN dbo.Employee$ E ON O.EMPLOYEE_ID = E.Employee_ID)
LEFT JOIN dbo.Shipments$ SH ON O.SHIP_ID = SH.Shipment_ID
LEFT JOIN dbo.Shippers$ SHP ON SH.Shipper_ID = SHP.Shipper_ID)

Where SH.Delivery_Status = 'LATE'

Order By [Order ID];