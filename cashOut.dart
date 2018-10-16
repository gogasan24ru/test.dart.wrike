class CashOut{
	int money=0;
	var mapCash = {
			50:0,
			10:0,
			5:0,
			1:0
		};

	CashOut(money)
	{
		this.money=money;
		calculate(this.money);
	}

	calculate (summ)
	{
		//while(summ>0)
			//initial fill all 
			mapCash.forEach((key,value){
				if(summ>=key){
						mapCash[key]++;
						summ-=key;
					}
			});
			//fill from biggest to smallest:
			mapCash.forEach((key,value){
				var toadd=(summ/key).toInt();
				mapCash[key]+=toadd;
				summ-=toadd*key;
				
			});
	}
	String toString(){
		String ret="${money} split total: ";
		mapCash.forEach((key,value){
			ret+="$key's: $value, ";
		});
		ret=ret.trim();
		// no trim by character - wtf?
		ret=ret.substring(0,ret.length-1);
		return ret;
	}
	String toJSON(){//dartson not worked :(
		var mapJSON="\"CashOut\": {";
		mapJSON+="\"total\": $money,";

		var mapCashJSON={};
		mapCash.forEach((key,value){
			mapCashJSON["\"$key\""]=value;
		});

		mapJSON+="\"mapCash\": $mapCashJSON}";


		//print(mapCashJSON);
		return "{"+mapJSON+"}";

	}
}