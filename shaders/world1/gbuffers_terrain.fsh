#version 120

/*
!! DO NOT REMOVE !!
This code is from Chocapic13' shaders
Read the terms of modification and sharing before changing something below please !
!! DO NOT REMOVE !!
*/

varying vec4 color;

varying vec2 texcoord;




uniform sampler2D texture;


vec3 toLinear(vec3 sRGB){
return sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878);
}
//////////////////////////////VOID MAIN//////////////////////////////
//////////////////////////////VOID MAIN//////////////////////////////
//////////////////////////////VOID MAIN//////////////////////////////
//////////////////////////////VOID MAIN//////////////////////////////
//////////////////////////////VOID MAIN//////////////////////////////

void main() {
	vec4 albedo = texture2D(texture,texcoord);
    albedo.rgb = color.rgb*toLinear(albedo.rgb)*0.5*170.*color.a;	//don't export to gamma 1/2.2 due to RGB11F format
/* DRAWBUFFERS:1 */
	gl_FragData[0] = albedo;
}