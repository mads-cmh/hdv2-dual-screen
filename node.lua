gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

function node.render()
  gl.clear(0, 0, 0, 1)

  gl.color(1, 0, 0, 1)
  gl.viewport(0, 0, WIDTH / 2, HEIGHT)
  gl.rect(0, 0, WIDTH / 2, HEIGHT)

  gl.color(0, 0, 1, 1)
  gl.viewport(WIDTH / 2, 0, WIDTH / 2, HEIGHT)
  gl.rect(0, 0, WIDTH / 2, HEIGHT)
end
