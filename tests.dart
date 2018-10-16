import "package:test/test.dart";
import "cashOut.dart";
import 'dart:math';


class CashOutTests  extends CashOut {
	CashOutTests(summ) : super(summ);	
	summ()
	{
		var summ=0;
		mapCash.forEach((key,value){
			summ+=key*value;
		});
		return summ;
	}
}


void main()
{
	var rng = new Random();
	var summ=20;
	test("demo test",(){
		    var string = "foo,bar,baz";
    	expect(string.split(","), equals(["foo", "bar", "baz"]));

	});
	test("Testing expected behaivor for 20",(){
		var entity=new CashOutTests(20);
		expect(entity.mapCash,equals({50:0,10:1,5:1,1:5}));
		//as defined in tzhz.
	});	
	summ=rng.nextInt(1000);
	test("Testing checksumm wo splitting for "+summ.toString(),(){
		var entity=new CashOutTests(summ);
		expect(entity.money,equals(summ));
	});
	test("Testing checksumm with splitting for "+summ.toString(),(){
		var entity=new CashOutTests(summ);
		expect(entity.summ(),equals(summ));
	});

		var mapCashTemplate = { //define max values
			50:1000,//max value defined, see rnd init.
			10:5,
			5:2,
			1:5
		}; //mean: expecting ...10:1,1:(<5), not ...10:0,1:6

		mapCashTemplate.forEach((key,value){
			test("Testing minimum coins when summ is "+summ.toString()+ " and coin is "+key.toString(),(){
				var entity=new CashOutTests(summ);
				expect(entity.mapCash[key]<=value,equals(true));
			});
		});

}