//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};
//
//[maxvertexcount(3)]
//void main(
//	triangle float4 input[3] : SV_POSITION, 
//	inout TriangleStream< GSOutput > output
//)
//{
//	for (uint i = 0; i < 3; i++)
//	{
//		GSOutput element;
//		element.pos = input[i];
//		output.Append(element);
//	}
//}

#include "BasicShaderHeader.hlsli"

[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	inout TriangleStream<GSOutput> output
)
{

	

	
		GSOutput element;
		//‹¤’Ê
		element.normal = input[0].normal;
		element.uv = input[0].uv;
		//1“_–Ú
		element.svpos = input[0].svpos;
		output.Append(element);
		//2“_–Ú
		element.svpos = input[0].svpos + float4(10.0f,10.0f,0,0);
		output.Append(element);
		//3“_–Ú
		element.svpos = input[0].svpos + float4(10.0f,0, 0, 0);
		output.Append(element);


	
}