@country_line: #fff;
@admin_1: #999;

[isVisible=1] {line-color: black}
/* [isVisible!=1] {line-color:#e90678} */

#bndPoly_40M {
  polygon-fill: @land
}
//#waterPoly_40M[zoom<=5] {
#waterPoly_40M[zoom<=5] {
  polygon-fill: @water;
}

#bndLine_40M {
  //Int'l boundary
  [CODE=50100], [CODE=50500] {
    line-width: 3;
    line-color: @country_line;
    [zoom=4]{
      line-width: 1.5;
    }
  }
  [CODE=50500] [GRADE=2] {
    line-width: 3; 
    line-color: @country_line
     
  }
  
  //Admin 1  
  [CODE=60100],
  [CODE=60200]  
    {
    line-width: 1.5;
    line-color: @admin_1;  
    [zoom=4]{
      line-width: 1;
    }
    
  }
  //Disputed
  [code=50700],
    [code=50200],[CODE=50800]
    {
      line-width: 3;
      line-color: #000000;
      line-dasharray: 5,2,10;
      [zoom=4]{
        line-width: 1;
      }
    
    }
}

#drains_40M {
  line-color: @water;
  line-width: 1.5;
  [Feature='IntermittentRiver'] {
     line-color: red;
  }
}  
