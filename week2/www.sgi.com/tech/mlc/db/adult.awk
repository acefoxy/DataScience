BEGIN	{ OFS = ", "; FS = " " }
{
  age = $1;
  workclass = $2;
  fnlwgt = $3;
  grossincome=$4;
  education=$5;
  edunum=$6;
  maritlstat=$7;
  occupation=$8;
  relationship=$9;
  race=$10;
  sex=$11;
  capgain=$12;
  caploss=$13;
  hrswk=$14;
  natvcntry=$15;
  if (grossincome > 50000) label = ">50K"; else label="<50K";
  print age,workclass,fnlwgt,education,edunum,maritlstat,occupation,relationship,race,sex,capgain,caploss,hrswk,natvcntry,label
}
