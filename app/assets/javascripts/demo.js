/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function test()
{
    alert("are you sure?");
     alert("reconfirm please?");
    
    
    var x = document.getElementById("jv_script_depo") ;
    x.value = 10;
     var y = document.getElementById("jv_script_withd") ;
     y.value = 20;
     var z = document.getElementById("jv_script_bal") ;
     z.value =(x.value.to_i+ y.value.to_i).to_s ;
     z.value = 30;
}

