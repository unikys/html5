


onmessage = function(event){
	var num = event.data;
	var result = 0;
	for(var i=1;i<=num;i++){
		result += i;
	}
	//워커를 생성한 곳으로 결과를 돌려줌
	postMessage(result);
	
};