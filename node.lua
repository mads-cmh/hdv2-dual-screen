gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)
local font = resource.load_font("default.ttf")

function node.render()
  gl.clear(0, 0, 0, 1)

  gl.color(1, 0, 0, 1)
  gl.viewport(0, 0, WIDTH / 2, HEIGHT)
  font:write(100, 100, "LEFT DISPLAY", 80, 1, 1, 1, 1)

  gl.color(0, 0, 1, 1)
  gl.viewport(WIDTH / 2, 0, WIDTH / 2, HEIGHT)
  font:write(100, 100, "RIGHT DISPLAY", 80, 1, 1, 1, 1)
end
