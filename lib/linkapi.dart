class AppLink {
  static const String linkserver = "https://storeapp952.000webhostapp.com";
  static const String linkimage =
      "https://storeapp952.000webhostapp.com/upload";
  //==================================Image=====================
  static const String linkimagecategories = "$linkimage/categories";
  static const String linkimageitems = "$linkimage/items";
  //=======================================================
  static const String linktest = "$linkserver/test.php";

  //=====================================Auth===================================================================
  static const String linkSignUp = "$linkserver/delivery/auth/signup.php";
  static const String linkverfycode = "$linkserver/delivery/auth/verficode.php";
  static const String linkLogin = "$linkserver/delivery/auth/login.php";
  static const String linkresend = "$linkserver/delivery/auth/resend.php";
  //=====================================Forget password ===================================================================
  static const String linkveriFiycodeForgetPassword =
      "$linkserver/delivery/forgetpassword/verifiycode.php";
  static const String linkcheckEmail =
      "$linkserver/delivery/forgetpassword/checkemail.php";
  static const String linkresetpassword =
      "$linkserver/delivery/forgetpassword/resetpassword.php";

//https://storeapp952.000webhostapp.com/delivery/forgetpassword
  //=====================================Homee  ===================================================================
  static const String linkhomepage = "$linkserver/home.php";
  static const String linknotification = "$linkserver/notification.php";
  //=====================================aaddress  ===================================================================
  static const String linkcontactus = "$linkserver/contactus.php";

  //===================================== ===================================================================

  //=================================items=================
  static const String linkitems = "$linkserver/items/items.php";
  static const String linksearch = "$linkserver/items/search.php";
  static const String linkitemsstars = "$linkserver/items/stars.php";

  //=====================================Favirot  ===================================================================
  static const String linkfavoritadd = "$linkserver/favorite/add.php";
  static const String linkfavoritdelete = "$linkserver/favorite/remove.php";
  static const String linkmyfavorite = "$linkserver/favorite/view.php";
  static const String linkdeletfromfavorite =
      "$linkserver/favorite/deletefromfavorite.php";
  //=====================================CART  ===================================================================
  static const String linkcartview = "$linkserver/cart/view.php";
  static const String linkcartadd = "$linkserver/cart/add.php";
  static const String linkcartdelete = "$linkserver/cart/delete.php";
  static const String linkgetcountcart = "$linkserver/cart/getcountcart.php";

  //=====================================aaddress  ===================================================================
  static const String linkaddressview = "$linkserver/address/view.php";
  static const String linkaddressadd = "$linkserver/address/add.php";
  static const String linkaddressedit = "$linkserver/address/edit.php";
  static const String linkaddressvDelete = "$linkserver/address/delete.php";
  //=====================================coupon  ===================================================================
  static const String linkcoupon = "$linkserver/coupon/checkcoupon.php";
  //=====================================check Out orders ===================================================================
  static const String linkcheckout = "$linkserver/orders/checkout.php";

  //orders
  static const String viewlinkorderpinding =
      "$linkserver/delivery/order/pinding.php";
  static const String viewlinkorderaccpted =
      "$linkserver/delivery/order/accepted.php";
  static const String viewlinkordersdetails =
      "$linkserver/delivery/order/details.php";
  static const String linkorderdArchive =
      "$linkserver/delivery/order/archive.php";
  static const String linkordersapprove =
      "$linkserver/delivery/order/approve.php";
  static const String linkordersdone = "$linkserver/delivery/order/done.php";

  //end orders

  static const String linkorderview = "$linkserver/orders/rating.php";

  //=====================================offerse===================================================================
  static const String linkofferse = "$linkserver/offerse.php";
}
