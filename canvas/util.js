

ArrayList = function ArrayList(){
	this.list = [];
	
	this.add = function(item){
		this.list.push(item);
	};
	
	this.get = function(index){
		return this.list[index];
	};
	
	this.size = function(){
		return this.list.length;
	};
	
	this.remove = function(index){
		var newList = [];
		
		for(var i = 0 ; i < this.list.length ; i++)
		{
			if(i != index){
				newList.push(this.list[i]);
			}
		}
		this.list = newList;
	}
};