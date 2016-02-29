// http://www.meijiyasuda.co.jp/sp/enjoy/ranking/#/year/2015y/5

var table = document.getElementsByClassName("table table_ranking  lastPage")[0].getElementsByTagName("div")
var response = [];
for(var i = 0 ; i < table.length ; i ++){
    console.log(table[i].innerText.split("位")[1]);
    if(i == 50){
        console.log(response);        
        response = [];
    }
    response.push(table[i].innerText.split("位")[1]);
}

console.log(response);       
