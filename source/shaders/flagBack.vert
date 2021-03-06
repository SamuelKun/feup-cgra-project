attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec2 aTextureCoord;

varying vec2 vTextureCoord;

uniform sampler2D flagTex;
uniform sampler2D flagMap;

uniform float position;
uniform float timeFactor;

uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;
uniform mat4 uNMatrix;

#define M_PI 3.1415926535897932384626433832795

void main() {
    float phase = position * 20.0 + timeFactor * 0.1;

    float defaultOndulation = 0.1 * sin(aVertexPosition.x * 6.0 * M_PI - phase);

    vec3 offset = vec3(0.0, 0.0, defaultOndulation);

    gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition + offset, 1.0);   

    vTextureCoord = aTextureCoord;
}