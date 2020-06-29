	function closed1(){
				document.getElementById("t2").style.display="none";
				document.getElementById("t3").style.display="none";
				document.getElementById("t4").style.display="none";
				document.getElementById("t5").style.display="none";
			}
		 	function closed2(){
				document.getElementById("t1").style.display="none";
				document.getElementById("t3").style.display="none";
				document.getElementById("t4").style.display="none";
				document.getElementById("t5").style.display="none";
			}
			function closed3(){
				document.getElementById("t1").style.display="none";
				document.getElementById("t2").style.display="none";
				document.getElementById("t4").style.display="none";
				document.getElementById("t5").style.display="none";
			}
			function closed4(){
				document.getElementById("t1").style.display="none";
				document.getElementById("t2").style.display="none";
				document.getElementById("t3").style.display="none";
				document.getElementById("t5").style.display="none";
			}
			function closed5(){
				document.getElementById("t1").style.display="none";
				document.getElementById("t2").style.display="none";
				document.getElementById("t3").style.display="none";
				document.getElementById("t4").style.display="none";
			}
			function Opent1(){
				document.getElementById("t1").style.display="block";
				document.getElementById("t1").style.margin="auto";
				closed1();

			}	
			function Opent2(){
				document.getElementById("t2").style.display="block";
				document.getElementById("t2").style.margin="auto";
				closed2();

			}	
			function Opent3(){
				document.getElementById("t3").style.display="block";
				document.getElementById("t3").style.margin="auto";
				closed3();
			}	

			function Opent4(){
				document.getElementById("t4").style.display="block";
				document.getElementById("t4").style.margin="auto";
				closed4();
			}	
			function Opent5(){
				document.getElementById("t5").style.display="block";
				document.getElementById("t5").style.margin="auto";
				closed5();
			}	
			function Opent6(){
				document.getElementById("t1").style.display="block";
				document.getElementById("t1").style.margin="auto";
				document.getElementById("t2").style.display="block";
				document.getElementById("t2").style.margin="auto";
				document.getElementById("t3").style.display="block";
				document.getElementById("t3").style.margin="auto";
				document.getElementById("t4").style.display="block";
				document.getElementById("t4").style.margin="auto";
				document.getElementById("t5").style.display="block";
				document.getElementById("t5").style.margin="auto";
			}	
		
			 function td_copy(val){
				 	var a = 4*val+1;
			        var str = document.getElementsByTagName('td')[a].childNodes[0].nodeValue;
			        //td[번호]를 읽어와 안의 값을 str에 저장
			        
			        alert(str);
			      
			        
			    }

			function searchi(val){ 
				var b= new Array(30);
				var c= new Array(30);
				var str1 = new Array(30);
				var str2 = new Array(30);
				for(var i=0; i<30; i++){
					b[i]= 4*i+1;
					c[i]= 4*i+2;
				}
				for(var i=0; i<b.length; i++){
					str1[i]= document.getElementsByTagName('td')[b[i]].childNodes[0].nodeValue;
					str2[i]= document.getElementsByTagName('td')[c[i]].childNodes[0].nodeValue;
				
				}
				for(var i=0; i<b.length; i++){
					var n = str1[i].indexOf(val);
					if(console.log(n)!=-1){
						document.write(str1[i]+"&nbsq"+str2[i]+"&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq&nbsq");
						
					}
					else{
						continue;
					}
				}
				
			}
			


