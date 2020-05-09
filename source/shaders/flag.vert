attribute vec3 aVertexPosition;
attribute vec3 aVertexNormal;
attribute vec2 aTextureCoord;

varying vec2 vTextureCoord;

uniform sampler2D flagTex;
uniform sampler2D flagMap;

uniform float position;
uniform float velocity;
uniform float timeFactor;

uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;
uniform mat4 uNMatrix;

void main() {
    float velocityFactor = velocity + 1.0;

    float defaultOndulation = 0.1 * sin(aVertexPosition.x*20.0 + position * 0.0000000005 + timeFactor*0.2);

    vec3 offset = vec3(0.0, 0.0, defaultOndulation);

    gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition + offset, 1.0);

    vTextureCoord = aTextureCoord;
}