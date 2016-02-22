// http://green.ribbon.to/~evans/QMA/index.php

var response = [];
var table = document.getElementsByTagName("tr");
for(var i = 0 ; i < table.length ; i  += 6){
	for(var line = 0 ; line < table[0].children.length ; line += 2){
		if(line == 0) 	add = 1;
		else 			add = 2;
		
		quiz = {};
		quiz["problem"] = table[i].children[line].innerText;
		for(var s = 1 ; s < 5 ; s ++){
			quiz["select"+String(s)] = table[i+s].children[line+add].innerText;
		}
		quiz["result"] = table[i+5].children[line+add].innerText;

		response.push(quiz);
	}
}
console.log(JSON.stringify(response));