//class CashOut{

	calculate (summ)
	{
		var ret={
			50:0,
			10:0,
			5:0,
			1:0
		};

		ret.forEach((key,value){
			//var key=ret.indexOf(item);
			ret[key]=(summ/key).toInt();
			summ-=ret[key]*key;
		});
		return ret;
	}

	calculate2 (summ)
	{
		var ret={
			50:0,
			10:0,
			5:0,
			1:0
		};

		while(summ>0)
			ret.forEach((key,value){
				//var key=ret.indexOf(item);
				if(summ>=key){
						ret[key]++;
						summ-=key;
					}
				//ret[key]=(summ/key).toInt();
				//summ-=ret[key]*key;
			});
		return ret;
	}

//}

main () 
{
	print(calculate2(50));
	print(calculate2(20));
	print(calculate2(30));
	print(calculate2(174));
}
