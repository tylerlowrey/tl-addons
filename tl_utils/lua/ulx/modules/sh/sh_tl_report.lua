include("tl_secret.lua")
--------------------------
--   Net Library Code   --
--------------------------

-- Register network string for report panel
util.AddNetworkString("ReportMessage")

-- Attach a function to the network string
net.Receive("ReportMessage", function(len, ply)
  local reportID = util.CRC(util.DateStamp())
  local calling_ply_name = "**Player Sending Report's Name:** " .. ply:Name() .. "\n"
  local calling_ply_guid = "**Player Sending Report's STEAM ID:** " .. ply:SteamID() .. "\n"

  local reportedPlayerName = "**Reported Player's Name:** " .. net.ReadString() .. "\n"
  local reportDescription = "**Report Description:** \n" .. net.ReadString() .. "\n\n\n"

  -- Start POST request
  local msg = calling_ply_name  .. calling_ply_guid
  msg = msg .. reportedPlayerName .. reportDescription

  local url = webhook_url
  http.Post(url, {
    content = msg,
    username = "Report ID " .. reportID
  })
end);
