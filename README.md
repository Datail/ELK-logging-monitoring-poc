# ELK-logging-monitoring-poc

<h1>Steps to reproduce</h1>

<ul>
<li>Fetch changes from repository</li> 
<li>Run 'docker-compose up -d'</li> 
<li>Create new text files with random content into any of the paths from Logs folder</li> 
<li>In Kibana, go to DevTools and run this:   <b>GET _cat/indices</b> - you should see new indices being created </li> 
<li>In Kibana > Management icon, create new index pattern to match the multiple indices being created. </li>

</ul>
