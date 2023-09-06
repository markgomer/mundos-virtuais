Shader "Custom/CubeFaces"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float3 normal : NORMAL;
            };

            sampler2D _MainTex;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.normal = UnityObjectToWorldNormal(v.normal);
                return o;
            }
            
            half4 frag (v2f i) : SV_Target
            {
                if (abs(i.normal.y) > 0.5) return half4(1,0,0,1); // Up and Down (Red)
                if (abs(i.normal.x) > 0.5) return half4(0,1,0,1); // Left and Right (Green)
                return half4(0,0,1,1); // Front and Back (Blue)
            }
            ENDCG
        }
    }
}
