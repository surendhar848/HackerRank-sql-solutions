SELECT X, Y FROM Functions as table1
    WHERE EXISTS(SELECT * FROM Functions table2 WHERE table2.Y = table1.X
    AND table2.X = table1.Y AND table2.X > table1.X)
UNION
SELECT X,Y FROM Functions AS table1 WHERE X = Y AND 
    ((SELECT COUNT(*) FROM FUNCTIONS WHERE X = table1.X AND Y = table1.X) > 1)
      ORDER BY X;
