Select E.Employee_Name AS Employee, Count(Delivery_Status) AS [Count]

From ((dbo.Orders$ O LEFT JOIN dbo.Shipments$ SH ON O.SHIP_ID = SH.Shipment_ID)
LEFT JOIN dbo.Shippers$ SHP ON SH.Shipper_ID = SHP.Shipper_ID
LEFT JOIN dbo.Employee$ E ON O.EMPLOYEE_ID = E.Employee_ID)

Where SH.Delivery_Status = 'LATE'

Group By E.Employee_Name;