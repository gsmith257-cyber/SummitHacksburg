# https://www.thehacker.recipes/ad/movement/kerberos/delegations/constrained#without-protocol-transition
Set-ADComputer -Identity "centros$" -ServicePrincipalNames @{Add='HTTP/sharkys.lane.hacksburg.local'}
Set-ADComputer -Identity "centros$" -Add @{'msDS-AllowedToDelegateTo'=@('HTTP/sharkys.lane.hacksburg.local','HTTP/sharkys')}
# Set-ADComputer -Identity "centros$" -Add @{'msDS-AllowedToDelegateTo'=@('CIFS/sharkys.lane.hacksburg.local','CIFS/sharkys')}