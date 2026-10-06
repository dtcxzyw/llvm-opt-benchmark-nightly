Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0
@.str.87 = private unnamed_addr constant [17 x i8] c"ReflectionFactor\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"Maya|DiffuseTexture\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"Maya|NormalTexture\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"Maya|SpecularTexture\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"Maya|FalloffTexture\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"Maya|ReflectionMapTexture\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"Maya|baseColor\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"Maya|normalCamera\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"Maya|emissionColor\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Maya|metalness\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"Maya|diffuseRoughness\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Maya|base\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"Maya|specular\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"Maya|specularColor\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"Maya|specularRoughness\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"Maya|TEX_color_map\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"Maya|TEX_normal_map\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"Maya|TEX_emissive_map\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"Maya|TEX_metallic_map\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"Maya|TEX_roughness_map\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"Maya|TEX_ao_map\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"3dsMax|Parameters|base_color_map\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"3dsMax|Parameters|bump_map\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"3dsMax|Parameters|emission_map\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"3dsMax|Parameters|metalness_map\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"3dsMax|Parameters|roughness_map\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"3dsMax|main|base_color_map\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"3dsMax|main|norm_map\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"3dsMax|main|emit_color_map\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"3dsMax|main|ao_map\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"3dsMax|main|opacity_map\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"3dsMax|main|metalness_map\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"3dsMax|main|specular_map\00", align 1
@.str.120 = private unnamed_addr constant [31 x i8] c"$raw.3dsMax|main|useGlossiness\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"3dsMax|main|roughness_map\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"3dsMax|main|glossiness_map\00", align 1
@.str.123 = private unnamed_addr constant [112 x i8] c"A 3dsMax Pbr Material must have a useGlossiness value to correctly interpret roughness and glossiness textures.\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"Diffuse\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"$clr.emissive\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"Maya|emissive\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"$clr.ambient\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"$clr.specular\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"$mat.shinpercent\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"$mat.shininess\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"$mat.roughnessFactor\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"$clr.transparent\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"$mat.transparencyfactor\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"$mat.opacity\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"$clr.reflective\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"$mat.reflectivity\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"BumpFactor\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"$mat.bumpscaling\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"DisplacementFactor\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"$mat.displacementscaling\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"Maya|base_color\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"$clr.base\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Maya|use_color_map\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"$mat.useColorMap\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"Maya|use_metallic_map\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"$mat.useMetallicMap\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"Maya|metallic\00", align 1
@.str.153 = private unnamed_addr constant [20 x i8] c"$mat.metallicFactor\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"Maya|use_roughness_map\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"$mat.useRoughnessMap\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"Maya|roughness\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"Maya|use_emissive_map\00", align 1
@.str.158 = private unnamed_addr constant [20 x i8] c"$mat.useEmissiveMap\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"Maya|emissive_intensity\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"$mat.emissiveIntensity\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"Maya|use_ao_map\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"$mat.useAOMap\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"$raw.\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"|file\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"|uvtrafo\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"|uvwsrc\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"Model::\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"AnimStack::\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"DeformPercent\00", align 1
@__const._ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE.prop_whitelist = private unnamed_addr constant [4 x ptr] [ptr @.str.31, ptr @.str.30, ptr @.str.29, ptr @.str.172], align 16
@_ZTIN6Assimp3FBX17BlendShapeChannelE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX17BlendShapeChannelE, ptr @_ZTIN6Assimp3FBX8DeformerE }, comdat, align 8
@_ZTSN6Assimp3FBX17BlendShapeChannelE = linkonce_odr hidden constant [33 x i8] c"N6Assimp3FBX17BlendShapeChannelE\00", comdat, align 1
@_ZTIN6Assimp3FBX8DeformerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX8DeformerE, ptr @_ZTIN6Assimp3FBX6ObjectE }, comdat, align 8
@_ZTSN6Assimp3FBX8DeformerE = linkonce_odr hidden constant [23 x i8] c"N6Assimp3FBX8DeformerE\00", comdat, align 1
@.str.173 = private unnamed_addr constant [44 x i8] c"ignoring empty AnimationStack (using IK?): \00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"Deformer\00", align 1
@_ZTIN6Assimp3FBX10BlendShapeE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX10BlendShapeE, ptr @_ZTIN6Assimp3FBX8DeformerE }, comdat, align 8
@_ZTSN6Assimp3FBX10BlendShapeE = linkonce_odr hidden constant [26 x i8] c"N6Assimp3FBX10BlendShapeE\00", comdat, align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.178 = private unnamed_addr constant [46 x i8] c"target property for animation curve not set: \00", align 1
@.str.179 = private unnamed_addr constant [53 x i8] c"no animation curves assigned to AnimationCurveNode: \00", align 1
@.str.180 = private unnamed_addr constant [47 x i8] c"dropping redundant animation channel for node \00", align 1
@.str.181 = private unnamed_addr constant [68 x i8] c"ignoring node animation, did not find any transformation key frames\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"d|X\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"d|Y\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"d|Z\00", align 1
@.str.185 = private unnamed_addr constant [67 x i8] c"ignoring scale animation curve, did not recognize target component\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"UpAxis\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"UpAxisSign\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"FrontAxis\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"FrontAxisSign\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"CoordAxis\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"CoordAxisSign\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"OriginalUpAxis\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"OriginalUpAxisSign\00", align 1
@.str.194 = private unnamed_addr constant [16 x i8] c"UnitScaleFactor\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"OriginalUnitScaleFactor\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"FrameRate\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"TimeSpanStart\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"TimeSpanStop\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"CustomFrameRate\00", align 1
@.str.200 = private unnamed_addr constant [26 x i8] c"SourceAsset_FormatVersion\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"SourceAsset_Generator\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.203 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"LightType\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"OuterAngle\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"InnerAngle\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"DecayStart\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"DecayType\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"AspectWidth\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"AspectHeight\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"FieldOfView\00", align 1
@_ZN6Assimp3FBXL11kFovUnknownE = internal unnamed_addr constant float -1.000000e+00, align 4
@.str.213 = private unnamed_addr constant [10 x i8] c"FilmWidth\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"FocalLength\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"NearPlane\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"RotationOrder\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"LocalStart\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"LocalStop\00", align 1
@.str.222 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.223 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.224 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTIN6Assimp3FBX8PropertyE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX8PropertyE = linkonce_odr hidden constant [23 x i8] c"N6Assimp3FBX8PropertyE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIbEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIbEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyIbEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIbEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIiEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyIiEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIiEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIjEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIjEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyIjEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIjEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyImEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyImEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyImEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyImEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIlEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIlEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyIlEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIlEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyIfEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyIfEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyIfEE = linkonce_odr hidden constant [32 x i8] c"N6Assimp3FBX13TypedPropertyIfEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [83 x i8] c"N6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE = linkonce_odr hidden constant [46 x i8] c"N6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE\00", comdat, align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.226 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.229 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTIN6Assimp3FBX13TypedPropertyI9aiColor3DEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyI9aiColor3DEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyI9aiColor3DEE = linkonce_odr hidden constant [41 x i8] c"N6Assimp3FBX13TypedPropertyI9aiColor3DEE\00", comdat, align 1
@_ZTIN6Assimp3FBX13TypedPropertyI9aiColor4tIfEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp3FBX13TypedPropertyI9aiColor4tIfEEE, ptr @_ZTIN6Assimp3FBX8PropertyE }, comdat, align 8
@_ZTSN6Assimp3FBX13TypedPropertyI9aiColor4tIfEEE = linkonce_odr hidden constant [44 x i8] c"N6Assimp3FBX13TypedPropertyI9aiColor4tIfEEE\00", comdat, align 1
@.str.230 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTVSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [69 x i8] c"St15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [69 x i8] c"St15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.231 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@switch.table._ZN6Assimp3FBX12FBXConverter30NameTransformationCompPropertyENS1_18TransformationCompE = private unnamed_addr constant [17 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.30, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.31, ptr @.str.22, ptr @.str.25, ptr @.str.24, ptr @.str.23], align 8
@switch.table._ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE = private unnamed_addr constant [17 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr poison, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.30, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr poison, ptr @.str.22, ptr @.str.25, ptr @.str.24, ptr @.str.23], align 8
@switch.table._ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE = private unnamed_addr constant [17 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.24, ptr @.str.23], align 8
@switch.table._ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_ = private unnamed_addr constant [3 x i8] c"\01\02\04", align 4
@switch.table._ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_ = private unnamed_addr constant [17 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.30, ptr @.str.17, ptr poison, ptr @.str.19, ptr @.str.20, ptr @.str.31, ptr @.str.22, ptr @.str.25, ptr @.str.24, ptr @.str.23], align 8

