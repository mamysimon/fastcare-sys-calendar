%dw 2.0

fun timeMin(exactDate, fromDate): String =
	if (exactDate != null) 
    	exactDate as String {format: "yyyy-MM-dd"} ++ "T00:00:00Z"
    else
    	(fromDate as String {format: "yyyy-MM-dd"} ++ "T00:00:00Z") default ((now() as Date as String) ++ "T00:00:00Z")
    	
fun timeMax(exactDate): String = 
    exactDate as String {format: "yyyy-MM-dd"} ++ "T23:59:59Z"