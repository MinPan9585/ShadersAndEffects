// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "教程"
{
	Properties
	{
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			half filler;
		};

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=17800
0;72.66667;1343.667;690.3333;5667.709;1355.039;7.403546;True;False
Node;AmplifyShaderEditor.CommentaryNode;109;939.5196,343.0515;Inherit;False;1799.879;1006.831;UV扭曲功能组件：1.生成一个流动的贴图，给到A通道     2.生成默认的UVcoordinates，给到B通道    3.定义一个强度值，给到Alpha通道    4.控制强度值，对原UV坐标和扭曲贴图所生成的坐标进行混合，达到UV扭曲的效果;5;100;98;77;96;99;UV扭曲组件：使用Lerp节点，混合扭曲贴图的坐标和原始UV坐标，生成UV扭曲效果;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;74;936.9034,-106.3148;Inherit;False;1071.557;418.7068;UV流动功能组件;2;72;73;基础贴图流动组件：;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;159;949.8394,2998.679;Inherit;False;521.209;325.9819;粒子CustomData组件;3;156;155;154;粒子CustomData组件：需要激活CustomData，再在粒子中开启customVertexStream，再添加一个“Custom-Custom1.x”，随后在shader中激活该功能即可;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;6;-1486,-127.5;Inherit;False;838;263;常数节点：一维量、二维量、三维量、四维量、RGBA颜色节点;5;3;4;5;2;1;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;77;1479.823,799.2079;Inherit;False;697.1188;379.1068;主贴图流动;7;84;83;82;81;80;79;78;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;100;989.5197,393.052;Inherit;False;1187.001;399.106;UV扭曲贴图的流动，在输出时进行了取色的操作，确保变成黑白值;9;85;86;87;88;91;93;94;95;90;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;127;946.627,1376.309;Inherit;False;1404.515;520.1025;软溶解：用贴图减去float值，再进行clamp，约束在 0-1，再进行smoothstep，拉高色阶，使贴图在视觉上变硬，就可以作为溶解值去和opacity相乘;12;118;113;119;123;125;124;122;121;117;120;111;115;软溶解组件：;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;27;-1213.554,139.823;Inherit;False;565;187.2154;加、减、乘、除;4;15;14;26;16;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;56;-624.5848,368.4245;Inherit;False;306;257;菲尼尔;1;45;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;50;-1019.699,-414.6222;Inherit;False;370;280;贴图;1;10;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;98;1864.788,1184.885;Inherit;False;312.6667;165.6667;UV扭曲强度;1;97;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;54;-626.2168,120.4251;Inherit;False;751.4626;239.473;视角角度、世界空间灯光方向、世界法线方向、灯光颜色;4;33;31;53;32;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;28;-1080.554,331.823;Inherit;False;429.3944;166;注册、获取         set、get;2;9;17;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;63;343.8014,263.3611;Inherit;False;256;166;抖动;1;59;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;101;937.4532,-507.2633;Inherit;False;688.1182;368.7068;基础贴图流动：连给贴图的UV输入端口，记得在Reference选中对应的贴图;7;108;107;106;105;104;103;102;基础UV流动组件：;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;61;-631.6219,-407.9783;Inherit;False;1229.429;305.9171;绝对值、one minus一减、power幂、lerp线性插值、clamp约束夹、remap重映射、step阶梯函数、smoothstep平滑阶梯;8;19;37;12;7;40;38;41;58;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;52;-1256.708,506.9282;Inherit;False;602.3431;233.8115;通道附加、组件遮罩，组件拆分;3;18;24;23;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;62;278.8632,73.33945;Inherit;False;318;185;深度消隐;1;60;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;55;-312.7354,368.6494;Inherit;False;623.0857;259.5566;IF、静态开关、切换开关;3;35;36;34;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;57;341.3402,-92.60751;Inherit;False;248;161;系统时间;1;46;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;137;947.4185,1910.662;Inherit;False;1077.234;551.2458;软溶解描边：连接在溶解的smooth结果之后，就可以输出描边，再add在shader的emission结果上即可;7;131;132;135;129;130;136;133;描边组件：;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;152;949.5437,2474.673;Inherit;False;731.1288;500.0781;顶点偏移;6;151;146;147;148;149;150;顶点偏移组件：;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;49;-628.7648,-96.79575;Inherit;False;459.4616;209.0427;UV坐标 UV旋转;2;47;11;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;72;986.9035,-56.3148;Inherit;False;688.1182;368.7068;基础贴图流动：连给贴图的UV输入端口，记得在Reference选中对应的贴图;7;68;67;69;70;71;66;65;;1,1,1,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;36;80.34961,422.9014;Inherit;False;Property;_ToggleSwitch0;Toggle Switch0;2;0;Create;True;0;0;False;0;0;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;19;-196.0819,-354.8138;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;38;-53.91073,-357.6855;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade;60;328.8633,123.3396;Inherit;False;True;False;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;4;-1035,-76.5;Inherit;False;Constant;_Vector2;Vector 2;0;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StepOpNode;41;235.8456,-357.8621;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;53;-225.0004,172.1651;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;2;-1313,-76.5;Inherit;False;Constant;_Vector0;Vector 0;0;0;Create;True;0;0;False;0;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;26;-921.1593,192.0384;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;45;-574.5853,418.4244;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;149;1323.071,2754.689;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;151;1511.673,2577.086;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;150;1311.496,2607.792;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;147;1000.62,2603.292;Inherit;True;Property;_顶点偏移贴图;顶点偏移贴图;21;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;148;1208.09,2524.673;Float;False;Property;_顶点偏移强度;顶点偏移强度;22;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;155;1007.048,3209.661;Float;False;Property;_CustomDataUV2X_Indensity1;CustomDataUV2X_Indensity;23;0;Create;True;0;0;False;0;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;156;1302.048,3115.661;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;154;999.8394,3048.679;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;111;996.627,1426.309;Inherit;True;Property;_软溶解贴图;软溶解贴图;15;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;1556.712,1681.627;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;33;-427.0387,170.4252;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalVertexDataNode;146;1104.608,2795.751;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;14;-1163.554,191.823;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;16;-800.5537,191.823;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;17;-846.1593,383.0384;Inherit;False;-1;;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.ConditionalIfNode;34;-262.7359,421.2055;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;32;-54.75454,172.1811;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;23;-1206.708,557.7396;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;11;-578.765,-46.75278;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;3;-1180,-77.5;Inherit;False;Constant;_Vector1;Vector 1;0;0;Create;True;0;0;False;0;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;10;-969.6989,-364.6222;Inherit;True;Property;_TextureSample0;Texture Sample 0;0;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;24;-907.3651,557.9282;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RegisterLocalVarNode;9;-1030.554,381.823;Inherit;False;myVarName;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;40;73.39755,-357.9784;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;46;391.3398,-42.60747;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;7;-333.476,-356.0293;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;117;1412.712,1757.627;Float;False;Constant;_Float3;Float 3;33;0;Create;True;0;0;False;0;-2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;37;-581.6221,-354.4958;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DitheringNode;59;393.8015,313.3611;Inherit;False;0;False;3;0;FLOAT;0;False;1;SAMPLER2D;;False;2;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;15;-1049.554,189.823;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;5;-881,-76.5;Inherit;False;Constant;_Color0;Color 0;0;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;12;-474.4759,-355.0293;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1;-1436,-75.5;Inherit;False;Constant;_Float0;Float 0;0;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;47;-379.3036,-46.79575;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SmoothstepOpNode;58;343.8073,-356.0614;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;31;-576.217,171.8982;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ComponentMaskNode;18;-1086.365,556.9282;Inherit;False;True;True;True;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;121;1707.642,1560.045;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;133;1789.653,2064.663;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;119;1450.937,1426.706;Inherit;True;True;False;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;65;1037.902,64.6849;Float;False;Property;_主图V;主图V;5;0;Create;True;0;0;False;0;0;-0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;105;1151.453,-450.6635;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;68;1198.44,92.89218;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;97;1914.789,1234.885;Float;False;Property;_UV扭曲强度;UV扭曲强度;12;0;Create;True;0;0;False;0;0;0.2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;108;1149.69,-294.5565;Inherit;False;0;73;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleTimeNode;88;1194.987,682.1581;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;102;1148.99,-358.0566;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;87;1220.52,572.0526;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;70;1362.903,1.285262;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;99;2418.396,715.3364;Inherit;True;Property;_主图1;主图1;8;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;82;1700.06,1015.315;Inherit;False;0;99;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;90;1039.52,443.0519;Inherit;False;0;94;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;66;1036.903,-6.314768;Float;False;Property;_主图U;主图U;3;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;106;987.4533,-457.2635;Float;False;Property;_U方向流动;U方向流动;4;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;103;1313.453,-449.6635;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;81;1701.36,943.8156;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;78;1532.822,938.6086;Float;False;Property;_主图1V;主图1V;14;0;Create;True;0;0;False;0;0;-0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;84;2020.94,862.8027;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;93;1532.52,515.0525;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;80;1703.823,851.2095;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DesaturateOpNode;95;1972.521,483.0524;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;104;1471.571,-449.0695;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;67;1200.903,0.2852621;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;86;1044.52,556.0527;Float;False;Property;_扭曲贴图U;扭曲贴图U;10;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;79;1529.823,861.6094;Float;False;Property;_主图1U;主图1U;13;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;113;1288.26,1431.078;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;122;1697.659,1712.209;Float;False;Property;_溶解软硬度;溶解软硬度;17;0;Create;True;0;0;False;0;0;1.03;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;118;1549.712,1611.627;Float;False;Constant;_Float4;Float 4;33;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;115;1285.712,1676.627;Float;False;Property;_溶解强度;溶解强度;16;0;Create;True;0;0;False;0;0;0;0;1.05;0;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;132;1552.776,2208.908;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;136;997.4186,2214.083;Inherit;True;Property;_溶解图;溶解图;18;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;135;1306.651,1961.662;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;131;1540.652,1960.662;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;125;2094.142,1637.412;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;35;-113.1745,418.6494;Inherit;False;Property;_Keyword0;Keyword 0;1;0;Create;True;0;0;False;0;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;123;1855.999,1460.84;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;129;1138.652,1960.662;Float;False;Property;_描边宽度;描边宽度;20;0;Create;True;0;0;False;0;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;124;1883.606,1667.149;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;96;2247.468,746.274;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;73;1693.46,-25.33064;Inherit;True;Property;_主图;主图;7;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;91;1380.52,572.0526;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;71;1521.021,1.8795;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;94;1684.52,476.0518;Inherit;True;Property;_扭曲贴图;扭曲贴图;9;0;Create;True;0;0;False;0;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;107;988.4523,-386.2635;Float;False;Property;_V方向流动;V方向流动;6;0;Create;True;0;0;False;0;0;-0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;85;1044.52,636.0526;Float;False;Property;_扭曲贴图V;扭曲贴图V;11;0;Create;True;0;0;False;0;0;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;83;1866.823,849.2095;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;69;1199.14,156.392;Inherit;False;0;73;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;130;1324.243,2182.299;Float;False;Property;_描边范围;描边范围;19;0;Create;True;0;0;False;0;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;620.7372,-108.5396;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;教程;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;151;0;148;0
WireConnection;151;1;150;0
WireConnection;151;2;149;4
WireConnection;150;0;147;0
WireConnection;150;1;146;0
WireConnection;156;0;154;3
WireConnection;156;1;155;0
WireConnection;120;0;115;0
WireConnection;120;1;117;0
WireConnection;121;0;119;0
WireConnection;121;1;118;0
WireConnection;121;2;120;0
WireConnection;133;0;132;0
WireConnection;133;1;131;0
WireConnection;119;0;113;0
WireConnection;105;0;106;0
WireConnection;105;1;107;0
WireConnection;87;0;86;0
WireConnection;87;1;85;0
WireConnection;70;0;67;0
WireConnection;70;1;68;0
WireConnection;99;1;96;0
WireConnection;103;0;105;0
WireConnection;103;1;102;0
WireConnection;84;0;83;0
WireConnection;84;1;82;0
WireConnection;93;0;90;0
WireConnection;93;1;91;0
WireConnection;80;0;79;0
WireConnection;80;1;78;0
WireConnection;95;0;94;0
WireConnection;104;0;103;0
WireConnection;104;1;108;0
WireConnection;67;0;66;0
WireConnection;67;1;65;0
WireConnection;113;0;111;0
WireConnection;132;0;136;1
WireConnection;132;1;130;0
WireConnection;135;0;129;0
WireConnection;135;1;136;1
WireConnection;131;0;135;0
WireConnection;131;1;130;0
WireConnection;125;0;123;0
WireConnection;125;1;124;0
WireConnection;125;2;122;0
WireConnection;123;0;121;0
WireConnection;124;0;122;0
WireConnection;96;0;84;0
WireConnection;96;1;95;0
WireConnection;96;2;97;0
WireConnection;73;1;71;0
WireConnection;91;0;87;0
WireConnection;91;1;88;0
WireConnection;71;0;70;0
WireConnection;71;1;69;0
WireConnection;94;1;93;0
WireConnection;83;0;80;0
WireConnection;83;1;81;0
ASEEND*/
//CHKSM=658EC08040C73BCC2C5E3CE19B4375E313332E1C