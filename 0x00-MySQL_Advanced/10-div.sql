-- This SQL Script creates a safe div function that divides a/b;

CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS FLOAT
BEGIN
    RETURN IF(b = 0, 0, a/b);
END
