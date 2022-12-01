<html>
<head>
	<title>Test JavaScript pop-up</title>
	<script language="javascript"> 

function popupcentree(page,largeur,hauteur,options) {     
        var top=(screen.height-hauteur)/2;     
        var left=(screen.width-largeur)/2;     
        window.open(page,"","top="+top+",left="+left+",width="
	+largeur+",height="+hauteur+","+options); 
} 
	</script>
</head>
<body onLoad='javascript:popupcentree("index.php",850,850,
	"menubar=no,scrollbars=no,statusbar=no")'>
</body>
</html>






