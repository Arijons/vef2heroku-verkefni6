<!DOCTYPE html>
<html lang="is">
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Karfa</title>
  	<link rel="stylesheet" type="text/css" href="/static/styles.css">
	</head>
	<body>
	% from bottle import *
	% from beaker.middleware import SessionMiddleware
	% bs = request.environ.get('beaker.session')
	% empty = True

	<h2>Karfan:</h2>
	
	% for i in range(6):
    % 	if bs.get(str(i)):
    		% empty = False
    %	end
    % end

    % if empty:
    	<h3>Karfan er <i>tóm</i>, farðu að versla!</h3>
    % else:
		<table>
		  <tr>
		    <th>Vara:</th>
		    <th>Verð:</th>
		    <th></th>
		  </tr>
		  	% sum = 0
		    % for i in range(6):
	        % 	if bs.get(str(i)):
	        % 	sum = sum + int(val[int(i)]['price'])
				  <tr>
				    <td>{{val[int(i)]['name']}}</td>
				    <td>{{val[int(i)]['price']}}</td>
				    <td><a href='/del/{{i}}'>Eyða</a></td>
				  </tr>
				% end
			% end
				  <tr>
				    <td>Fjarlægja vöru</td>
				    <td><b>{{sum}} kr.</b></td>
				    <td><a href='/delall'>Tæma</a></td>
				  </tr>
		</table>
	%end
	<h4> 
		<a href="/">Aftur í verslun</a>
	</h4>
</body>
</html>