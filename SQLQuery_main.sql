-- Main file to execute function&procedure
-- Declarate variables and execute function to calcuate average rating for product

DECLARE @ProductID INT = 1; -- Product ID for which we want to calcuate avg rating
DECLARE @AvgRating DECIMAL(3, 2);

SET @AvgRating = dbo.AvgProductRating(@ProductID);

PRINT 'Avg rating for product ID ' + CAST(@ProductID AS VARCHAR) + ' is: ' + CAST(@SredniaOcena AS VARCHAR);

EXEC update_records;