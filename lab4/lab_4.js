var sum = 0;
      var bagsum = 0;
      var flag = 0;

      function add() {
        nm = document.getElementById("nam").value;
        cst = document.getElementById("cost").value;
        if (isNaN(cst) || cst < 0) {
          alert("Введите корректную цену!");
          clearForm();
          return;
        }
        if (nm === "" || cst === "") {
          alert("Введите оба значения");
          return;
        }
        if (flag != 0 && sum != 0) {
          document.getElementById("totalsumm").innerText =
            "Подсчитай сумму заново~";
        }
        sum += Number(cst);
        let tbod = document.getElementById("tbody");
        let row = document.createElement("tr");
        let td1 = document.createElement("td");
        td1.innerHTML = nm;
        let td2 = document.createElement("td");
        td2.innerHTML = cst;
        td2.setAttribute("class", "clr2");
        let td3 = document.createElement("td");
        td3.innerHTML =
          '<button type="button" id="bagAdd" onclick="moveToBag(this)">Добавить</button>';
        row.appendChild(td1);
        row.appendChild(td2);
        row.appendChild(td3);
        tbod.appendChild(row);
        clearForm();
      }

      function summ() {
        flag = 1;
        var ttl = "Смотри какая сумма! ";
        var aftr = " руб. Берите :3 ";
        document.getElementById("totalsumm").innerText = ttl + sum + aftr;
      }

      function clearForm() {
        document.getElementById("nam").value = "";
        document.getElementById("cost").value = "";
      }

      function moveToBag(button) {
        let row = button.parentNode.parentNode;
        let name = row.cells[0].innerHTML;
        let price = row.cells[1].innerHTML;
        let bagTable = document.getElementById("bagtbody");
        let bagRow = document.createElement("tr");
        let bagTd1 = document.createElement("td");
        bagTd1.innerHTML = name;
        let bagTd2 = document.createElement("td");
        bagTd2.innerHTML = price;
        bagRow.appendChild(bagTd1);
        bagRow.appendChild(bagTd2);
        bagTable.appendChild(bagRow);
        //row.remove();
      }

      function bagAdd(nm, cst) {
        sum += Number(cst);
        let tbod = document.getElementById("tbody");
        let row = document.createElement("tr");
        let td1 = document.createElement("td");
        td1.innerHTML = nm1;
        let td2 = document.createElement("td");
        td2.innerHTML = cst1;
        td2.setAttribute("class", "clr2");
        row.appendChild(td1);
        row.appendChild(td2);
        tbod.appendChild(row);
      }

      function summBag() {
        // Рассчет суммы корзины и вывод её
        var bagTable = document.getElementById("bagtable");
        var bagRows = bagTable.getElementsByTagName("tr");
        var bagSum = 0;
        for (var i = 1; i < bagRows.length; i++) {
          var bagPriceCell = bagRows[i].getElementsByTagName("td")[1];
          var bagPrice = parseFloat(bagPriceCell.innerHTML);
          bagSum += bagPrice;
        }
        document.getElementById("bagsumm").innerText =
          "Сумма корзины: " + bagSum + " руб.";
      }