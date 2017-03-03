<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>افزودن ماشین</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap-rtl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/theme.css" rel="stylesheet" >
		   <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
          body {
    padding-top: 120px;
    padding-bottom: 40px;
    background-color: #eee;
  
  }
  .btn 
  {
   outline:0;
   border:none;
   border-top:none;
   border-bottom:none;
   border-left:none;
   border-right:none;
   box-shadow:inset 2px -3px rgba(0,0,0,0.15);
  }
  .btn:focus
  {
   outline:0;
   -webkit-outline:0;
   -moz-outline:0;
  }
  .fullscreen_bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat:repeat;
  }
  .form-signin {
    max-width: 280px;
    padding: 15px;
    margin: 0 auto;
      margin-top:50px;
  }
  .form-signin .form-signin-heading, .form-signin {
    margin-bottom: 10px;
  }
  .form-signin .form-control {
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-signin .form-control:focus {
    z-index: 2;
  }
  .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: none;
    border-left-style: solid;
    border-color: #000;
  }
  .form-signin input[type="password"] {
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-top-style: none;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-color: rgb(0,0,0);
    border-top:1px solid rgba(0,0,0,0.08);
  }
  .form-signin-heading {
    color: #fff;
    text-align: center;
    text-shadow: 0 2px 2px rgba(0,0,0,0.5);
  }
    </style>
 </head>
<body>
    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<div class="container">
<!-- Form Name -->
<legend>افزودن ماشین</legend>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="txtbrand">برند</label>  
  <div class="col-md-6">
  <input id="txtbrand" name="Brand" type="text" placeholder="" class="form-control input-md" required="">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="txtmaghsad">مدل</label>  
  <div class="col-md-6">
  <input id="txtmodel" name="Model" type="text" placeholder="" class="form-control input-md">
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="txtyear">سال</label>  
  <div class="col-md-6">
  <input id="txtyear" name="Year" type="text" placeholder="" class="form-control input-md">
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="txtgheymat">قیمت</label>  
  <div class="col-md-6">
  <input id="txtgheymat" name="Price" type="text" placeholder="" class="form-control input-md">
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">نوع ماشین</label>
  <div class="col-md-6">
    <select id="selectrider" name="Kind" class="form-control">
      <option value="Sefr">صفر</option>
      <option value="Kar karde">کارکرده</option>
    </select>
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-6 control-label" for="txtkarkarde">مدت کارکرد</label>  
  <div class="col-md-6">
  <input id="txtkarkarde" name="Time" type="text" placeholder="" class="form-control input-md">
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">استان</label>
  <div class="col-md-6">
    <select id="selectrider" name="Ostan" class="form-control">
    <option value="Khorasan razavi">خراسان رضوی</option>
      <option value="Azarbaijan gharbi">آذربایجان غربی</option>
      <option value="Azarbaijan sharghi">آذربایجان شرقی</option>
	        <option value="Kerman">کرمان</option>
      <option value="Khuzestan">خوزستان</option>
	        <option value="Fars">فارس</option>
      <option value="Hormozgan">هرمزگان</option>
	        <option value="Tehran">تهران</option>
      <option value="Esfehan">اصفهان</option>
	        <option value="Yazd">یزد</option>
      <option value="Khorasan jonubi">خراسان جنوبی</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">دنده ای - اتومات</label>
  <div class="col-md-6">
    <select id="selectrider" name="KindD" class="form-control">
      <option value="DandeEi">دنده ای</option>
      <option value="Automatic">اتومات</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">شاسی</label>
  <div class="col-md-6">
    <select id="selectrider" name="Shasi" class="form-control">
      <option value="Shasi boland">شاسی بلند</option>
      <option value="Vanet">وانت</option>
	  <option value="Cuple">کوپه</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">رنگ</label>
  <div class="col-md-6">
    <select id="selectrider" name="Color" class="form-control">
      <option value="Siah">سیاه</option>
      <option value="Sefid">سفید</option>
	  <option value="Keremi">کرمی</option>
	  <option value="Sayer">سایر</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">وضعیت بدنه</label>
  <div class="col-md-6">
    <select id="selectrider" name="Status" class="form-control">
      <option value="Bedune rang">بدون رنگ</option>
      <option value="Ouraghi">اوراقی</option>
	  <option value="Safkari">صافکاری</option>
	  <option value="Tamam rang">تمام رنگ</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">سوخت</label>
  <div class="col-md-6">
    <select id="selectrider" name="Fuel" class="form-control">
      <option value="Benzin">بنزین</option>
      <option value="Gaz">گاز</option>
	  <option value="Dogane sooz">دوگانه سوز</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-6 control-label" for="selectrider">نوع هزینه</label>
  <div class="col-md-6">
    <select id="selectrider" name="Hazine" class="form-control">
      <option value="Aghsati">اقساطی</option>
      <option value="Havale">حواله</option>
    </select>
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-6 control-label" for="btnsave"></label>
  <div class="col-md-6">
    <button id="btnsave" name="btnsave" class="btn btn-primary">ذخیره</button>
  </div>
</div>

</form>



<script type="text/javascript">

</script>
</body>
</html>
    