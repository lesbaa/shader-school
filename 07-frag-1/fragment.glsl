precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)

vec2 convertToClipCoords(vec2 v) {
  return (v - 256.0) / 256.0;
}

vec2 convertToScreenCoords(vec2 v) {
  return (v * 512.0) - 256.0;
}

bool isWithin(vec2 v) {
  vec2 vOut = convertToClipCoords(v);
  
  return length(vOut) <= 0.5;
}

void main() {
  gl_FragColor = isWithin(vec2(gl_FragCoord.xy)) ? CIRCLE_COLOR : OUTSIDE_COLOR;
}
