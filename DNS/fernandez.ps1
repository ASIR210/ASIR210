$contador=0
$i=0
while($contador -lt 30){
Add-DnsServerPrimaryZone  -Name fernandez[$i+1].systems -ZoneFile fernandez[$i].systems.dns
Add-DnsServerResourceRecordA -Name ns1 -IPv4Address 172.20.140.110 -ZoneName fernandezns1[i].systems
Add-DnsServerResourceRecord -Name "@" -NameServer ns1.fernandez[$i].systems -NS -ZoneName fernandezns1[$i].systems
Add-DnsServerResourceRecordA -Name ns2 -IPv4Address 172.20.140.110 -ZoneName fernandezns2[i].systems
Add-DnsServerResourceRecord -Name "@" -NameServer ns1.fernandez[$i].systems -NS -ZoneName fernandezns2[$i].systems
$contador = $contador +1
}


#Remove-DnsServerZone -name fernandez10.com -Force

 
