Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0
@.str.153 = private unnamed_addr constant [12 x i8] c"alphaCutoff\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"OPAQUE\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"alphaMode\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"doubleSided\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"diffuseFactor\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"specularFactor\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"glossinessFactor\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"diffuseTexture\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"specularGlossinessTexture\00", align 1
@.str.162 = private unnamed_addr constant [36 x i8] c"KHR_materials_pbrSpecularGlossiness\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"KHR_materials_unlit\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"specularColorFactor\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"specularTexture\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"specularColorTexture\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"KHR_materials_specular\00", align 1
@.str.168 = private unnamed_addr constant [17 x i8] c"sheenColorFactor\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"sheenRoughnessFactor\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"sheenColorTexture\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"sheenRoughnessTexture\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"KHR_materials_sheen\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"clearcoatFactor\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"clearcoatRoughnessFactor\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"clearcoatTexture\00", align 1
@.str.176 = private unnamed_addr constant [26 x i8] c"clearcoatRoughnessTexture\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"clearcoatNormalTexture\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"KHR_materials_clearcoat\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"transmissionFactor\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"transmissionTexture\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"KHR_materials_transmission\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"thicknessFactor\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"thicknessTexture\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"attenuationDistance\00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"attenuationColor\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"KHR_materials_volume\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"KHR_materials_ior\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"emissiveStrength\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"KHR_materials_emissive_strength\00", align 1
@.str.191 = private unnamed_addr constant [19 x i8] c"anisotropyStrength\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"anisotropyRotation\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"anisotropyTexture\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"KHR_materials_anisotropy\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"texCoord\00", align 1
@_ZTVN5glTF28LazyDictINS_4MeshEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_4MeshEEE, ptr @_ZN5glTF28LazyDictINS_4MeshEED2Ev, ptr @_ZN5glTF28LazyDictINS_4MeshEED0Ev, ptr @_ZN5glTF28LazyDictINS_4MeshEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_4MeshEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_4MeshEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_4MeshEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_4MeshEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_4MeshEEE = linkonce_odr hidden constant [29 x i8] c"N5glTF28LazyDictINS_4MeshEEE\00", comdat, align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"FB_ngon_encoding\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"TANGENT\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"TEXCOORD\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"JOINTS\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"WEIGHTS\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"primitives\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"targetNames\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@_ZTVN5glTF28LazyDictINS_4NodeEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_4NodeEEE, ptr @_ZN5glTF28LazyDictINS_4NodeEED2Ev, ptr @_ZN5glTF28LazyDictINS_4NodeEED0Ev, ptr @_ZN5glTF28LazyDictINS_4NodeEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_4NodeEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_4NodeEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_4NodeEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_4NodeEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_4NodeEEE = linkonce_odr hidden constant [29 x i8] c"N5glTF28LazyDictINS_4NodeEEE\00", comdat, align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"skeletons\00", align 1
@_ZTVN5glTF28LazyDictINS_7SamplerEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_7SamplerEEE, ptr @_ZN5glTF28LazyDictINS_7SamplerEED2Ev, ptr @_ZN5glTF28LazyDictINS_7SamplerEED0Ev, ptr @_ZN5glTF28LazyDictINS_7SamplerEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_7SamplerEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_7SamplerEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_7SamplerEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_7SamplerEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_7SamplerEEE = linkonce_odr hidden constant [32 x i8] c"N5glTF28LazyDictINS_7SamplerEEE\00", comdat, align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"wrapS\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"wrapT\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"magFilter\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"minFilter\00", align 1
@_ZTVN5glTF28LazyDictINS_5SceneEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_5SceneEEE, ptr @_ZN5glTF28LazyDictINS_5SceneEED2Ev, ptr @_ZN5glTF28LazyDictINS_5SceneEED0Ev, ptr @_ZN5glTF28LazyDictINS_5SceneEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_5SceneEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_5SceneEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_5SceneEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_5SceneEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_5SceneEEE = linkonce_odr hidden constant [30 x i8] c"N5glTF28LazyDictINS_5SceneEEE\00", comdat, align 1
@_ZTVN5glTF28LazyDictINS_4SkinEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_4SkinEEE, ptr @_ZN5glTF28LazyDictINS_4SkinEED2Ev, ptr @_ZN5glTF28LazyDictINS_4SkinEED0Ev, ptr @_ZN5glTF28LazyDictINS_4SkinEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_4SkinEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_4SkinEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_4SkinEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_4SkinEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_4SkinEEE = linkonce_odr hidden constant [29 x i8] c"N5glTF28LazyDictINS_4SkinEEE\00", comdat, align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"joints\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"bindShapeMatrix\00", align 1
@.str.220 = private unnamed_addr constant [20 x i8] c"inverseBindMatrices\00", align 1
@_ZTVN5glTF28LazyDictINS_7TextureEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5glTF28LazyDictINS_7TextureEEE, ptr @_ZN5glTF28LazyDictINS_7TextureEED2Ev, ptr @_ZN5glTF28LazyDictINS_7TextureEED0Ev, ptr @_ZN5glTF28LazyDictINS_7TextureEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE, ptr @_ZN5glTF28LazyDictINS_7TextureEE18DetachFromDocumentEv, ptr @_ZN5glTF28LazyDictINS_7TextureEE12WriteObjectsERNS_11AssetWriterE] }, comdat, align 8
@_ZTIN5glTF28LazyDictINS_7TextureEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28LazyDictINS_7TextureEEE, ptr @_ZTIN5glTF212LazyDictBaseE }, comdat, align 8
@_ZTSN5glTF28LazyDictINS_7TextureEEE = linkonce_odr hidden constant [32 x i8] c"N5glTF28LazyDictINS_7TextureEEE\00", comdat, align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"binary_glTF\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"asset\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"KHR_texture_basisu\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"extensionsUsed\00", align 1
@.str.230 = private unnamed_addr constant [19 x i8] c"extensionsRequired\00", align 1
@.str.232 = private unnamed_addr constant [29 x i8] c"Could not open output file: \00", align 1
@_ZTI17DeadlyExportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyExportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTS17DeadlyExportError = linkonce_odr constant [20 x i8] c"17DeadlyExportError\00", comdat, align 1
@.str.233 = private unnamed_addr constant [28 x i8] c"Failed to write scene data!\00", align 1
@.str.234 = private unnamed_addr constant [35 x i8] c"Failed to write scene data header!\00", align 1
@.str.235 = private unnamed_addr constant [36 x i8] c"Failed to write scene data padding!\00", align 1
@.str.236 = private unnamed_addr constant [34 x i8] c"Failed to write body data header!\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"Failed to write body data!\00", align 1
@.str.238 = private unnamed_addr constant [35 x i8] c"Failed to write body data padding!\00", align 1
@.str.240 = private unnamed_addr constant [28 x i8] c"Failed to write the header!\00", align 1
@_ZTV17DeadlyExportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyExportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyExportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEixIS5_EERS6_RKNS0_IS2_T_EEE6buffer = linkonce_odr hidden thread_local global [16 x i8] zeroinitializer, comdat, align 8
@_ZZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcjE9hexDigits = linkonce_odr hidden local_unnamed_addr constant [16 x i8] c"0123456789ABCDEF", comdat, align 16
@_ZZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcjE6escape = linkonce_odr hidden local_unnamed_addr constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"uuuuuuuubtnufruuuuuuuuuuuuuuuuuu\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\", [163 x i8] zeroinitializer }>, comdat, align 16
@_ZZN9rapidjson8internal21GetCachedPowerByIndexEmE15kCachedPowers_F = linkonce_odr hidden local_unnamed_addr constant [87 x i64] [i64 -391859759250406776, i64 -4994806998408183946, i64 -8424269937281487754, i64 -3512093806901185046, i64 -7319562523736982739, i64 -1865951482774665761, i64 -6093090917745768758, i64 -38366372719436721, i64 -4731433901725329908, i64 -8228041688891786180, i64 -3219690930897053053, i64 -7101705404292871755, i64 -1541319077368263733, i64 -5851220927660403859, i64 -9062348037703676329, i64 -4462904269766699465, i64 -8027971522334779313, i64 -2921563150702462265, i64 -6879582898840692748, i64 -1210330751515841307, i64 -5604615407819967858, i64 -8878612607581929669, i64 -4189117143640191558, i64 -7823984217374209642, i64 -2617598379430861436, i64 -6653111496142234890, i64 -872862063775190746, i64 -5353181642124984136, i64 -8691279853972075893, i64 -3909969587797413805, i64 -7616003081050118571, i64 -2307682335666372931, i64 -6422206049907525489, i64 -528786136287117932, i64 -5096825099203863601, i64 -8500279345513818773, i64 -3625356651333078602, i64 -7403949918844649556, i64 -1991698500497491194, i64 -6186779746782440749, i64 -177973607073265138, i64 -4835449396872013077, i64 -8305539271883716404, i64 -3335171328526686932, i64 -7187745005283311616, i64 -1669528073709551616, i64 -5946744073709551616, i64 -9133518327554766460, i64 -4568956265895094861, i64 -8106986416796705680, i64 -3039304518611664792, i64 -6967307053960650171, i64 -1341049929119499481, i64 -5702008784649933400, i64 -8951176327949752869, i64 -4297245513042813542, i64 -7904546130479028392, i64 -2737644984756826646, i64 -6742553186979055798, i64 -1006140569036166267, i64 -5452481866653427593, i64 -8765264286586255934, i64 -4020214983419339459, i64 -7698142301602209613, i64 -2430079312244744221, i64 -6513398903789220827, i64 -664674077828931748, i64 -5198069505264599346, i64 -8575712306248138270, i64 -3737760522056206171, i64 -7487697328667536417, i64 -2116491865831296966, i64 -6279758049420528746, i64 -316522074587315140, i64 -4938676049251384304, i64 -8382449121214030822, i64 -3449775934753242068, i64 -7273132090830278359, i64 -1796764746270372707, i64 -6041542782089432023, i64 -9204148869281624187, i64 -4674203974643163859, i64 -8185402070463610993, i64 -3156152948152813503, i64 -7054365918152680535, i64 -1470777745987373095, i64 -5798663540173640085], comdat, align 16
@_ZZN9rapidjson8internal21GetCachedPowerByIndexEmE15kCachedPowers_E = linkonce_odr hidden local_unnamed_addr constant [87 x i16] [i16 -1220, i16 -1193, i16 -1166, i16 -1140, i16 -1113, i16 -1087, i16 -1060, i16 -1034, i16 -1007, i16 -980, i16 -954, i16 -927, i16 -901, i16 -874, i16 -847, i16 -821, i16 -794, i16 -768, i16 -741, i16 -715, i16 -688, i16 -661, i16 -635, i16 -608, i16 -582, i16 -555, i16 -529, i16 -502, i16 -475, i16 -449, i16 -422, i16 -396, i16 -369, i16 -343, i16 -316, i16 -289, i16 -263, i16 -236, i16 -210, i16 -183, i16 -157, i16 -130, i16 -103, i16 -77, i16 -50, i16 -24, i16 3, i16 30, i16 56, i16 83, i16 109, i16 136, i16 162, i16 189, i16 216, i16 242, i16 269, i16 295, i16 322, i16 348, i16 375, i16 402, i16 428, i16 455, i16 481, i16 508, i16 534, i16 561, i16 588, i16 614, i16 641, i16 667, i16 694, i16 720, i16 747, i16 774, i16 800, i16 827, i16 853, i16 880, i16 907, i16 933, i16 960, i16 986, i16 1013, i16 1039, i16 1066], comdat, align 16
@_ZZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_E6kPow10 = linkonce_odr hidden local_unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut = linkonce_odr hidden local_unnamed_addr constant [200 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899", comdat, align 16
@.str.242 = private unnamed_addr constant [30 x i8] c"Failed to write binary file: \00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.244 = private unnamed_addr constant [8 x i8] c"imgdata\00", align 1
@_ZTVN5glTF210BufferViewE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF210BufferViewE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF26ObjectD2Ev, ptr @_ZN5glTF210BufferViewD0Ev] }, comdat, align 8
@_ZTIN5glTF210BufferViewE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF210BufferViewE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF210BufferViewE = linkonce_odr hidden constant [21 x i8] c"N5glTF210BufferViewE\00", comdat, align 1
@_ZTVSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [85 x i8] c"St19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIA_hE = linkonce_odr constant [24 x i8] c"St14default_deleteIA_hE\00", comdat, align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"accessor\00", align 1
@_ZTVN5glTF28AccessorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF28AccessorE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF28AccessorD2Ev, ptr @_ZN5glTF28AccessorD0Ev] }, comdat, align 8
@_ZTIN5glTF28AccessorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28AccessorE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF28AccessorE = linkonce_odr hidden constant [18 x i8] c"N5glTF28AccessorE\00", comdat, align 1
@.str.247 = private unnamed_addr constant [34 x i8] c"GLTF: Unsupported Component Type \00", align 1
@.str.248 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.249 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.250 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.251 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [66 x i8] c"St15_Sp_counted_ptrIPN5glTF25AssetELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5glTF27SamplerE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF27SamplerE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF26ObjectD2Ev, ptr @_ZN5glTF27SamplerD0Ev] }, comdat, align 8
@_ZTIN5glTF27SamplerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF27SamplerE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF27SamplerE = linkonce_odr hidden constant [17 x i8] c"N5glTF27SamplerE\00", comdat, align 1
@_ZTVN5glTF27TextureE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF27TextureE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF26ObjectD2Ev, ptr @_ZN5glTF27TextureD0Ev] }, comdat, align 8
@_ZTIN5glTF27TextureE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF27TextureE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF27TextureE = linkonce_odr hidden constant [17 x i8] c"N5glTF27TextureE\00", comdat, align 1
@_ZTVN5glTF25ImageE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF25ImageE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF25ImageD2Ev, ptr @_ZN5glTF25ImageD0Ev] }, comdat, align 8
@_ZTIN5glTF25ImageE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF25ImageE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF25ImageE = linkonce_odr hidden constant [15 x i8] c"N5glTF25ImageE\00", comdat, align 1
@_ZTVN5glTF28MaterialE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF28MaterialE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF28MaterialD2Ev, ptr @_ZN5glTF28MaterialD0Ev] }, comdat, align 8
@_ZTIN5glTF28MaterialE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF28MaterialE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF28MaterialE = linkonce_odr hidden constant [18 x i8] c"N5glTF28MaterialE\00", comdat, align 1
@_ZTVN5glTF24SkinE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF24SkinE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF24SkinD2Ev, ptr @_ZN5glTF24SkinD0Ev] }, comdat, align 8
@_ZTIN5glTF24SkinE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF24SkinE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF24SkinE = linkonce_odr hidden constant [14 x i8] c"N5glTF24SkinE\00", comdat, align 1
@_ZTVN5glTF24MeshE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF24MeshE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF24MeshD2Ev, ptr @_ZN5glTF24MeshD0Ev] }, comdat, align 8
@_ZTIN5glTF24MeshE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF24MeshE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF24MeshE = linkonce_odr hidden constant [14 x i8] c"N5glTF24MeshE\00", comdat, align 1
@.str.255 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"GLTF: Object with id \22\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"\22 is not found\00", align 1
@_ZTVN5glTF24NodeE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF24NodeE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF24NodeD2Ev, ptr @_ZN5glTF24NodeD0Ev] }, comdat, align 8
@_ZTIN5glTF24NodeE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF24NodeE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF24NodeE = linkonce_odr hidden constant [14 x i8] c"N5glTF24NodeE\00", comdat, align 1
@_ZTVN5glTF25SceneE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF25SceneE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF25SceneD2Ev, ptr @_ZN5glTF25SceneD0Ev] }, comdat, align 8
@_ZTIN5glTF25SceneE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF25SceneE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF25SceneE = linkonce_odr hidden constant [15 x i8] c"N5glTF25SceneE\00", comdat, align 1
@_ZTVN5glTF29AnimationE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF29AnimationE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF29AnimationD2Ev, ptr @_ZN5glTF29AnimationD0Ev] }, comdat, align 8
@_ZTIN5glTF29AnimationE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF29AnimationE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF29AnimationE = linkonce_odr hidden constant [19 x i8] c"N5glTF29AnimationE\00", comdat, align 1
@switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm = private unnamed_addr constant [7 x i8] [i8 1, i8 1, i8 2, i8 2, i8 poison, i8 4, i8 4], align 4

