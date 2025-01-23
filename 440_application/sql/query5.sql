use application440;

select W.First_name, W.Last_name, KS.Start_time, KS.End_time
from Worker_Kiosk_Shift KS
join Worker W on KS.Worker_id = W.Worker_id
where KS.Shift_date = '2025-04-17'; -- PARAMETER