@_ZN6Assimp3FBX12FBXConverterC1EP7aiSceneRKNS0_8DocumentEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN6Assimp3FBX12FBXConverterC2EP7aiSceneRKNS0_8DocumentEb
@_ZN6Assimp3FBX12FBXConverterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp3FBX12FBXConverterD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverterC2EP7aiSceneRKNS0_8DocumentEb(ptr noundef nonnull align 8 dereferenceable(529) initializes((0, 4), (8, 192)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(368) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.067.i = alloca float, align 4            ; 7 uses
  %.sroa.568.i = alloca float, align 4            ; 7 uses
  %.sroa.869.i = alloca float, align 4            ; 7 uses
  %.sroa.064.i = alloca float, align 4            ; 7 uses
  %.sroa.565.i = alloca float, align 4            ; 7 uses
  %.sroa.866.i = alloca float, align 4            ; 7 uses
  %.sroa.062.i = alloca float, align 4            ; 7 uses
  %.sroa.5.i = alloca float, align 4              ; 7 uses
  %.sroa.863.i = alloca float, align 4            ; 7 uses
  %i.a = zext i1 %3 to i8
  store i32 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i8 0, i64 184, i1 false)
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i8 0, i64 56, i1 false)
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i8 0, i64 56, i1 false)
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.am, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store ptr %1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 %i.a, ptr %i.au, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter17ConvertAnimationsEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %2, align 8, !nonnull !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !range !26, !noundef !25
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp3FBX12FBXConverter31ConvertOrphanedEmbeddedTexturesEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.s, %.loopexit43, %bb.e, %bb.c, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.e:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN6Assimp3FBX12FBXConverter15ConvertRootNodeEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %2, align 8, !nonnull !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !range !26, !noundef !25
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %.loopexit43

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.036.044 = load ptr, ptr %i.be, align 8   ; 2 uses
  %.not4045 = icmp eq ptr %.sroa.036.044, null
  br i1 %.not4045, label %.loopexit43, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit
  %.sroa.036.046 = phi ptr [ %.sroa.036.044, %.lr.ph ], [ %.sroa.036.0, %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.036.046, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef ptr @_ZN6Assimp3FBX10LazyObject3GetEb(ptr noundef nonnull align 8 dereferenceable(36) %i.bh, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call ptr @__dynamic_cast(ptr nonnull %i.bi, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX8MaterialE, i64 0) #27 ; 6 uses
  %.not22 = icmp eq ptr %i.bk, null
  br i1 %.not22, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load i64, ptr %i.bf, align 8
  %.not.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.k, %bb.l ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bk, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.preheader, !llvm.loop !0

bb.n:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = load i64, ptr %i.j, align 8             ; 2 uses
  %i.br = urem i64 %i.bp, %i.bq                   ; 2 uses
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %i.bk, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.bz = icmp eq ptr %i.bk, %i.cc
  br i1 %i.bz, label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.ca, %bb.p ], [ %i.bv, %bb.o ]
  %i.ca = load ptr, ptr %.020.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bq
  %.not19.i.i.i.i = icmp eq i64 %i.ce, %i.br
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.n
  %i.cf = invoke noundef i32 @_ZN6Assimp3FBX12FBXConverter15ConvertMaterialERKNS0_8MaterialEPKNS0_12MeshGeometryE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.bk, ptr noundef null)
          to label %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %.loopexit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit: ; preds = %bb.p, %bb.m, %bb.k, %.loopexit, %bb.o, %bb.i
  %.sroa.036.0 = load ptr, ptr %.sroa.036.046, align 8 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.036.0, null
  br i1 %.not40, label %.loopexit43, label %bb.h

