import "cashOut.dart";

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
