gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local screen1 = resource.render_child("playlist1")
local screen2 = resource.render_child("playlist2")

function node.render()
  gl.viewport(0, 0, WIDTH / 2, HEIGHT)
  screen1:draw(0, 0, WIDTH / 2, HEIGHT)

  gl.viewport(WIDTH / 2, 0, WIDTH / 2, HEIGHT)
  screen2:draw(WIDTH / 2, 0, WIDTH / 2, HEIGHT)
end