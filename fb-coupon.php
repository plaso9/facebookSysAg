<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

<!-- Just an image -->

<nav class="navbar navbar-expand-lg navbar-light discount-background">
    <a class="navbar-brand" href="fb-login.php">
        <img src="upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="fb-stats.php">Vedi Statistiche</a>
        </li>
        </ul>
        <span class="navbar-text">Benvenuto <?= $user_name ?></span>
    </div>
</nav>

<div class="container" style="max-width: inherit;">
<input type="hidden" id="dir-root" value="<?= $dir_root ?>">
<?php foreach ($coupon as $key => $value) : ?>
    <?php
    $percentuale = ($value["total_point"] * 100)/ $page_analyzed;
    $perc_appross = round($percentuale);
    //if ($perc_appross >= 10) :
    ?>
    <div class="row" style="padding:2%">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="card text-center" id="coupon-card-<?= $value['category'] ?>">
                <div class="card-header">
                    <p><b>Ciao, abbiamo analizzato i tuoi like ed abbiamo pensato di fornirti questo coupon</b></p>
                    <p><b>poichè tale categoria è pari al <?= $perc_appross ?>% dei tuoi like</b></p>
                </div>
                <div class="card-body">
                    <input type="hidden" id="coupon-category-id-<?= $value['category'] ?>" value="<?= $value['id'] ?>" >
                    <h4 class="card-title"><?= utf8_encode($value['coupon_message']) ?></h4>
                    <p class="card-text">Speriamo tu ne sia contento, e che possa usufruirne</p>
                    <p class="card-text"><b style="font-size:1.5em;"><?= generateCoupon($value['category']) ?></b></p>
                    <p class="card-text">Segna l'indice di gradimento</p>
                    <div class="slidecontainer">
                        <input type="range" id="coupon-valutation-<?= $value['category'] ?>" min="1" max="5" value="1" class="slider" id="rangeBar">
                        <p><span id="demo"></span></p>
                    </div>
                    <button class="btn discount-btn" onclick="hideCoupon('<?= $value['category'] ?>')">Invia Valutazione</button>
                </div>
                <div class="card-footer text-muted">
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
    <?php //endif; ?>
    <?php endforeach; ?>


    <p><b>In base ai tuoi gusti, scegli 3 categorie che reputi piu appropriate</b></p>
    <div class="row" style="padding:2%">
        <div class="col-4">
            <select id="selected-category" class="form-control form-control-lg">
                <?php foreach ($lastcategory as $key => $value) : ?>
                    <option id="<?= $value["id"] ?>"><?= $value["category"] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <button type="button" class="btn discount-btn" data-toggle="modal" data-target="#exampleModal" onclick="openModal()">Invia</button>
        <div class="col-6"></div>
        <div class="col-12">
            <div class="row" style="padding:3%">
                <div class="col-9">
                    <ul id="myList"></ul>
                </div>
                <div class="col-3">
                </div>
            </div>
        </div>
    </div>
<!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Valutazione Categoria</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="slidecontainer">
                    <input type="hidden" id="category-id" value="">
                    <p class="card-text" id="category-name"><b style="font-size:1.5em"></b></p>
                    <p class="card-text">Segna l'indice di gradimento</p>
                    <input type="range" id="coupon-valutation" min="1" max="5" value="1" class="slider" id="rangeBar" style="width:100%">
                    <p><span id="demo"></span></p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn discount-btn" data-dismiss="modal" onclick="submitValFromModal()">Invia</button>
            </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-6 col-sm-12">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Category</th>
                        <th scope="col">Percentuale di gradimento calcolato</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($lastcategory as $key => $value) : ?>
                    <?php
                    $percentuale = ($value["total_point"] * 100)/ $page_analyzed;
                    $perc_appross = round($percentuale);
                    ?>
                    <tr>
                        <td><?= $value["category"] ?></td>
                        <td><?= $perc_appross ?>%</td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <!-- <button class="btn btn-primary" onclick="submitVal()">Invia</button> -->
    </div>
</div>
<!-- <footer class="footer discount-background">
    <div class="container" style="max-width: inherit;">
        <div class="row" style="padding:2%; color:white;">
            <div class="col-12">
                <p>Copyright 2019 - DGM Group</p>
            </div>
        </div>
    </div>
<footer> -->

<script>
var slider = document.getElementById("rangeBar");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}

function hideCoupon(category_name){
    var dir_root = document.getElementById("dir-root").value;
    var el = "coupon-card-" + category_name;
    var el_val = "coupon-valutation-" + category_name;
    var category_id = document.getElementById("coupon-category-id-" + category_name).value;
    var valutation = document.getElementById(el_val).value;
    document.getElementById(el).style.display = "none";
    insertValutationAjax(dir_root, valutation, category_id);
}

function insertValutationAjax(dir_root, valutation, category) {
    var url = dir_root + "/fb-valutation.php";
    var user_id = "<?= $user_id ?>";
    var data = {
        "coupon-valutation-value" : valutation,
        "user-id" : user_id,
        "coupon-category-id" : category
    };
    $.ajax({
        url : url,
        data : data,
        method : "POST",
        success : function(){
            console.log("Ok");
        }
    });
}

function insertValutationFromModalAjax(dir_root, valutation, category) {
    var url = dir_root + "/fb-valutation.php";
    var user_id = "<?= $user_id ?>";
    var data = {
        "modal-coupon-valutation-category" : category,
        "modal-coupon-valutation-value" : valutation,
        "user-id" : user_id
    };
    $.ajax({
        url : url,
        data : data,
        method : "POST",
        success : function(){
            console.log("Ok");
        }
    });
}

function submitVal() {
    window.location.href = "http://localhost/facebooksysag/fb-thanks.php";
}
function openModal(){
    var el = document.getElementById("selected-category");
    var el_value = el.options[el.selectedIndex].value;
    var el_id = el.options[el.selectedIndex].id;
    document.getElementById("category-name").innerHTML = el_value;
    document.getElementById("category-id").value = el_id;
}

function submitValFromModal(){
    var el_id = document.getElementById("category-id").value;
    var el_name = document.getElementById("category-name").textContent;
    var el_valutation = document.getElementById("coupon-valutation").value;
    var textVal = "Categoria : " + el_name + " - Valutazione : " + el_valutation + "/5";
    var node = document.createElement("LI");
    var textnode = document.createTextNode(textVal);
    node.appendChild(textnode);
    document.getElementById("myList").appendChild(node);
    var dir_root = document.getElementById("dir-root").value;
    insertValutationFromModalAjax(dir_root, el_valutation, el_id);
}
</script>
<script src="/facebooksysag/lib/jquery/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
