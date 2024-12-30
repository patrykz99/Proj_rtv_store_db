
CREATE FUNCTION AvgProductRating(@ProductID INT)
RETURNS DECIMAL(3, 2)
AS
BEGIN
    DECLARE @AvgRating DECIMAL(3, 2);

    SELECT @AvgRating = AVG(CAST(rating AS DECIMAL(3, 2)))
    FROM reviews
    WHERE product_id = @ProductID;

    RETURN ISNULL(@AvgRating, 0);
END;