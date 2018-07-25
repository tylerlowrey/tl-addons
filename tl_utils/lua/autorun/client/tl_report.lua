local report_panel = {}

function report_panel:Init()
  self:SetSize( 100, 100)
  self:Center()
end

function report_panel:Paint( w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 255 ) )
end

vgui.Register( "ReportPanel", report_panel, "Panel" )

local function showReportPanel()
  local pnl = vgui.Create( "ReportPanel", parentpanel )
end

local function reportPanelKeyDetect(player, key)
   if (key == KEY_L) then
     -- Create the vgui Panel
   end
end

hook.add( "KeyPress", "tl_report", reportPanel)
