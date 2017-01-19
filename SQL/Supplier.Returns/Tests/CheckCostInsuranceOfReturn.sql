use EmexMain

-- Поиск
select
	o.*
from
	PriorOrdersDetails pod
	join OrdersDetails od on pod.OrderDetailId = od.OrderDetailId
	join Orders o on o.OrderId = od.OrderId
where
	GlobalId = 110692278
  
-- Обновление
begin tran
update Orders set CostInsuranceOfReturn = 0 where OrderId = 4421886
rollback
commit
