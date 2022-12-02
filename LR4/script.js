let number = 0;
let id_num = 1;
function NewElement(){
if (isNaN(document.getElementById('cost').value) || document.getElementById('cost').value < 0){
    alert("Значение цены не корректно!");
}
else{
number += 1;
let row = document.createElement('tr');
document.getElementById('tbody').appendChild(row);
let rd1 = document.createElement('td');
rd1.innerHTML = number;
rd1.id = id_num.toString();
id_num += 1;
let rd2 = document.createElement('td');
rd2.innerHTML = document.getElementById('name').value;
rd2.id = id_num.toString();
id_num += 1;
let rd3 = document.createElement('td');
rd3.innerHTML = document.getElementById('cost').value;
rd3.id = id_num.toString();
id_num += 1;
rd3.classList.add("price");

row.appendChild(rd1);
row.appendChild(rd2);
row.appendChild(rd3);
}
}

let num = 0;
id_onum = 100;
function AddToCart(){
num += 1;
let string_num = parseInt(document.getElementById('str').value);
let index = 2*(string_num - 1);

let orow = document.createElement('tr');
document.getElementById('OrderTbody').appendChild(orow);
let rod1 = document.createElement('td');
rod1.innerHTML = num;
rod1.id = id_onum.toString();
id_onum += 100;
let rod2 = document.createElement('td');
rod2.innerHTML = document.getElementById((string_num + index + 1).toString()).innerText;
rod2.id = id_onum.toString();
id_onum += 100;
let rod3 = document.createElement('td');
rod3.innerHTML = document.getElementById((string_num + index + 2).toString()).innerText;
rod3.id = id_onum.toString();
id_onum += 100;
rod3.classList.add("price");

orow.appendChild(rod1);
orow.appendChild(rod2);
orow.appendChild(rod3);
}

function OrderPrice(){
    let s = 0;
    for (let i = 1; i < Math.floor(id_onum/100); ++i){
        if ((i % 3) == 0){
            s += parseInt(document.getElementById((i*100).toString()).innerText);
        }
    }
    alert(s);
}