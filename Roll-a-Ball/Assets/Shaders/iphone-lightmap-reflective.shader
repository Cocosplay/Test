Shader "iPhone/reflective"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Reflect ("Reflection", 2D) = "black" { TexGen SphereMap }
	}

	SubShader
	{
		Pass
		{
			Name "REFLECT"
			ZWrite On
			Blend SrcAlpha OneMinusSrcAlpha
			
			BindChannels {
				Bind "Vertex", vertex
				Bind "normal", normal
				Bind "texcoord", texcoord0 // main uses 1st uv
			}
						
			SetTexture [_MainTex] {
				combine texture
			}
			SetTexture [_Reflect] {
				combine texture, previous
			}
		}	
	}
}
