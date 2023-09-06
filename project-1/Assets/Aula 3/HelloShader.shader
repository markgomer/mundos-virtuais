Shader "Custom/HelloShader"
{
    Properties
    {
        _SizeX("X",Float) = 1.0
        _SizeY("Y",Float) = 1.0
        _Red("Red",Range(0,1)) = 1
        _Green("Green",Range(0,1)) = 1
        _Blue("Blue",Range(0,1)) = 1
        _Alpha("Alpha",Range(0,1)) = 1
    }
    SubShader
    {
    Pass
    {
        CGPROGRAM
        
        #pragma vertex vert
        #pragma fragment frag

        float _SizeX;
        float _SizeY;
        float _Red,_Green,_Blue,_Alpha;
        
        float4 vert(float4 vertexPos:POSITION) :SV_POSITION
        {
            return UnityObjectToClipPos(float4(_SizeX,_SizeY,1,1)*vertexPos);
        }

        float4 frag(void) : COLOR
        {
            return float4(_Red,_Green,_Blue,_Alpha);
        }
        
        ENDCG
    }
    }
}
