highp vec2 func(highp vec2 a, highp vec2 b) {

  return normalize(length(b) * a + length(a) * b);

}

//Do not change this line
#pragma glslify: export(func)