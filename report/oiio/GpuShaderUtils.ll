inline.NumInlined: 1939
inline.NumDeleted: 125
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine" = type { ptr }
%class.anon = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"static const\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"GPU variable name is empty.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"any( \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"bool \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"GPU array size is 0.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"](\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"] = {\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"constant constexpr static float\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"constant constexpr static int\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Sampler\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"];\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"mix(\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"lerp(\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Unknown GPU shader language.\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"(greaterThan( \00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"[0] > \00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"[0]) ? 1.0 : 0.0, \00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"[1] > \00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"[1]) ? 1.0 : 0.0, \00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"[2] > \00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"[2]) ? 1.0 : 0.0)\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"[2]) ? 1.0 : 0.0, \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"[3] > \00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"[3]) ? 1.0 : 0.0)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c".rgb.r > \00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c".x) ? 1.0 : 0.0, \00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c".rgb.g > \00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c".y) ? 1.0 : 0.0, \00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c".rgb.b > \00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c".z) ? 1.0 : 0.0, \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c".a > \00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c".w) ? 1.0 : 0.0)\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"(greaterThanEqual( \00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"[0] >= \00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"[1] >= \00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"[2] >= \00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"[3] >= \00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c".rgb.r >= \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c".rgb.g >= \00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c".rgb.b >= \00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c".a >= \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"atan(\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"atan2(\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"sign(\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c".rgb.r\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c".rgb.g\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c".rgb.b\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"bool(\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c" xbrk = 0.0041318374739483946;\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c" shift = -0.000157849851665374;\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c" m = 1. / (0.18 + shift);\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c" base2 = 1.4426950408889634;\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c" gain = 363.034608563;\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c" offs = -7.;\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c".rgb * gain + offs;\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c" = base2 * log( ( \00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c".rgb + shift ) * m );\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c".rgb.r = (\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c".rgb.r < xbrk) ? ylin.x : ylog.x;\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c".rgb.g = (\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c".rgb.g < xbrk) ? ylin.y : ylog.y;\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c".rgb.b = (\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c".rgb.b < xbrk) ? ylin.z : ylog.z;\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c" ybrk = -5.5;\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" = (\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c".rgb - offs) / gain;\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c" = pow( \00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c".rgb ) * (0.18 + shift) - shift;\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c".rgb.r < ybrk) ? xlin.x : xlog.x;\00", align 1
@.str.103 = private unnamed_addr constant [34 x i8] c".rgb.g < ybrk) ? xlin.y : xlog.y;\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c".rgb.b < ybrk) ? xlin.z : xlog.z;\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.106 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.110 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"uniform sampler\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"layout(set=\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c", binding = \00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"SamplerState\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"Unsupported by the Open Shading language (OSL) translation.\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"d<float> \00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"sampler\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"D(\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"texture(\00", align 1
@.str.125 = private unnamed_addr constant [42 x i8] c"1D textures are unsupported by OpenGL ES.\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c".Sample(\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c".sample(\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"mat3(\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c") * \00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"mul(half3x3(\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"), \00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"mul(\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c", float3x3(\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"matrix(\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"float3x3(\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"mat4(\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"mul(half4x4(\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c", float4x4(\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"float4x4(\00", align 1
@switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE = private unnamed_addr constant [10 x ptr] [ptr @.str.4, ptr @.str.110, ptr @.str.110, ptr @.str.110, ptr @.str.110, ptr @.str.5, ptr @.str.30, ptr @.str.110, ptr @.str.110, ptr @.str.5], align 8
@switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE.3 = private unnamed_addr constant [10 x i8] c"\04\03\03\03\03\05\06\03\03\05", align 8

@_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineC1EPS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineC2EPS0_
@_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev
@_ZN16OpenColorIO_v2_513GpuShaderTextC1ENS_11GpuLanguageE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN16OpenColorIO_v2_513GpuShaderTextC2ENS_11GpuLanguageE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineC2EPS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText9flushLineEv(ptr noundef nonnull align 8 dereferenceable(764) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_513GpuShaderText9flushLineEv(ptr noundef nonnull align 8 dereferenceable(764) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = shl i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !25, !alias.scope !34
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !27, !alias.scope !34
  store i8 0, ptr %i.k, align 8, !tbaa !35, !alias.scope !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36, !noalias !34 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = load ptr, ptr %i.o, align 8, !noalias !34 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37, !noalias !34 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !26, !alias.scope !34 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ab = load ptr, ptr %2, align 8, !tbaa !26
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !27
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13 unwind label %bb.j ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 6 uses
  %.not.i.i.i31 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i31, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc33 unwind label %bb.j

.noexc33:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !54
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc34 unwind label %bb.j

.noexc34:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.j, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc34, %bb.f
  %.0.i.i.i32 = phi i8 [ %i.an, %bb.f ], [ %i.ar, %.noexc34 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext %.0.i.i.i32)
          to label %.noexc36 unwind label %bb.j

.noexc36:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.j ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc36
  %i.au = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.k
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ay = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.e
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !35
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !27
  store i8 0, ptr %i.bc, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef 0, i64 noundef %i.bg, ptr noundef nonnull %i.bc, i64 noundef 0)
          to label %.noexc17 unwind label %bb.l   ; 0 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !61
  %i.bl = and i32 %i.bk, 3
  %.not.i.i.i = icmp eq i32 %i.bl, 0
  %i.bm = load i64, ptr %i.bf, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.bm
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, ptr noundef %i.bn, i64 noundef 0, i64 noundef %.0.i.i.i)
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKi:bb.a
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit76: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit74
  %i.ck = load ptr, ptr %1, align 8, !tbaa !26
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !27
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit78: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit76
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit80: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit78
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 noundef %2)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit82: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit80
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.23, i64 noundef 5)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit82
  %i.cq = icmp sgt i32 %2, 0
  br i1 %i.cq, label %.lr.ph.i85.preheader, label %"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke"

.lr.ph.i85.preheader:                             ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84
  %i.cr = zext nneg i32 %2 to i64                 ; 2 uses
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85.preheader, %.noexc92
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87, %.noexc92 ], [ 0, %.lr.ph.i85.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i86
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 noundef %i.ct)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc91:                                         ; preds = %.lr.ph.i85
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 3 uses
  %.not.i88 = icmp eq i64 %indvars.iv.next.i87, %i.cr
  br i1 %.not.i88, label %.noexc92, label %bb.x

bb.x:                                             ; preds = %.noexc91
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc92:                                         ; preds = %bb.x, %.noexc91
  %exitcond170.not = icmp eq i64 %indvars.iv.next.i87, %i.cr
  br i1 %exitcond170.not, label %"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke", label %.lr.ph.i85, !llvm.loop !224

bb.y:                                             ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cw, ptr %8, align 8, !tbaa !25, !alias.scope !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cw, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.cx, align 8, !tbaa !27, !alias.scope !225
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.cy, align 1, !tbaa !35, !alias.scope !225
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 10 uses
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull %i.cw, i64 noundef 3)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit97 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit97: ; preds = %bb.y
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit99 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit99: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit97
  %i.dc = load ptr, ptr %1, align 8, !tbaa !26
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !27
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.dc, i64 noundef %i.dd)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit99
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit103 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit103: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %2)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit105 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit105: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit103
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.23, i64 noundef 5)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit107 unwind label %bb.aa ; 0 uses

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit107: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit105
  %i.di = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cw
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit107
  %i.dk = load i64, ptr %i.cw, align 8, !tbaa !35
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.dm = icmp sgt i32 %2, 0
  br i1 %i.dm, label %.lr.ph.i111.preheader, label %"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke"

.lr.ph.i111.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.dn = zext nneg i32 %2 to i64                 ; 2 uses
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111.preheader, %.noexc118
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %.noexc118 ], [ 0, %.lr.ph.i111.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i112
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %i.dp)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc117:                                        ; preds = %.lr.ph.i111
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 3 uses
  %.not.i114 = icmp eq i64 %indvars.iv.next.i113, %i.dn
  br i1 %.not.i114, label %.noexc118, label %bb.z

bb.z:                                             ; preds = %.noexc117
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc118:                                        ; preds = %bb.z, %.noexc117
  %exitcond.not = icmp eq i64 %indvars.iv.next.i113, %i.dn
  br i1 %exitcond.not, label %"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke", label %.lr.ph.i111, !llvm.loop !224

"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke": ; preds = %.noexc118, %.noexc92, %.noexc66, %.noexc35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit58
  %i.ds = phi ptr [ %i.ch, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84 ], [ %i.bd, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit58 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.j, %.noexc35 ], [ %i.bd, %.noexc66 ], [ %i.ch, %.noexc92 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.cz, %.noexc118 ]
  %i.dt = phi ptr [ @.str.24, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit84 ], [ @.str.24, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit58 ], [ @.str.24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ @.str.22, %.noexc35 ], [ @.str.24, %.noexc66 ], [ @.str.24, %.noexc92 ], [ @.str.22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ @.str.24, %.noexc118 ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull %i.dt, i64 noundef 2)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEi.exit105, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit103, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit99, %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit97, %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.cw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.aa
  %i.dy = load i64, ptr %i.cw, align 8, !tbaa !35
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.split-lp

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit37: ; preds = %"_ZZN16OpenColorIO_v2_513GpuShaderText20declareIntArrayConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKiENK3$_0clEv.exit119.invoke", %bb.i
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText9flushLineEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
          to label %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit37
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #18
  unreachable

_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn21 = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn17.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit167, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %bb.h, %bb.d
  %.pn23 = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.h, %bb.h ], [ %.pn21, %.loopexit.split-lp ]
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_513GpuShaderText13float2KeywordB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(764) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !62
  tail call void @_ZN16OpenColorIO_v2_513getVecKeywordILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513getVecKeywordILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %switch.lookup, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke, %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = zext nneg i32 %1 to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE.3, i64 %i.d
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke: ; preds = %switch.lookup
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.37)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.j unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #19
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25, !alias.scope !234
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !234
  store i8 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !234
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36, !noalias !234 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !234 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37, !noalias !234 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !234 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.i, align 8, !tbaa !35, !alias.scope !234
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #21
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !38
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.b, %bb.b ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_513GpuShaderText11float2ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load i32, ptr %1, align 8, !tbaa !62, !noalias !235
  invoke void @_ZN16OpenColorIO_v2_513getVecKeywordILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.a)
          to label %_ZNK16OpenColorIO_v2_513GpuShaderText13float2KeywordB5cxx11Ev.exit unwind label %bb.e

_ZNK16OpenColorIO_v2_513GpuShaderText13float2KeywordB5cxx11Ev.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %5, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK16OpenColorIO_v2_513GpuShaderText13float2KeywordB5cxx11Ev.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit9 unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit9
  %i.l = load ptr, ptr %3, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11 unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11
  %i.q = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.t = load i64, ptr %i.r, align 8, !tbaa !35
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !25, !alias.scope !244
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !27, !alias.scope !244
  store i8 0, ptr %i.v, align 8, !tbaa !35, !alias.scope !244
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36, !noalias !244 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !244 ; 2 uses
  %i.ab = icmp ugt ptr %i.y, %i.aa
  %.08.i.i.i = select i1 %i.ab, ptr %i.y, ptr %i.aa ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37, !noalias !244 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !244 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_513GpuShaderText10float2DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #19
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.f = load i32, ptr %1, align 8, !tbaa !62, !noalias !245
  call void @_ZN16OpenColorIO_v2_513getVecKeywordILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27, !noalias !248
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #20
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc9 unwind label %bb.l    ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !25, !alias.scope !248
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc9
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.l, ptr %3, align 8, !tbaa !26, !alias.scope !248
  %i.s = load i64, ptr %i.m, align 8, !tbaa !35
  store i64 %i.s, ptr %i.k, align 8, !tbaa !35, !alias.scope !248
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.t = phi i64 [ %i.p, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !27, !alias.scope !248
  store ptr %i.m, ptr %i.j, align 8, !tbaa !26
  store i64 0, ptr %i.u, align 8, !tbaa !27
  store i8 0, ptr %i.m, align 8, !tbaa !35
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.w = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !251 ; 2 uses
  %i.x = sub i64 4611686018427387903, %i.t
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #20
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !26, !noalias !251
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.z, i64 noundef %i.w)
          to label %.noexc14 unwind label %bb.m   ; 6 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !25, !alias.scope !251
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

bb.j:                                             ; preds = %.noexc14
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.noexc14
  store ptr %i.ac, ptr %0, align 8, !tbaa !26, !alias.scope !251
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !35, !alias.scope !251
  %.phi.trans.insert.i11 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i12 = load i64, ptr %.phi.trans.insert.i11, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.j
  %i.ak = phi i64 [ %i.ag, %bb.j ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !27, !alias.scope !251
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !26
  store i64 0, ptr %i.al, align 8, !tbaa !27
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  %i.an = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.ar = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !35
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.k
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.m
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !35
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.ax, %bb.m ]
  %i.bc = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !35
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513getVecKeywordILi3EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %switch.lookup, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke, %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = zext nneg i32 %1 to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE.3, i64 %i.d
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke: ; preds = %switch.lookup
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.37)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.j unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #19
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25, !alias.scope !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !260
  store i8 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !260
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36, !noalias !260 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !260 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37, !noalias !260 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !260 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.i, align 8, !tbaa !35, !alias.scope !260
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #21
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !38
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.b, %bb.b ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_513GpuShaderText11float3ConstB5cxx11Efff(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(764) %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load i32, ptr %1, align 8, !tbaa !62
  call void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, float noundef %2, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = load i32, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, float noundef %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.c = load i32, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, float noundef %4, i32 noundef %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float3ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !35
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.i = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.n = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.q = load i64, ptr %i.o, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !35
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.u, %bb.g ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_:bb.a
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.h
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.g
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.y, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !35
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %.pn.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt5arrayIfLm3EE(ptr noundef nonnull align 8 dereferenceable(764) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !214
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !214
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !214
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff(ptr noundef nonnull align 8 dereferenceable(764) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, float noundef %i.a, float noundef %i.c, float noundef %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(764) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load i32, ptr %0, align 8, !tbaa !62
  call void @_ZN16OpenColorIO_v2_514getFloatStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, double noundef %2, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = load i32, ptr %0, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, double noundef %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.c = load i32, ptr %0, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, double noundef %4, i32 noundef %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(764) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !35
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.i = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.n = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.q = load i64, ptr %i.o, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !35
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.u, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.aa = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !35
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.af = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_513GpuShaderText13float4KeywordB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(764) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !62
  tail call void @_ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %switch.lookup, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke, %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = zext nneg i32 %1 to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_513getVecKeywordILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GpuLanguageE.3, i64 %i.d
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %switch.load, i64 noundef %switch.ext)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke: ; preds = %switch.lookup
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 4)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.37)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.j unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #19
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25, !alias.scope !289
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !289
  store i8 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !289
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36, !noalias !289 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !289 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37, !noalias !289 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !289 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.i, align 8, !tbaa !35, !alias.scope !289
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #21
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !38
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.b, %bb.b ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_513GpuShaderText11float4ConstB5cxx11Effff(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(764) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = load i32, ptr %1, align 8, !tbaa !62
  call void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, float noundef %2, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.b = load i32, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, float noundef %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.c = load i32, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, float noundef %4, i32 noundef %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.d = load i32, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_514getFloatStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_NS_11GpuLanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, float noundef %5, i32 noundef %i.d)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float4ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %9, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !35
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.j = load ptr, ptr %8, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !35
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.o = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.t = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.w = load i64, ptr %i.u, align 8, !tbaa !35
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.g:                                             ; preds = %bb.b
end_hunk_3
