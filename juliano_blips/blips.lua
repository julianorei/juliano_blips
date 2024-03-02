local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
    
     {title="OFICINA BENNYS", colour=30, id=310, x = -204.5260, y = -1304.7933, z = 31.3395},
     {title="LAVAGEM YELLOWJEC", colour=30, id=310, x = 1994.5685, y = 3060.7537, z = 47.0490},
     {title="LAVAGEM VANILLA", colour=30, id=310, x = 136.8977, y = -1307.2107, z = 28.9295},
     {title="ARMAS COSA NOSTRA", colour=30, id=310, x = -122.5783, y = 993.8734, z = 235.7556},
     {title="ARMAS YAKUZA", colour=30, id=310, x = -162.2008, y = 299.7287, z = 104.8035},
     {title="OFICINA SOA", colour=30, id=310, x = 969.3684, y = -125.7755, z = 74.3530},
     {title="BAIRRO BALLAS", colour=30, id=310, x = 103.4859, y = -1939.3875, z = 20.8037},
     {title="BAIRRO VAGOS", colour=30, id=310, x = 337.9700, y = -2042.8289, z = 47.3193},
     {title="BAIRRO CRIPS", colour=30, id=310, x = -1559.4349, y = -241.3875, z = 54.1511}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)