@_ZN6Assimp13glTF2ExporterC1EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb
@_ZN6Assimp13glTF2ExporterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp13glTF2ExporterD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF26BufferD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5glTF26BufferD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF26BufferD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5glTF26BufferE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %.sroa.05.08 = load ptr, ptr %i.a, align 8      ; 2 uses
  %.not9 = icmp eq ptr %.sroa.05.08, %i.a
  br i1 %.not9, label %_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.b = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #32
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !38

_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a, %._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !0
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !0
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIPN5glTF26Buffer14SEncodedRegionESaIS4_EED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5glTF26ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #31
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.sroa.05.010 = phi ptr [ %.sroa.05.0, %bb.k ], [ %.sroa.05.08, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5glTF26Buffer14SEncodedRegionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #32
  br label %_ZN5glTF26Buffer14SEncodedRegionD2Ev.exit

_ZN5glTF26Buffer14SEncodedRegionD2Ev.exit:        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 64) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN5glTF26Buffer14SEncodedRegionD2Ev.exit, %.lr.ph
  %.sroa.05.0 = load ptr, ptr %.sroa.05.010, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp16ExportSceneGLTF2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Assimp::glTF2Exporter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  call void @_ZN6Assimp13glTF2ExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ExportSceneGLB2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.Assimp::glTF2Exporter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  call void @_ZN6Assimp13glTF2ExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb(ptr noundef nonnull align 8 dereferenceable(124) initializes((0, 32), (40, 44), (48, 56)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 11 uses
  %7 = alloca %"class.glTF2::AssetWriter", align 8 ; 12 uses
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(3624) ptr @_Znwm(i64 noundef 3624) #33
          to label %bb.b unwind label %bb.f       ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5glTF25AssetC2EPN6Assimp8IOSystemEPN9rapidjson36IGenericRemoteSchemaDocumentProviderINS4_21GenericSchemaDocumentINS4_12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEESB_EEEE(ptr noundef nonnull align 8 dereferenceable(3624) %i.k, ptr noundef %2, ptr noundef null)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5glTF25AssetEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.k)
          to label %_ZNSt10shared_ptrIN5glTF25AssetEEC2IS1_vEEPT_.exit unwind label %bb.f

_ZNSt10shared_ptrIN5glTF25AssetEEC2IS1_vEEPT_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 37
  store i8 1, ptr %i.o, align 1
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = invoke noundef float @_ZNK6Assimp16ExportProperties16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(240) %i.p, ptr noundef nonnull @.str, float noundef f0x3C23D70A)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN5glTF25AssetEEC2IS1_vEEPT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.q, ptr %i.r, align 8
  br i1 %5, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.j, align 8
  invoke void @_ZN5glTF25Asset11SetAsBinaryEv(ptr noundef nonnull align 8 dereferenceable(3624) %i.s)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 3624) #32
  br label %bb.aq

