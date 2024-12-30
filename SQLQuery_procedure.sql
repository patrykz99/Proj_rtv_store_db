
CREATE PROCEDURE update_records
@cId INT,
@pId INT
AS
BEGIN
    UPDATE customers SET name = 'Name_exmpl' WHERE id = @cId;
    UPDATE products SET price = 999.99 WHERE id = @pId;
END;