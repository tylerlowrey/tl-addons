-- Client side code

function ulx.tl_reportClientSide()

  -- Main Frame
  local ReportDFrame = vgui.Create("DFrame")
  ReportDFrame:SetSize(400, 300)
  ReportDFrame:Center()
  ReportDFrame:SetTitle("Report Panel")
  ReportDFrame:SetVisible(true)
  ReportDFrame:SetDraggable(false)
  ReportDFrame:MakePopup()
  ReportDFrame:ShowCloseButton(true)

  -- Report Player Name Label/Text
  local ReportedPlayerTitle = vgui.Create("DLabel", ReportDFrame)
  ReportedPlayerTitle:SetPos(40, 40)
  ReportedPlayerTitle:SetText("Player you are reporting (copy their name):")
  ReportedPlayerTitle:SetSize(320, 20)

  -- Report Player Name Text Box
  local ReportPlayerTextBox = vgui.Create("DTextEntry", ReportDFrame)
  ReportPlayerTextBox:SetPos(39, 60)
  ReportPlayerTextBox:SetSize(320, 20)

  -- Report Player Description Label/Text
  local ReportDescriptionTitle = vgui.Create("DLabel", ReportDFrame)
  ReportDescriptionTitle:SetPos(40, 80)
  ReportDescriptionTitle:SetText("Describe the incident:")
  ReportDescriptionTitle:SetSize(320, 20)

  -- Report Player Description Text Box
  local ReportDescriptionTextBox = vgui.Create("DTextEntry", ReportDFrame)
  ReportDescriptionTextBox:SetPos(39, 100)
  ReportDescriptionTextBox:SetSize(320, 150)
  ReportDescriptionTextBox:SetMultiline(true)

  -- Report Button
  local ReportButton = vgui.Create("DButton", ReportDFrame)
  ReportButton:SetPos(0, 260)
  ReportButton:SetSize(100, 30)
  ReportButton:SetText("Submit")
  ReportButton:CenterHorizontal()

  -- Send data entered to the server
  ReportButton.DoClick = function()
    net.Start("ReportMessage")
    net.WriteString(ReportPlayerTextBox:GetText())
    net.WriteString(ReportDescriptionTextBox:GetText())
    net.SendToServer()
    ReportDFrame:Close()
  end


end
