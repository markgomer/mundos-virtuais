Shader "Custom/HelloShader"
{
    Properties
    {
        _SizeX("X",Float) = 1.0
        _SizeY("Y",Float) = 1.0
        
        _Color("Color",Color) = (1,0,0,1)

    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            float _SizeX;
            float _SizeY;

            float4 _Color;

            

            float4 vert (float4 vertexPos:POSITION) :SV_POSITION
            {
                return UnityObjectToClipPos(float4(_SizeX,_SizeY,1,1)*vertexPos);
            }

            fixed4 frag () : SV_Target
            {
                return _Color;
            }
            ENDCG
        }
    }
}
