uniform sampler2D globeTexture;

varying vec2 vertexUV; //vec2
varying vec3 vertexNormal; //vec3

void main(){
    float intensity = 1.3 - dot(vertexNormal, vec3(0.0, 0.0, 1.0));

    vec3 atmosphere = vec3(0.3, 0.6, 1.0) * pow(intensity, 3.0);

    gl_FragColor = vec4(atmosphere + 
    texture2D(globeTexture, vertexUV).xyz, 1.0);
}