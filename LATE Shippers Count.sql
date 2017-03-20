Select SHP.Shipper_Name AS Shipper, Count(Delivery_Status) AS [Count]

From ((dbo.Orders$ O LEFT JOIN dbo.Shipments$ SH ON O.SHIP_ID = SH.Shipment_ID)
LEFT JOIN dbo.Shippers$ SHP ON SH.Shipper_ID = SHP.Shipper_ID)

Where SH.Delivery_Status = 'LATE'

Group By SHP.Shipper_Name

Having Count(Delivery_Status) >= 2.5;