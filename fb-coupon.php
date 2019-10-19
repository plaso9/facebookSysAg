<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

<!-- Just an image -->

<nav class="navbar navbar-expand-lg navbar-light discount-background">
    <a class="navbar-brand" href="#">
        <img src="http://localhost/facebooksysag/upload/discounts.jpg" width="90" height="30" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="fb-stats.php">Vedi Statistiche</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Pricing</a>
        </li>
        </ul>
        <span class="navbar-text">Benvenuto <?= $user_name ?></span>
    </div>
</nav>

<div class="container" style="max-width: inherit;">
<?php foreach ($coupon as $key => $value) : ?>
    <div class="row" style="padding:2%">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="card text-center" id="coupon-card-<?= $value['category'] ?>">
                <div class="card-header">
                    <p><b><?= $value['category'] ?></b></p>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Ciao, abbiamo cura dei nostri consumatori ed abbiamo pensato di fornirti questo coupon</h5>
                    <p class="card-text">Speriamo tu ne sia contento, e che possa usufruirne</p>
                    <p class="card-text"><b><?= generateCoupon($value['category']) ?></b></p>
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
<?php endforeach; ?>
</div>
<footer class="footer discount-background">
    <div class="container" style="max-width: inherit;">
        <div class="row" style="padding:2%; color:white;">
            <div class="col-12">
                <p>Copyright 2019 - DGM Group</p>
            </div>
        </div>
    </div>
<footer>

<script>
var slider = document.getElementById("rangeBar");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}

function hideCoupon(category_name){
    
    var el = "coupon-card-" + category_name;
    var el_val = "coupon-valutation-" + category_name;
    var valutation = document.getElementById(el_val).value;
    document.getElementById(el).style.display = "none";
    insertValutationAjax(valutation);
}

function insertValutationAjax(valutation) {
    var url = "http://localhost/facebooksysag/fb-valutation.php";
    var user_id = "<?= $user_id ?>";
    var data = {
        "coupon-valutation-value" : valutation,
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

</script>
<script src="/facebooksysag/lib/jquery/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>