bb.h:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.e, %_ZNSt10shared_ptrIN5glTF25AssetEEC2IS1_vEEPT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6Assimp13glTF2Exporter14ExportMetadataEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6Assimp13glTF2Exporter15ExportMaterialsEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef i32 @_ZN6Assimp13glTF2Exporter19ExportNodeHierarchyEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull %i.y)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN6Assimp13glTF2Exporter12ExportMeshesEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp13glTF2Exporter11MergeMeshesEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp13glTF2Exporter11ExportSceneEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.p unwind label %bb.h

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6Assimp13glTF2Exporter16ExportAnimationsEv(ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = invoke noundef zeroext i1 @_ZNK6Assimp16ExportProperties19HasPropertyCallbackEPKc(ptr noundef nonnull align 8 dereferenceable(240) %i.aa, ptr noundef nonnull @.str.1)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q
  br i1 %i.ab, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ac = load ptr, ptr %i.d, align 8
  invoke void @_ZNK6Assimp16ExportProperties19GetPropertyCallbackEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %6, ptr noundef nonnull align 8 dereferenceable(240) %i.ac, ptr noundef nonnull @.str.1)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %bb.aa, !inline_history !39

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ad

bb.z:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit23

bb.aa:                                            ; preds = %bb.v, %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.ad, align 8            ; 2 uses
end_hunk_0
