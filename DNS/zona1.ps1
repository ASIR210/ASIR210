#####################################################
###########	Martin Fernandez Aizcorbe	#############
###########	20/10/2021	#############################
#####################################################
Remove-DnsServerZone -name miercoles10.com -Force
Add-DnsServerPrimaryZone  -Name miercoles10.com -ZoneFile miercoles15.com.dns
Add-DnsServerResourceRecordA -Name ns1 -IPv4Address 172.20.140.110 -ZoneName miercoles10.com 
Add-DnsServerResourceRecordCName -Name www -HostNameAlias ns1.miercoles10.com 
Add-DnsServerResourceRecord -Name "@" -NameServer ns1.miercoles10.com -NS -ZoneName miercoles10.com

