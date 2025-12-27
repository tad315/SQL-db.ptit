delete i 
from ORDER_ITEM i
join PRODUCT p on p.ProductID = i.ProductID
join CATEGORY c on c.CategoryID = p.CategoryID
where c.CategoryName = 'Obsolete' or p.Discontinued = 1