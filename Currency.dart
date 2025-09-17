import 'dart:convert';

void main()
{
  //double balance;
 
  print("WITHDRAWN: ${withdraw(setbalance(), 100.13)}");
 // print("DEPOSITED: ${deposit(balance, 90.13)}");
  print(showBalance(setbalance().balance));
  //  for(var i in jsonMap.entries)
  //  {
  //     if(i.value['decimals']==2)
  //     {
  //       balance=balance*100;
  //     }
  //     else if(i.value['decimals']==3)
  //     {
  //       balance=balance*1000;
  //     }
  //  }
}
setbalance()
{
  double balance=1000;
}
withdraw(balance, withdraw)
{
  balance-=withdraw;
  return withdraw;
}
deposit(balance, deposit)
{
  balance+=deposit;
  return deposit;
}
showBalance(balance)
{
  return balance;
}
