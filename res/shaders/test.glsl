#version 330 core
in vec3 vPos;
out vec4 FragColor;

void main(){
  FragColor = vec4(vPos.xy, 1.0f, 1.0f);
}
