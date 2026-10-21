Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOMaterial?download=true
inline.NumInlined: 941
inline.NumDeleted: 358
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

%struct.aiString = type { i32, [1024 x i8] }
%class.aiVector3t = type { float, float, float }
%struct.aiUVTransform = type { %class.aiVector2t, %class.aiVector2t, float }
%class.aiVector2t = type { float, float }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.aiColor3D = type { float, float, float }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.Assimp::LWO::Texture" = type { %"class.std::__cxx11::basic_string", i32, float, i32, %"class.std::__cxx11::basic_string", i32, i8, i32, i8, i32, i32, float, float, i32, i32, %"class.std::__cxx11::basic_string" }
%"struct.Assimp::LWO::Shader" = type <{ %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.Assimp::LWO::Surface" = type { %"class.std::__cxx11::basic_string", %struct.aiColor3D, i8, float, float, float, float, float, float, float, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::list.11", %"class.std::__cxx11::list", %"class.std::__cxx11::list", %"class.std::__cxx11::list", %"class.std::__cxx11::list", %"class.std::__cxx11::list", %"class.std::__cxx11::list", %"class.std::__cxx11::list", float, float, i8, float }
%"class.std::__cxx11::list.11" = type { %"class.std::__cxx11::_List_base.12" }
%"class.std::__cxx11::_List_base.12" = type { %"struct.std::__cxx11::_List_base<Assimp::LWO::Shader, std::allocator<Assimp::LWO::Shader>>::_List_impl" }
%"struct.std::__cxx11::_List_base<Assimp::LWO::Shader, std::allocator<Assimp::LWO::Shader>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<Assimp::LWO::Texture, std::allocator<Assimp::LWO::Texture>>::_List_impl" }
%"struct.std::__cxx11::_List_base<Assimp::LWO::Texture, std::allocator<Assimp::LWO::Texture>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.Assimp::IFF::SubChunkHeader" = type { i32, i16 }

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN6Assimp6Logger4warnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$_ZN6Assimp6Logger5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj = comdat any

$_ZN6Assimp3LWO7TextureD2Ev = comdat any

$_ZN6Assimp3LWO6ShaderD2Ev = comdat any

$_ZN6Assimp3LWO7SurfaceD2Ev = comdat any

$_ZN6Assimp3LWO7SurfaceaSERKS1_ = comdat any

$_ZN6Assimp6Logger4warnIJRA38_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev = comdat any

$_ZNSt7__cxx114listIN6Assimp3LWO6ShaderESaIS3_EE18_M_assign_dispatchISt20_List_const_iteratorIS3_EEEvT_S9_St12__false_type = comdat any

$_ZNSt7__cxx114listIN6Assimp3LWO6ShaderESaIS3_EE6insertISt20_List_const_iteratorIS3_EvEESt14_List_iteratorIS3_ES8_T_SB_ = comdat any

$_ZN6Assimp3LWO6ShaderC2ERKS1_ = comdat any

$_ZNSt7__cxx114listIN6Assimp3LWO7TextureESaIS3_EE18_M_assign_dispatchISt20_List_const_iteratorIS3_EEEvT_S9_St12__false_type = comdat any

$_ZNSt7__cxx114listIN6Assimp3LWO7TextureESaIS3_EE6insertISt20_List_const_iteratorIS3_EvEESt14_List_iteratorIS3_ES8_T_SB_ = comdat any

$_ZNSt7__cxx114listIN6Assimp3LWO7TextureESaIS3_EE5eraseESt20_List_const_iteratorIS3_E = comdat any

$_ZN6Assimp3LWO7TextureC2ERKS1_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN6Assimp3LWO7SurfaceC2EOS1_ = comdat any

