-- ULX Command for reporting player

function ulx.report(calling_ply)
  local tl_ParentDFrame = vgui.Create("DFrame")

  tl_ParentDFrame:SetSize(400, 300)
  tl_ParentDFrame:Center()
  tl_ParentDFrame:SetTitle("Report Panel")
  tl_ParentDFrame:SetVisible(true)
  tl_ParentDFrame:SetDraggable(false)
  tl_ParentDFrame:MakePopup()
  tl_ParentDFrame:ShowCloseButton(true)


end

local report = ulx.command("Utility", "ulx report", ulx.report, "!report")
report:defaultAccess(ULib.ACCESS_ALL)
report:help("Brings up the panel to report a player")
ulx.addToMenu(ulx.ID_MClient, "Report Player", "ulx report")
