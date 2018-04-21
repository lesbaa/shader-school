precision highp float;

uniform sampler2D texture;
uniform vec2 screenSize;

void main() {
  vec2 coord = gl_FragCoord.xy / screenSize;

  vec4 texel = texture2D(texture, coord.xy);

  gl_FragColor = vec4(
    texel.b,
    texel.g,
    texel.r,
    texel.a
  );
}