.loopexit43:                                      ; preds = %_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, %bb.g, %bb.f
  invoke void @_ZN6Assimp3FBX12FBXConverter21ConvertGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.s unwind label %bb.d

bb.s:                                             ; preds = %.loopexit43
  invoke void @_ZN6Assimp3FBX12FBXConverter19TransferDataToSceneEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %1, align 8
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %1, align 8
  br label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %2, align 8, !nonnull !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = load i8, ptr %i.cn, align 1, !range !26, !noundef !25
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.ct = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.cv = load i32, ptr %i.ct, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %_ZN10aiVector3tIfEixEj.exit35.thread.i, label %.lr.ph.i

_ZN10aiVector3tIfEixEj.exit35.thread.i:           ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869.i)
  store float 0.000000e+00, ptr %.sroa.067.i, align 4
  store float 0.000000e+00, ptr %.sroa.869.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866.i)
  store float 0.000000e+00, ptr %.sroa.064.i, align 4
  store float 0.000000e+00, ptr %.sroa.565.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863.i)
  store float 0.000000e+00, ptr %.sroa.5.i, align 4
  store float 0.000000e+00, ptr %.sroa.863.i, align 4
  store float 1.000000e+00, ptr %.sroa.568.i, align 4
  store float 1.000000e+00, ptr %.sroa.866.i, align 4
  br label %_ZN10aiVector3tIfEixEj.exit37.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 7 uses
  %wide.trip.count.i = zext i32 %i.cv to i64
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i
  %i.cz = sitofp i32 %.179.i to float
  %i.da = fptrunc double %.194.i to float         ; 3 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = sitofp i32 %.185.i to float
  %i.dd = fmul float %i.dc, %i.da
  %i.de = sitofp i32 %.191.i to float
  %i.df = fmul float %i.de, %i.da                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869.i)
  store float 0.000000e+00, ptr %.sroa.067.i, align 4
  store float 0.000000e+00, ptr %.sroa.568.i, align 4
  store float 0.000000e+00, ptr %.sroa.869.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866.i)
  store float 0.000000e+00, ptr %.sroa.064.i, align 4
  store float 0.000000e+00, ptr %.sroa.565.i, align 4
  store float 0.000000e+00, ptr %.sroa.866.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863.i)
  store float 0.000000e+00, ptr %.sroa.062.i, align 4
  store float 0.000000e+00, ptr %.sroa.5.i, align 4
  store float 0.000000e+00, ptr %.sroa.863.i, align 4
  switch i32 %.1.i, label %_ZN10aiVector3tIfEixEj.exit.i [
    i32 2, label %bb.z
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %._crit_edge.i
  br label %_ZN10aiVector3tIfEixEj.exit.i

bb.z:                                             ; preds = %._crit_edge.i
  br label %_ZN10aiVector3tIfEixEj.exit.i

_ZN10aiVector3tIfEixEj.exit.i:                    ; preds = %bb.z, %bb.y, %._crit_edge.i
  %.0.i.i = phi ptr [ %.sroa.067.i, %._crit_edge.i ], [ %.sroa.869.i, %bb.z ], [ %.sroa.568.i, %bb.y ]
  store float %i.db, ptr %.0.i.i, align 4
  switch i32 %.182.i, label %_ZN10aiVector3tIfEixEj.exit35.i [
    i32 2, label %bb.ab
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit.i
  br label %_ZN10aiVector3tIfEixEj.exit35.i

bb.ab:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit.i
  br label %_ZN10aiVector3tIfEixEj.exit35.i

_ZN10aiVector3tIfEixEj.exit35.i:                  ; preds = %bb.ab, %bb.aa, %_ZN10aiVector3tIfEixEj.exit.i
  %.0.i34.i = phi ptr [ %.sroa.565.i, %bb.aa ], [ %.sroa.064.i, %_ZN10aiVector3tIfEixEj.exit.i ], [ %.sroa.866.i, %bb.ab ]
  store float %i.dd, ptr %.0.i34.i, align 4
  switch i32 %.188.i, label %_ZN10aiVector3tIfEixEj.exit37.i [
    i32 2, label %bb.ad
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit35.i
  br label %_ZN10aiVector3tIfEixEj.exit37.i

bb.ad:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit35.i
  br label %_ZN10aiVector3tIfEixEj.exit37.i

_ZN10aiVector3tIfEixEj.exit37.i:                  ; preds = %bb.ad, %bb.ac, %_ZN10aiVector3tIfEixEj.exit35.i, %_ZN10aiVector3tIfEixEj.exit35.thread.i
  %.093.lcssa120140145.i = phi float [ %i.df, %bb.ac ], [ %i.df, %bb.ad ], [ %i.df, %_ZN10aiVector3tIfEixEj.exit35.i ], [ 1.000000e+00, %_ZN10aiVector3tIfEixEj.exit35.thread.i ]
  %.0.i36.i = phi ptr [ %.sroa.5.i, %bb.ac ], [ %.sroa.863.i, %bb.ad ], [ %.sroa.062.i, %_ZN10aiVector3tIfEixEj.exit35.i ], [ %.sroa.062.i, %_ZN10aiVector3tIfEixEj.exit35.thread.i ]
  store float %.093.lcssa120140145.i, ptr %.0.i36.i, align 4
  %.sroa.062.i.0..sroa.062.i.0..sroa.062.i.0..sroa.062.0..sroa.062.0..sroa.062.0..i = load float, ptr %.sroa.062.i, align 4
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.4..i = load float, ptr %.sroa.5.i, align 4
  %.sroa.863.i.0..sroa.863.i.0..sroa.863.i.0..sroa.863.0..sroa.863.0..sroa.863.8..i = load float, ptr %.sroa.863.i, align 4
  %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i = load float, ptr %.sroa.067.i, align 4
  %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i = load float, ptr %.sroa.568.i, align 4
  %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i = load float, ptr %.sroa.869.i, align 4
  %.sroa.064.i.0..sroa.064.i.0..sroa.064.i.0..sroa.064.0..sroa.064.0..sroa.064.0..i = load float, ptr %.sroa.064.i, align 4
  %.sroa.565.i.0..sroa.565.i.0..sroa.565.i.0..sroa.565.0..sroa.565.0..sroa.565.4..i = load float, ptr %.sroa.565.i, align 4
  %.sroa.866.i.0..sroa.866.i.0..sroa.866.i.0..sroa.866.0..sroa.866.0..sroa.866.8..i = load float, ptr %.sroa.866.i, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1028 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1044 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1060 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1076 ; 2 uses
  %i.dm = load <4 x float>, ptr %i.di, align 4    ; 4 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.do = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.067.i.0..sroa.067.i.0..sroa.067.i.0..sroa.067.0..sroa.067.0..sroa.067.0..i, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %.sroa.568.i.0..sroa.568.i.0..sroa.568.i.0..sroa.568.0..sroa.568.0..sroa.568.4..i, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %.sroa.869.i.0..sroa.869.i.0..sroa.869.i.0..sroa.869.0..sroa.869.0..sroa.869.8..i, i64 2 ; 4 uses
  %i.dr = fmul <4 x float> %i.dn, %i.dq
  %i.ds = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.062.i.0..sroa.062.i.0..sroa.062.i.0..sroa.062.0..sroa.062.0..sroa.062.0..i, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.4..i, i64 1
  %i.dv = insertelement <4 x float> %i.du, float %.sroa.863.i.0..sroa.863.i.0..sroa.863.i.0..sroa.863.0..sroa.863.0..sroa.863.8..i, i64 2 ; 4 uses
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dv, <4 x float> %i.dr)
  %i.dx = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.064.i.0..sroa.064.i.0..sroa.064.i.0..sroa.064.0..sroa.064.0..sroa.064.0..i, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %.sroa.565.i.0..sroa.565.i.0..sroa.565.i.0..sroa.565.0..sroa.565.0..sroa.565.4..i, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %.sroa.866.i.0..sroa.866.i.0..sroa.866.i.0..sroa.866.0..sroa.866.0..sroa.866.8..i, i64 2 ; 4 uses
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ea, <4 x float> %i.dw)
  %i.ec = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.eb)
  store <4 x float> %i.ed, ptr %i.di, align 4
  %i.ee = load <4 x float>, ptr %i.dj, align 4    ; 4 uses
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eg = fmul <4 x float> %i.ef, %i.dq
  %i.eh = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.dv, <4 x float> %i.eg)
  %i.ej = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.ea, <4 x float> %i.ei)
  %i.el = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ek)
  store <4 x float> %i.em, ptr %i.dj, align 4
  %i.en = load <4 x float>, ptr %i.dk, align 4    ; 4 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ep = fmul <4 x float> %i.eo, %i.dq
  %i.eq = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.dv, <4 x float> %i.ep)
  %i.es = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.ea, <4 x float> %i.er)
  %i.eu = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.et)
  store <4 x float> %i.ev, ptr %i.dk, align 4
  %i.ew = load <4 x float>, ptr %i.dl, align 4    ; 4 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ey = fmul <4 x float> %i.ex, %i.dq
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.dv, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.ea, <4 x float> %i.fa)
  %i.fd = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fc)
  store <4 x float> %i.fe, ptr %i.dl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.863.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.866.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.067.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.568.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.i)
  br label %_ZN6Assimp3FBXL20correctRootTransformEPK7aiScene.exit

