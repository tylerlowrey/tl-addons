----------------------
--   ULX Commands   --
----------------------
-- Server side code for !report
function ulx.tl_reportServerSide(calling_ply)
  ULib.clientRPC(calling_ply, "ulx.tl_reportClientSide")
end

local report = ulx.command("Utility", "ulx report", ulx.tl_reportServerSide, "!report")
report:defaultAccess(ULib.ACCESS_ALL)
report:help("Brings up the panel to report a player")