$_ZN6Assimp3LWO7SurfaceC2ERKS1_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [51 x i8] c"LWO2: Unsupported texture mapping: FrontProjection\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"$tex.uvwsrc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"$tex.mapaxis\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"$tex.uvtrafo\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"LWO2: Setting up non-UV mapping\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"LWO2: Clip index is out of bounds\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"$texture.png\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"LWO2: Clip type is not supported\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"$tex.flags\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"LWOB: Empty file name\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"$tex.file\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"$tex.blend\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"LWO2: Unsupported texture blend mode: alpha or displacement\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"$tex.op\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"$tex.mapping\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"$tex.mapmodeu\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"$tex.mapmodev\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"$mat.twosided\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"$mat.refracti\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"$mat.bumpscaling\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"$mat.shinpercent\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"$mat.shininess\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"$clr.specular\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"$clr.emissive\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"$mat.opacity\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"$mat.blend\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"AH_CelShader\00", align 1
@.str.29 = private unnamed_addr constant [67 x i8] c"LWO2: Mapping LW_SuperCelShader/AH_CelShader to aiShadingMode_Toon\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"LW_RealFresnel\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"LWO2: Mapping LW_RealFresnel/LW_FastFresnel to aiShadingMode_Fresnel\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"LWO2: Unknown surface shader: \00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"$mat.shadingm\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"$clr.diffuse\00", align 1
@.str.36 = private unnamed_addr constant [68 x i8] c"LWO: Channel mismatch, would need to duplicate surface [design bug]\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"LWO: Maximum number of UV channels for this mesh reached. Skipping channel '\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.39 = private unnamed_addr constant [87 x i8] c"LWO: Maximum number of vertex color channels for this mesh reached. Skipping channel '\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"LWO2: Invalid SURF.BLOCK chunk length\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.41 = private unnamed_addr constant [54 x i8] c"LWO2: Found procedural texture, this is not supported\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"LWO2: Found gradient texture, this is not supported\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"LWO2: Ill-formed SURF.BLOK ordinal string\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"LWO2: Invalid texture header chunk length\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"LWO2: Encountered unknown texture type\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"LWO2: Invalid shader header chunk length\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"LWO3: cannot read length; LoadNodalBlocks\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"LWO3: cannot read length; LoadNodes\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"LWO3: cannot read length; LoadNodeTag\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"LWO3: INVALID LENGTH; LoadNodeData\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"LWO3: cannot read length;\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"Specular\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Transparency\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"Glossiness\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Color Highlight\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Refraction Index\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Bump Height\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"vparam3\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"LWO2: Unable to find source surface: \00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"LWO2: Invalid surface chunk length\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"LWO: COLR chunk is too small\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"LWO: DIFF chunk is too small\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"LWO: SPEC chunk is too small\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"LWO: TRAN chunk is too small\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"LWO: ADTR chunk is too small\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"LWO: LINE chunk is too small\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"LWO: GLOS chunk is too small\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"LWO: BUMP chunk is too small\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"LWO: CLRH chunk is too small\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"LWO: RIND chunk is too small\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"LWO: SIDE chunk is too small\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"LWO: SMAN chunk is too small\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"LWO: VCOL chunk is too small\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"LWO: BLOK chunk is too small\00", align 1
@.str.82 = private unnamed_addr constant [40 x i8] c"LWO2: Found an unsupported surface BLOK\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"LWO3: Unable to find source surface: \00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"LWO3: cannot read length; LoadLWO3Surface\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"LWO2: Unsupported texture map mode: RESET\00", align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.88 = private unnamed_addr constant [41 x i8] c"LWO: Invalid file, string is is too long\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp11LWOImporter14HandleTexturesEP10aiMaterialRKNSt7__cxx114listINS_3LWO7TextureESaIS6_EEE13aiTextureType(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %4 = alloca %struct.aiString, align 4           ; 10 uses
  %5 = alloca %class.aiVector3t, align 8          ; 5 uses
  %6 = alloca %struct.aiUVTransform, align 16     ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %.sroa.0105.0120 = load ptr, ptr %2, align 8    ; 2 uses
  %.not121 = icmp eq ptr %.sroa.0105.0120, %2
  br i1 %.not121, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge127:                                   ; preds = %bb.as, %bb.a
  %.064.lcssa = phi i1 [ false, %bb.a ], [ %.165, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i1 %.064.lcssa

bb.b:                                             ; preds = %.lr.ph126, %bb.as
  %.sroa.0105.0124 = phi ptr [ %.sroa.0105.0120, %.lr.ph126 ], [ %.sroa.0105.0, %bb.as ] ; 14 uses
  %.064123 = phi i1 [ false, %.lr.ph126 ], [ %.165, %bb.as ]
  %.066122 = phi i32 [ 0, %.lr.ph126 ], [ %.268, %bb.as ] ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 100
  %i.q = load i8, ptr %i.p, align 4, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 108
  %i.t = load i8, ptr %i.s, align 4, !range !7
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond74 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond74, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 112
  %i.w = load i32, ptr %i.v, align 8
  switch i32 %i.w, label %bb.k [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.x = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull @.str)
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 96
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.as, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.z, ptr %i.b, align 4
  %i.ab = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %.066122, i32 noundef 4) ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %or.cond.ph = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.062.ph = phi i32 [ 5, %bb.h ], [ 3, %bb.g ], [ 1, %bb.f ], [ 2, %bb.e ], [ 4, %bb.d ], [ 5, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 116
  %i.ad = load i32, ptr %i.ac, align 4
  switch i32 %i.ad, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.sink = phi float [ 1.000000e+00, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.ae = phi <2 x float> [ zeroinitializer, %bb.m ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.l ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.k ]
  store <2 x float> %i.ae, ptr %5, align 8
  store float %.sink, ptr %i.e, align 8
  %i.af = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %.066122, i32 noundef 1) ; 0 uses
  br i1 %or.cond.ph, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store float 0.000000e+00, ptr %i.f, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 120
  %i.ah = load <2 x float>, ptr %i.ag, align 8
  %8 = shufflevector <2 x float> zeroinitializer, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %8, ptr %6, align 16
  %i.ai = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, i32 noundef 20, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %.066122, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aj = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %.062113 = phi i32 [ %.062.ph, %bb.p ], [ 0, %bb.j ]
  %i.ak = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i8, ptr %i.h, align 2, !range !7, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 48
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  store i32 %i.aq, ptr %i.b, align 4
  %i.ar = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not114117 = icmp eq ptr %i.ar, %i.ao
  br i1 %.not114117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.as = icmp eq ptr %spec.select, %i.ao
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.t

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.087.0119 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ar, %bb.s ] ; 3 uses
  %.sroa.090.0118 = phi ptr [ %spec.select, %.lr.ph ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.087.0119, i64 44
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, %i.aq
  %spec.select = select i1 %i.av, ptr %.sroa.087.0119, ptr %.sroa.090.0118 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.087.0119, i64 56 ; 2 uses
  %.not114 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %._crit_edge
  %i.ax = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull @.str.5)
  store i32 0, ptr %i.b, align 4
  store i32 12, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  store i8 0, ptr %i.n, align 4
  br label %bb.af

bb.t:                                             ; preds = %._crit_edge
  %i.ay = load i32, ptr %spec.select, align 8
  %i.az = icmp eq i32 %i.ay, 3
  br i1 %i.az, label %.critedge, label %bb.u

.critedge:                                        ; preds = %bb.t
  %i.ba = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull @.str.7)
  br label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  call void @_ZN6Assimp11LWOImporter17AdjustTexturePathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 4 uses
  %i.be = icmp ugt i64 %i.bd, 1023
  br i1 %i.be, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit75, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = trunc nuw nsw i64 %i.bd to i32
  store i32 %i.bf, ptr %4, align 4
  %i.bg = load ptr, ptr %i.bb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 1 %i.bg, i64 %i.bd, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bd
  store i8 0, ptr %i.bh, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit75

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit75: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.bj = load i8, ptr %i.bi, align 8, !range !7, !noundef !8
  %spec.store.select = zext nneg i8 %i.bj to i32
  store i32 %spec.store.select, ptr %i.c, align 4
  %i.bk = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %.066122, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.af

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.i, ptr %7, align 8
  %i.bl = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0105.0124, i64 24
  %i.bn = load i64, ptr %i.bm, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.bn, ptr %i.a, align 8
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i77, label %._crit_edge.i.i76