bb.ae:                                            ; preds = %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 9 uses
  %.077102.i = phi i32 [ 1, %.lr.ph.i ], [ %.1.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.078101.i = phi i32 [ 1, %.lr.ph.i ], [ %.179.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.081100.i = phi i32 [ 2, %.lr.ph.i ], [ %.182.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.08499.i = phi i32 [ 1, %.lr.ph.i ], [ %.185.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.08798.i = phi i32 [ 0, %.lr.ph.i ], [ %.188.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.09097.i = phi i32 [ 1, %.lr.ph.i ], [ %.191.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %.09396.i = phi double [ 1.000000e+00, %.lr.ph.i ], [ %.194.i, %_ZNK10aiMetadata3GetIdEEbjRT_.exit.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [1028 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 7 uses
  %i.fh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fg, ptr noundef nonnull dereferenceable(7) @.str.186) #28
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.af, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.fj = load ptr, ptr %i.cy, align 8
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %indvars.iv.i ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8
  %.not7.i.i = icmp eq i32 %i.fl, 1
  br i1 %.not7.i.i, label %bb.ag, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = load i32, ptr %i.fn, align 4
  br label %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i

_ZNK10aiMetadata3GetIiEEbjRT_.exit.i:             ; preds = %bb.ag, %bb.af, %bb.ae
  %.1.i = phi i32 [ %.077102.i, %bb.ae ], [ %i.fo, %bb.ag ], [ %.077102.i, %bb.af ] ; 2 uses
  %i.fp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fg, ptr noundef nonnull dereferenceable(11) @.str.187) #28
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ah, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i

bb.ah:                                            ; preds = %_ZNK10aiMetadata3GetIiEEbjRT_.exit.i
  %i.fr = load ptr, ptr %i.cy, align 8
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %indvars.iv.i ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8
  %.not7.i41.i = icmp eq i32 %i.ft, 1
  br i1 %.not7.i41.i, label %bb.ai, label %_ZNK10aiMetadata3GetIiEEbjRT_.exit42.i

bb.ai:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
end_hunk_0
