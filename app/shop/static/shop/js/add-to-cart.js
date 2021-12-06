window.onload = function(){
	$(".add-to-cart").click(function(){

    	var cart = new Array();
    	var count = 0;
    	var cartProduct = localStorage.getItem('cart');
    	var productId = parseInt($(this).attr('data-id'));
    	var qty = parseInt($('.qty-'+productId).val());
    	var total_qty = parseInt($('.qty-'+productId).attr("data-total-qty"));
    	if(qty >= total_qty){
    		$('#buttonErrorAlert').addClass('show');
    		$('#errors-body').html('Product quanity has been finished!');
    		setTimeout(function() {
		        $('#buttonErrorAlert').removeClass('show');
		    }, 2000);
    		return false;
    	}

    	if(cartProduct !== null){
    		var mycart = JSON.parse(cartProduct);
    		count = mycart.length;
    		cart = mycart;
    		isFirstProd = mycart.findIndex(x => x.product_id === productId);
    		if(isFirstProd > -1){
    			qty = qty + cart[isFirstProd]['product_quantity'];
    			cart[isFirstProd]['product_quantity'] = qty;
    		}else{
    			cart.push({ "product_id" : productId, "product_quantity": qty})
                count = count + 1;
    		}
    	}else{
    		cart.push({ "product_id" : productId, "product_quantity": qty})
    		count = 1 
    	}
    	localStorage.setItem('cart', JSON.stringify(cart));
    	$('#buttonSuccessAlert').addClass('show');
    	$('#success-body').html('Product added in your cart successfully!');
    	setTimeout(function() {
	        $('#buttonSuccessAlert').removeClass('show');
	    }, 2000);
	    $('.qty-'+productId).val(1)
	    $('#header-qty').html(count);
    });
};