.noexc.i77:                                       ; preds = %bb.w
  %i.bp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bp, ptr %7, align 8
  %i.bq = load i64, ptr %i.a, align 8
  store i64 %i.bq, ptr %i.i, align 8
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %.noexc.i77, %bb.w
  %i.br = phi ptr [ %i.bp, %.noexc.i77 ], [ %i.i, %bb.w ] ; 2 uses
  switch i64 %i.bn, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i76
  %i.bs = load i8, ptr %i.bl, align 1
  store i8 %i.bs, ptr %i.br, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.y:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.x, %bb.y
  %i.bt = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.bt, ptr %i.j, align 8
  %i.bu = load ptr, ptr %7, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bw = load i64, ptr %i.j, align 8
  %.not70.not = icmp eq i64 %i.bw, 0              ; 2 uses
  br i1 %.not70.not, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull @.str.9)
          to label %._ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81_crit_edge unwind label %bb.ab

._ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81_crit_edge: ; preds = %bb.aa
  %.pre = load ptr, ptr %7, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %7, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.i
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ab
  %i.cb = load i64, ptr %i.i, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  resume { ptr, i32 } %i.by

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6Assimp11LWOImporter17AdjustTexturePathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load i64, ptr %i.j, align 8             ; 4 uses
  %i.ce = icmp ugt i64 %i.cd, 1023
  %.pre129 = load ptr, ptr %7, align 8            ; 3 uses
  br i1 %i.ce, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  store i32 %i.cf, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 1 %.pre129, i64 %i.cd, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cd
  store i8 0, ptr %i.cg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81: ; preds = %._ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81_crit_edge, %bb.ae, %bb.ad
  %i.ch = phi ptr [ %.pre, %._ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81_crit_edge ], [ %.pre129, %bb.ae ], [ %.pre129, %bb.ad ] ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.i
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81
  %i.cj = load i64, ptr %i.i, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.not70.not, label %bb.as, label %bb.af

end_hunk_0
