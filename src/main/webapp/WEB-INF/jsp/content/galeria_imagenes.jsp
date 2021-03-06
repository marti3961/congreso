<%@ include file="/WEB-INF/jsp/contenido_antes.jsp" %>
		
<h3>
	Galer&iacutea de imagenes	
</h3>
<br/>

<!-- Start of Flickr Badge -->
<style type="text/css">

#flickr_badge_uber_wrapper {
    text-align: center;
    width: 150px;
}
#picasa-album {
    border: 1px solid;
    width: 400px;
    float: left;
}
#flickr_badge_wrapper {
    padding: 10px 0;
}
.flickr_badge_image {
    float: right;
}
.flickr_badge_image img {
    border: 1px solid gray !important;
}
#flickr_badge_source {
    margin: 0 10px;
    text-align: left;
}
#flickr_badge_icon {
    float: left;
    margin-right: 5px;
}
#flickr_www {
    color: #3993FF !important;
    display: block;
    font: 11px Arial,Helvetica,Sans serif !important;
    padding: 0 10px !important;
}
#flickr_badge_uber_wrapper a:hover, #flickr_badge_uber_wrapper a:link, #flickr_badge_uber_wrapper a:active, #flickr_badge_uber_wrapper a:visited {
    background: inherit !important;
    color: #3993FF;
    text-decoration: none !important;
}
#flickr_badge_wrapper {
    background-color: #FFFFFF;
    border: 1px solid #000000;
}
#flickr_badge_source {
    color: #666666 !important;
    font: 11px Arial,Helvetica,Sans serif !important;
    padding: 0 !important;
}



</style>

<div class="row">
	<div class="span12">
		<div id="picasa-album">
			<embed type="application/x-shockwave-flash" src="https://picasaweb.google.com/s/c/bin/slideshow.swf" width="400" height="267" flashvars="host=picasaweb.google.com&hl=es&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F107316370566141259993%2Falbumid%2F5838982693955984449%3Falt%3Drss%26kind%3Dphoto%26hl%3Des" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
		</div>
		<script type="text/javascript"
			src="http://www.flickr.com/badge_code_v2.gne?show_name=1&count=50&display=random&size=s&layout=x&source=user&user=92136115%40N07">
		</script>
		<script type="text/javascript"
			src="http://www.flickr.com/badge_code_v2.gne?show_name=1&count=50&display=random&size=s&layout=x&source=user&user=92136115%40N07">
		</script>
	</div>
</div>

<%@ include file="/WEB-INF/jsp/contenido_despues.jsp" %>

<script type="text/javascript">
$(document).ready(function(){
	

	var setImages = $(".flickr_badge_image a")
	var newSetImages = [];
	$.each(setImages, function(key, value){
		$(value).hide();
		newSetImages.push($(value).attr("href"));
	});
	
	
	newSetImages = _.uniq(newSetImages);
	
	$.each(newSetImages, function(key, value){
		$("a[href*='" + value + "']").eq(0).show();
	});
	
	
	$("a[href*='http://www.flickr.com/photos/']").attr("target", "_blank");
	var photos = $("a[href*='http://www.flickr.com/photos/']");
	$.each(photos, function(key, value){
		var url = $(value).attr("href") + "in/photostream/lightbox/";
		$(value).attr("href", url);
	});
});
</script>

