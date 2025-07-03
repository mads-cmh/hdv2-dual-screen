
gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local util = require "util"
local loader = require "video"

local videos = util.resource_list("mp4")
table.sort(videos)

local current = 1
local player = loader.load(videos[current], true)

function node.render()
  player:draw(0, 0, WIDTH, HEIGHT)
  if not player:running() then
    current = (current % #videos) + 1
    player = loader.load(videos[current], true)
  end
end
