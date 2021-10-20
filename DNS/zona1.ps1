#####################################################
###########	Martin Fernandez Aizcorbe	#############
###########	20/10/2021	#############################
#####################################################
Remove-DnsServerZone -name miercoles10.com -Force
Add-DnsServerPrimaryZone  -Name miercoles10.com -ZoneFile miercoles15.com.dns


