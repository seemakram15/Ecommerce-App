$(document).ready(function(){
  $(".add-category-in-product").on('click', function(){
      $("#addCategorryModal").modal("show")
  })
  $(".create-category-btn").on('click', function(){
    var name = $(".add-categorry-form").val()
    var prod_id = $(".product-show-page").attr("product-show-page")
    $.ajax({
      url: '/product/categories',
      type: 'POST',
      data: {
        name: name,
        prod_id: prod_id
      },
      success: function(response) {
      $("#addCategorryModal").modal("hide")
      location.reload();
      },
      error: function(response){
        console.log(response);
      }
    })
  })
  $(".delete-category").on('click', function(){
    var prod_id = $(".product-show-page").attr("product-show-page")
    var id= $(".review-btn-mr-adjust").attr("category-id")
    $.ajax({
      url: `/product/categories/${id}`,
      type: 'DELETE',
      data: {
        prod_id: prod_id
      },
      success: function(response) {
      location.reload();
      },
      error: function(response){
        console.log(response);
      }
    })
  })

})
