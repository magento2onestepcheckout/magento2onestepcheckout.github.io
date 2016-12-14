---
layout: default
title: "Shop"
---
<div class="container clearfix">

	<!-- Shop
	============================================= -->
	<div id="shop" class="clearfix">
		{% for extension in site.categories.m2e limit:12 %}
		<div class="product clearfix">
			<div class="product-image">
				<a href="{{ site.url }}{{ extension.url }}"><img src="{{ site.url }}/{{ extension.image }}" alt="{{ extension.title }}"></a>
				{% if(page.discount) %}
				<div class="sale-flash">{{ page.discount }}% Off*</div>
				{% endif %}
				<!-- <div class="product-overlay">
					<a href="#" class="add-to-cart"><i class="icon-shopping-cart"></i><span> Add to Cart</span></a>
					<a href="include/ajax/shop-item.html" class="item-quick-view" data-lightbox="ajax"><i class="icon-zoom-in2"></i><span> Quick View</span></a>
				</div> -->
			</div>
			<div class="product-desc">
				<div class="product-title"><h3><a href="{{ site.url }}{{ extension.url }}">{{ extension.title }}</a></h3></div>
				{% if(page.discount) %}
					<div class="product-price"><del>$24.99</del> <ins>$12.49</ins></div>
				{% else %}
					<div class="product-price">${{ extension.price }}</div>
				{% endif %}
				<div class="product-rating">
					<i class="icon-star3"></i>
					<i class="icon-star3"></i>
					<i class="icon-star3"></i>
					<i class="icon-star3"></i>
					<i class="icon-star3"></i>
				</div>
			</div>
		</div>
		{% endfor %}



	</div><!-- #shop end -->

</div>