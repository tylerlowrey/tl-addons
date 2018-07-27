--------------------------
--   Net Library Code   --
--------------------------

-- Register network string for report panel
util.AddNetworkString("ReportMessage")

-- Attach a function to the network string
net.Receive("ReportMessage", function(len, ply)
  local calling_ply_name = ply:Name()
  local calling_ply_guid = ply:SteamID()

  local reportedPlayerName = net.ReadString()
  local reportDescription = net.ReadString()

  -- Start POST request
  local msg = {
    content = calling_ply_name .. "\n" .. calling_ply_guid .. "\n"
  }
  local url = "https://discordapp.com/api/channels/472215013176901633/messages"
  http.Post(url, util.TableToJSON(msg), nil, nil, {
    ["Authorization"] = "Bot 471170221055410187",
    ["Content-Type"] = "application/json"

   })
  RunConsoleCommand("say", util.TableToJSON(msg))
  -- local res, code, response_headers, status = http.request
  -- {
  --   url = path,
  --   method = "POST",
  --   headers = {
  --     ["Content-Type"] = "application/json"
  --   },
  --   content = calling_ply_name .. "\n" .. calling_ply_guid .. "\n"
  -- }
  -- JSON to send
end);
