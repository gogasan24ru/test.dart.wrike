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

demoline (summ)
{
	print("Demoline for $summ:");
	var item=new CashOut(summ);
	print("Human readable: " + item.toString());
	print("JSON: " + item.toJSON());
	print("");
	//if()

}

throwError(title, message)
{
	//print(message);
	throw new Exception(title+":"+message);

}

main (List<String> args) 
{
	print("Demo");
	if(args.length==3)
	{
		var demo_from=int.tryParse(args[0]);
		if(demo_from==null)throwError("Invalid arguments","demo_from wrong value: "+args[0]);
		var demo_to=int.tryParse(args[1]);
		if(demo_to==null)throwError("Invalid arguments","demo_to wrong value: "+args[1]);
		var demo_step=int.tryParse(args[2]);
		if(demo_step==null)throwError("Invalid arguments","demo_step wrong value: "+args[2]);
		for (var i=demo_from; i<demo_to; i+=demo_step)
			demoline(i);
	}
	else
	{
		print ("run .dart file with these arguments: demo_from demo_to demo_step");
	}
}
