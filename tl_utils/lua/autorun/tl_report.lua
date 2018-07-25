if SERVER then return end


function ReportPanel()
  local tl_ParentDFrame = vgui.Create("DFrame")

  tl_ParentDFrame:SetSize(400, 300)
  tl_ParentDFrame:Center()
  tl_ParentDFrame:SetTitle("Report Panel")
  tl_ParentDFrame:SetVisible(true)
  tl_ParentDFrame:SetDraggable(false)
  tl_ParentDFrame:MakePopup()
  tl_ParentDFrame:ShowCloseButton()


end

concommand.Add( "report", ReportPanel );
