#!/bin/sh

echo "<html><head><title>Is Boris Johnson dead?</title><script type=\"text/javascript\">setTimeout(function(){location.reload()},5000);</script></head><body style=\"background:yellow;font-size:25vh;\"><div style=\"display:inline-block;text-align:center;position:absolute;top:50%;left:50%;transform:translate(-50%,-62.5%);\">"
curl -s -X POST https://query.wikidata.org/sparql -H "Accept: text/csv" --data-urlencode query@query.sparql | tail -n 1 
echo "<div></body></html>"
