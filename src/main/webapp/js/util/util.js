var util = {
		
	/**
	 * 格式化日期
	 */
	formatDate: function(time, format) {
		if(time == "null" || time == null || time == '' || time == undefined || time === 0) {
			return '—';
		}
		if (!format) format = "yyyy-MM-dd";
		var t = new Date(time);
	    switch(typeof time) {   
	        case "string":   
	            if(time.length>10&&time.indexOf("-")!=-1){
	            	return time.substr(0,10);
	            }
	            break;   
	        case "number":   
	            t = new Date(time);   
	            break;   
	    }
	    var tf = function(i){return (i < 10 ? '0' : '') + i};
	    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
	        switch(a){
	            case 'yyyy':
	                return tf(t.getFullYear());
	                break;
	            case 'MM':
	                return tf(t.getMonth() + 1);
	                break;
	            case 'mm':
	                return tf(t.getMinutes());
	                break;
	            case 'dd':
	                return tf(t.getDate());
	                break;
	            case 'HH':
	                return tf(t.getHours());
	                break;
	            case 'ss':
	                return tf(t.getSeconds());
	                break;
	            default :
	            	return time;
	        }
	    });
	}
}