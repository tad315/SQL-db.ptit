select h.tenhang as TenHang, c.macongty as MaCongTy, c.tencongty as TenCongTy
from MATHANG h
join NHACUNGCAP c on h.macongty = c.macongty