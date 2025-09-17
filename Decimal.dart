import 'dart:convert';
void main()
{
    String jsonString='''{"India": {
    "currency": "Indian rupee",
    "code": "INR",
    "unicode": "Paisa",
    "decimals": 2}}''';

  Map jsonMap=jsonDecode(jsonString);
 
  double balance=213.55;
  double withdraw=113;
  double deposit=0.45;
  if(jsonMap['India']['decimals']==2)
  {
    balance=balance*100;
    withdraw=withdraw*100;
    deposit=deposit*100;
  }
  balance=withdrawFunc(balance,withdraw);
  balance=depositFunc(balance,deposit);
  showBalance(balance,jsonMap);

}
withdrawFunc(balance, amount)
{
  balance=balance-amount;
  print("WITHDRAWN : ${amount/100}");
  return balance;
}
depositFunc(balance, amount)
{
  balance=balance+amount;
  print("DEPOSITED : ${amount/100}");
  return balance;
}
showBalance(balance,jsonMap)
{
  if(jsonMap['India']['decimals']==2)
  {
    print(balance/100);
  }
}