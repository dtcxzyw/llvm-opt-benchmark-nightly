inline.NumInlined: 331
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Assimp::Blender::PointP2T, std::allocator<Assimp::Blender::PointP2T>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::Blender::PointP2T, std::allocator<Assimp::Blender::PointP2T>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::Blender::PointP2T, std::allocator<Assimp::Blender::PointP2T>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::Blender::PointP2T, std::allocator<Assimp::Blender::PointP2T>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.Assimp::Blender::PlaneP2T" = type { %class.aiVector3t, %class.aiVector3t }
%class.aiVector3t = type { float, float, float }
%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl" }
%"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl" = type { %"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.p2t::CDT" = type { ptr, ptr }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl" }
%"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl" = type { %"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.aiMatrix3x3t = type { float, float, float, float, float, float, float, float, float }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.24 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.24 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EED2Ev = comdat any

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

$_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA118_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA118_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN17DeadlyImportErrorC2IJPKcRA47_S1_EEEDpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA47_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA47_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIPN3p2t5PointESaIS2_EE17_M_default_appendEm = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [17 x i8] c"BLEND_TESS_P2T: \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Expected more than 4 vertices for tessellation\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"Point returned by poly2tri was probably not one of ours. This indicates we need a new way to store vertex information\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6Assimp21BlenderTessellatorP2TC1ERNS_21BlenderBMeshConverterE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp21BlenderTessellatorP2TC2ERNS_21BlenderBMeshConverterE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6Assimp12LogFunctionsINS_21BlenderTessellatorP2TEE6PrefixEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp21BlenderTessellatorP2TC2ERNS_21BlenderBMeshConverterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21BlenderTessellatorP2T10TessellateEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 14 uses
  %5 = alloca %"struct.Assimp::Blender::PlaneP2T", align 4 ; 9 uses
  %6 = alloca %class.aiMatrix4x4t, align 8        ; 17 uses
  %7 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %8 = alloca %"class.p2t::CDT", align 8          ; 8 uses
  %9 = alloca %"class.std::vector.11", align 8    ; 9 uses
  %i.b = icmp slt i32 %2, 5
  br i1 %i.b, label %bb.b, label %_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA47_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  br label %common.resume

_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  invoke void @_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.f)
          to label %.lr.ph.i unwind label %bb.o

.lr.ph.i:                                         ; preds = %_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %3, align 8
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load ptr, ptr %4, align 8
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %indvars.iv.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load float, ptr %i.p, align 8
  %i.r = load <2 x float>, ptr %i.o, align 8
  store <2 x float> %i.r, ptr %i.n, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %i.q, ptr %i.s, align 4
  %i.t = load i32, ptr %i.h, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i32 -2081580349, ptr %i.v, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %exitcond.not.i, label %_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit, label %.lr.ph.i, !llvm.loop !3

_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"struct.Assimp::Blender::PlaneP2T") align 4 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load <2 x float>, ptr %i.w, align 4, !noalias !5 ; 6 uses
  %i.y = extractelement <2 x float> %i.x, i64 1   ; 4 uses
  %i.z = extractelement <2 x float> %i.x, i64 0   ; 3 uses
  %i.aa = fmul float %i.y, 0.000000e+00
  %i.ab = fadd float %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !noalias !5 ; 6 uses
  %i.ae = call noundef float @llvm.fmuladd.f32(float %i.ad, float 0.000000e+00, float %i.ab)
  %i.af = call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fcmp ogt float %i.af, 9.990000e-01
  %.sroa.032.0.i = select i1 %i.ag, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %.sroa.032.4.vec.extract44.i = extractelement <2 x float> %.sroa.032.0.i, i64 1 ; 2 uses
  %i.ah = fneg float %.sroa.032.4.vec.extract44.i
  %.sroa.032.0.vec.extract37.i = extractelement <2 x float> %.sroa.032.0.i, i64 0
  %i.ai = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ad, i64 0
  %i.ak = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ah, i64 0
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ad, i64 1
  %i.an = shufflevector <2 x float> %i.x, <2 x float> %.sroa.032.0.i, <2 x i32> <i32 1, i32 2>
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.an, <2 x float> %i.al) ; 5 uses
  %i.ap = fneg float %.sroa.032.0.vec.extract37.i
  %i.aq = fmul float %i.y, %i.ap
  %i.ar = call float @llvm.fmuladd.f32(float %i.z, float %.sroa.032.4.vec.extract44.i, float %i.aq) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ao, %i.ao
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au) ; 2 uses
  %i.aw = fcmp oeq float %i.av, 0.000000e+00
  br i1 %i.aw, label %_ZN10aiVector3tIfE9NormalizeEv.exit.i, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.av)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ao, %i.az
  %i.bb = fmul float %i.ar, %i.ax
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit.i

_ZN10aiVector3tIfE9NormalizeEv.exit.i:            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit
  %.sroa.11.0.i = phi float [ %i.ar, %_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit ], [ %i.bb, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 3 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.ao, %_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE.exit ], [ %i.ba, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 5 uses
  %.sroa.0.4.vec.extract27.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.bc = fneg float %i.y
  %.sroa.0.0.vec.extract22.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %10 = fneg float %i.ad
  %11 = fneg float %i.z
  %12 = fmul float %.sroa.0.4.vec.extract27.i, %11
  %13 = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract22.i, float %i.y, float %12)
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, i8 0, i64 12, i1 false), !alias.scope !5
  store float 1.000000e+00, ptr %i.bh, align 4, !alias.scope !5
  %14 = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %.sroa.11.0.i, i64 0
  %16 = insertelement <2 x float> poison, float %i.bc, i64 0
  %17 = insertelement <2 x float> %16, float %10, i64 1
  %i.bj = fmul <2 x float> %15, %17
  %18 = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %19 = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bk = insertelement <2 x float> %19, float %.sroa.11.0.i, i64 1
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.bk, <2 x float> %i.bj)
  store <2 x float> %i.bl, ptr %6, align 8, !alias.scope !5
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %13, ptr %20, align 8, !alias.scope !5
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.bm, align 8, !alias.scope !5
  store float %.sroa.11.0.i, ptr %i.be, align 8, !alias.scope !5
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x float> %i.x, ptr %i.bn, align 8, !alias.scope !5
  store float %i.ad, ptr %i.bf, align 8, !alias.scope !5
  %i.bo = load float, ptr %5, align 4, !noalias !5
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store float %i.bo, ptr %i.bp, align 4, !alias.scope !5
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.br = load float, ptr %i.bq, align 4, !noalias !5
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.br, ptr %i.bs, align 4, !alias.scope !5
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !noalias !5
  store float %i.bu, ptr %i.bg, align 4, !alias.scope !5
  %i.bv = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %6)
          to label %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit unwind label %bb.p ; 0 uses

_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit.i
  %i.bw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bx = load ptr, ptr %4, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge, label %.lr.ph.i21

_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit
  %.pre38 = ptrtoint ptr %i.bw to i64
  %.pre39 = ptrtoint ptr %i.bx to i64
  %.pre41 = sub i64 %.pre38, %.pre39
  %.pre43 = ashr exact i64 %.pre41, 6
  br label %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit

.lr.ph.i21:                                       ; preds = %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit, %.lr.ph.i21
  %i.by = phi ptr [ %i.di, %.lr.ph.i21 ], [ %i.bx, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit ]
  %.011.i = phi i64 [ %i.dg, %.lr.ph.i21 ], [ 0, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.by, i64 %.011.i ; 5 uses
  %i.ca = load float, ptr %6, align 8
  %i.cb = load float, ptr %i.bz, align 4          ; 2 uses
  %i.cc = load float, ptr %i.bd, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ce = load float, ptr %i.cd, align 4          ; 2 uses
  %i.cf = fmul float %i.cc, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.ca, float %i.cb, float %i.cf)
  %i.ch = load float, ptr %20, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4          ; 2 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.ch, float %i.cj, float %i.cg)
  %i.cl = load float, ptr %i.bp, align 4
  %i.cm = fadd float %i.ck, %i.cl
  %.sroa.0.0.vec.insert.i.i22 = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.co = load <8 x float>, ptr %i.bm, align 8    ; 4 uses
  %i.cp = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <8 x float> %i.co, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = shufflevector <8 x float> %i.co, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cu = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cs)
  %i.cx = shufflevector <8 x float> %i.co, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.cy = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cw)
  %i.db = shufflevector <8 x float> %i.co, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.dc = fadd <2 x float> %i.db, %i.da           ; 3 uses
  %i.dd = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i22, <2 x float> %i.dc, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dd, ptr %i.bz, align 8
  %i.de = extractelement <2 x float> %i.dc, i64 1
  store float %i.de, ptr %i.ci, align 8
  %i.df = fpext <2 x float> %i.dc to <2 x double>
  store <2 x double> %i.df, ptr %i.cn, align 8
  %i.dg = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.di = load ptr, ptr %4, align 8               ; 4 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 6                 ; 2 uses
  %i.dn = icmp ult i64 %i.dg, %i.dm
  br i1 %i.dn, label %.lr.ph.i21, label %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit, !llvm.loop !8

_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit: ; preds = %.lr.ph.i21
  %i.do = icmp eq ptr %i.dh, %i.di
  br label %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit

_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit
  %.pre-phi44 = phi i64 [ %.pre43, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %i.dm, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ] ; 9 uses
  %i.dp = phi ptr [ %i.bx, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %i.di, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ] ; 3 uses
  %.not.i24 = phi i1 [ true, %_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE.exit._ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit_crit_edge ], [ %i.do, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not = icmp eq i64 %.pre-phi44, 0
  br i1 %.not, label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ds = icmp ugt i64 %.pre-phi44, 1152921504606846975
  br i1 %i.ds, label %bb.f, label %_ZNKSt6vectorIPN3p2t5PointESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.noexc36 unwind label %.thread

.noexc36:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN3p2t5PointESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.dt = shl nuw nsw i64 %.pre-phi44, 3
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #26
          to label %.noexc37 unwind label %.thread ; 5 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIPN3p2t5PointESaIS2_EE12_M_check_lenEmPKc.exit.i
  store ptr null, ptr %i.du, align 8
  %i.dv = add nsw i64 %.pre-phi44, -1             ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPPN3p2t5PointEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPPN3p2t5PointEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc37
  %i.dx = getelementptr i8, ptr %i.du, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPPN3p2t5PointEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc37
  store ptr %i.du, ptr %7, align 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.pre-phi44 ; 2 uses
  store ptr %i.dy, ptr %i.dq, align 8
  store ptr %i.dy, ptr %i.dr, align 8
  br label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i: ; preds = %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit, %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i
  %i.dz = phi ptr [ %i.du, %_ZSt27__uninitialized_default_n_aIPPN3p2t5PointEmS2_ET_S4_T0_RSaIT1_E.exit33.i ], [ null, %_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE.exit ] ; 2 uses
  br i1 %.not.i24, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i
  %min.iters.check = icmp ult i64 %.pre-phi44, 4
  br i1 %min.iters.check, label %.lr.ph.i25.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i25.preheader
  %n.vec = and i64 %.pre-phi44, -4                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [64 x i8], ptr %i.dp, <2 x i64> %vec.ind
  %wide.gep70 = getelementptr inbounds nuw [64 x i8], ptr %i.dp, <2 x i64> %step.add
  %wide.gep71 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 16
  %wide.gep72 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep70, i64 16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x ptr> %wide.gep71, ptr %i.ea, align 8
  store <2 x ptr> %wide.gep72, ptr %i.eb, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi44, %n.vec
  br i1 %cmp.n, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, label %.lr.ph.i25.preheader74

.lr.ph.i25.preheader74:                           ; preds = %.lr.ph.i25.preheader, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i25.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader74, %.lr.ph.i25
  %.08.i = phi i64 [ %i.eg, %.lr.ph.i25 ], [ %.08.i.ph, %.lr.ph.i25.preheader74 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %.08.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.08.i
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.eh = icmp samesign ult i64 %i.eg, %.pre-phi44
  br i1 %i.eh, label %.lr.ph.i25, label %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit, !llvm.loop !12

_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit: ; preds = %.lr.ph.i25, %middle.block, %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN3p2t3CDTC1ERKSt6vectorIPNS_5PointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE.exit
  invoke void @_ZN3p2t3CDT11TriangulateEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN3p2t3CDT12GetTrianglesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6Assimp21BlenderTessellatorP2T22MakeFacesFromTrianglesERSt6vectorIPN3p2t8TriangleESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ei = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIPN3p2t8TriangleESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #27
  br label %_ZNSt6vectorIPN3p2t8TriangleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3p2t8TriangleESaIS2_EED2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN3p2t3CDTD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.eo = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN3p2t8TriangleESaIS2_EED2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #27
  br label %_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit:      ; preds = %_ZNSt6vectorIPN3p2t8TriangleESaIS2_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.eu = load ptr, ptr %4, align 8               ; 3 uses
  %i.ev = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i ], [ %i.eu, %_ZNSt6vectorIPN3p2t5PointESaIS2_EED2Ev.exit ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Assimp::Blender::PlaneP2T") align 4 captures(none) initializes((12, 20)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %2, align 8                ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6                   ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.076.epil = phi i64 [ %i.o, %.lr.ph.epil ], [ %.076.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.j = phi <4 x float> [ %i.n, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076.epil
  %i.l = load <3 x float>, ptr %i.k, align 4
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.n = fadd <4 x float> %i.j, %i.m              ; 2 uses
  %i.o = add nuw i64 %.076.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.p = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil ]
  %i.q = uitofp i64 %i.h to double
  %i.r = fdiv double 1.000000e+00, %i.q
  %i.s = fptrunc double %i.r to float
  %i.t = insertelement <4 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fmul <4 x float> %i.p, %i.u              ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.w, ptr %0, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = extractelement <4 x float> %i.v, i64 1
  store float %i.x, ptr %.sroa.444.0..sroa_idx, align 4
  br i1 %.not, label %._crit_edge90, label %.lr.ph89

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 5 uses
  %i.y = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.aa = load <3 x float>, ptr %i.z, align 4
  %i.ab = shufflevector <3 x float> %i.aa, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ac = fadd <4 x float> %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load <3 x float>, ptr %i.ae, align 4
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ah = fadd <4 x float> %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load <3 x float>, ptr %i.aj, align 4
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.am = fadd <4 x float> %i.ah, %i.al
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.ap = load <3 x float>, ptr %i.ao, align 4
  %i.aq = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ar = fadd <4 x float> %i.am, %i.aq           ; 3 uses
  %i.as = add nuw i64 %.076, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge90:                                    ; preds = %.lr.ph89, %._crit_edge
  %.054.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ca, %.lr.ph89 ] ; 4 uses
  %i.at = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.cf, %.lr.ph89 ] ; 10 uses
  %i.au = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cd, %.lr.ph89 ] ; 2 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aw = extractelement <4 x float> %i.at, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %.054.lcssa
  %i.ay = extractelement <4 x float> %i.at, i64 3 ; 4 uses
  %i.az = fmul float %i.ay, %.054.lcssa
  %i.ba = fneg float %i.ay                        ; 2 uses
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = extractelement <4 x float> %i.at, i64 1 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.bc, float %i.bb)
  %i.be = extractelement <4 x float> %i.at, i64 2 ; 4 uses
  %i.bf = fmul float %i.ay, %i.be
  %i.bg = extractelement <2 x float> %i.au, i64 1 ; 4 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bd)
  %i.bi = fneg float %i.be                        ; 2 uses
  %i.bj = fmul float %i.be, %i.bi                 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bc, float %i.bh)
  %i.bl = fmul float %i.bg, %i.be
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ay, float %i.bk)
  %i.bn = fneg <4 x float> %i.at
  %i.bo = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bp = fmul <4 x float> %i.av, %i.bo           ; 2 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 3
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bg, float %i.bm) ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.b, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

.lr.ph89:                                         ; preds = %._crit_edge, %.lr.ph89
  %.05487 = phi float [ %i.ca, %.lr.ph89 ], [ 0.000000e+00, %._crit_edge ]
  %.06081 = phi i64 [ %i.cg, %.lr.ph89 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bt = phi <4 x float> [ %i.cf, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.bu = phi <2 x float> [ %i.cd, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081
  %i.bw = load <3 x float>, ptr %i.bv, align 4
  %i.bx = shufflevector <3 x float> %i.bw, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.by = fsub <4 x float> %i.bx, %i.v            ; 5 uses
  %i.bz = extractelement <4 x float> %i.by, i64 2 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %.05487) ; 2 uses
  %i.cb = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.bu) ; 2 uses
  %i.ce = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.ce, <4 x float> %i.bt) ; 2 uses
  %i.cg = add nuw i64 %.06081, 1                  ; 2 uses
  %exitcond107.not = icmp eq i64 %i.cg, %i.h
  br i1 %exitcond107.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !17

bb.b:                                             ; preds = %._crit_edge90
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx65, align 4
  br label %bb.c

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %._crit_edge90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = fdiv float 1.000000e+00, %i.br          ; 3 uses
  %i.ci = fneg float %i.ch
  %i.cj = fneg float %i.bg                        ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %.054.lcssa, float %i.aw, float %i.bj)
  %i.cl = fmul float %i.ck, %i.ch
  %i.cm = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ba, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cp = fmul <4 x float> %i.bp, %i.co
  %i.cq = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.cq, <4 x float> %i.cp)
  %i.cs = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.ci, i64 1 ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  store <4 x float> %i.cw, ptr %3, align 16
  %i.cx = shufflevector <4 x float> %i.av, <4 x float> %i.at, <4 x i32> <i32 1, i32 1, i32 4, i32 6>
  %i.cy = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.bi, i64 1
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.db = fmul <4 x float> %i.cx, %i.da
  %i.dc = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %i.dd = insertelement <4 x float> %i.dc, float %.054.lcssa, i64 3 ; 2 uses
  %i.de = shufflevector <4 x float> %i.at, <4 x float> %i.dd, <4 x i32> <i32 7, i32 7, i32 2, i32 3>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.de, <4 x float> %i.db)
  %i.dg = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = fmul <4 x float> %i.df, %i.dg
  store <4 x float> %i.dh, ptr %.sroa.11.0..sroa_idx, align 16
  store float %i.cl, ptr %.sroa.19.0..sroa_idx, align 16
  %i.di = call { <2 x float>, float } @_ZNK6Assimp21BlenderTessellatorP2T35GetEigenVectorFromLargestEigenValueERK12aiMatrix3x3tIfE(ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(36) %3) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.di, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.di, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.fca.0.extract, ptr %i.dj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit, %bb.b
  %.fca.1.extract.sink = phi float [ 0.000000e+00, %bb.b ], [ %.fca.1.extract, %_ZN12aiMatrix3x3tIfE7InverseEv.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.fca.1.extract.sink, ptr %i.dk, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE(ptr dead_on_unwind noalias writable sret(%class.aiMatrix4x4t) align 4 initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x float>, ptr %i.a, align 4      ; 6 uses
  %i.c = extractelement <2 x float> %i.b, i64 1   ; 4 uses
  %i.d = extractelement <2 x float> %i.b, i64 0   ; 3 uses
  %i.e = fmul float %i.c, 0.000000e+00
  %i.f = fadd float %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4            ; 6 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.f)
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ogt float %i.j, 9.990000e-01
  %.sroa.032.0 = select i1 %i.k, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %.sroa.032.4.vec.extract44 = extractelement <2 x float> %.sroa.032.0, i64 1 ; 2 uses
  %i.l = fneg float %.sroa.032.4.vec.extract44
  %.sroa.032.0.vec.extract37 = extractelement <2 x float> %.sroa.032.0, i64 0
  %i.m = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 0
  %i.o = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.l, i64 0
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.h, i64 1
  %i.r = shufflevector <2 x float> %i.b, <2 x float> %.sroa.032.0, <2 x i32> <i32 1, i32 2>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p) ; 5 uses
  %i.t = fneg float %.sroa.032.0.vec.extract37
  %i.u = fmul float %i.c, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.d, float %.sroa.032.4.vec.extract44, float %i.u) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.x = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.w)
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y) ; 2 uses
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.s, %i.ad
  %i.af = fmul float %i.v, %i.ab
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.11.0 = phi float [ %i.v, %bb.a ], [ %i.af, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0.0 = phi <2 x float> [ %i.s, %bb.a ], [ %i.ae, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 5 uses
  %.sroa.0.4.vec.extract27 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ag = fneg float %i.c
  %.sroa.0.0.vec.extract22 = extractelement <2 x float> %.sroa.0.0, i64 0
  %3 = fneg float %i.h
  %4 = fneg float %i.d
  %5 = fmul float %.sroa.0.4.vec.extract27, %4
  %6 = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract22, float %i.c, float %5)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ak, align 4
  %7 = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %8 = insertelement <2 x float> %7, float %.sroa.11.0, i64 0
  %9 = insertelement <2 x float> poison, float %i.ag, i64 0
  %10 = insertelement <2 x float> %9, float %3, i64 1
  %i.am = fmul <2 x float> %8, %10
  %11 = shufflevector <2 x float> %.sroa.0.0, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %12 = insertelement <2 x float> poison, float %i.h, i64 0
  %i.an = insertelement <2 x float> %12, float %.sroa.11.0, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.an, <2 x float> %i.am)
  store <2 x float> %i.ao, ptr %0, align 4
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %6, ptr %13, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0, ptr %i.ap, align 4
  store float %.sroa.11.0, ptr %i.ah, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.b, ptr %i.aq, align 4
  store float %i.h, ptr %i.ai, align 4
  %i.ar = load float, ptr %2, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load float, ptr %i.aw, align 4
  store float %i.ax, ptr %i.aj, align 4
  %i.ay = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %bb.b ]
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.011 ; 5 uses
  %i.j = load float, ptr %1, align 4
  %i.k = load float, ptr %i.i, align 4            ; 2 uses
  %i.l = load float, ptr %i.d, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = fmul float %i.l, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %i.o)
  %i.q = load float, ptr %i.e, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.p)
  %i.u = load float, ptr %i.f, align 4
  %i.v = fadd float %i.t, %i.u
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.v, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load <8 x float>, ptr %i.g, align 4      ; 4 uses
  %i.y = insertelement <2 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ad = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ah = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.af)
  %i.ak = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.al = fadd <2 x float> %i.ak, %i.aj           ; 3 uses
  %i.am = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.am, ptr %i.i, align 8
  %i.an = extractelement <2 x float> %i.al, i64 1
  store float %i.an, ptr %i.r, align 8
  %i.ao = fpext <2 x float> %i.al to <2 x double>
  store <2 x double> %i.ao, ptr %i.w, align 8
  %i.ap = add nuw i64 %.011, 1                    ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load ptr, ptr %2, align 8               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIPN3p2t5PointESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.p)
  br label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN3p2t5PointES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN3p2t5PointES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPN3p2t5PointES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit, %.lr.ph
  %i.u = phi ptr [ %i.ab, %.lr.ph ], [ %i.t, %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit ]
  %.08 = phi i64 [ %i.z, %.lr.ph ], [ 0, %_ZNSt6vectorIPN3p2t5PointESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.08
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.08
  store ptr %i.w, ptr %i.y, align 8
  %i.z = add nuw i64 %.08, 1                      ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = load ptr, ptr %1, align 8               ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 6
  %i.ag = icmp ult i64 %i.z, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !18
}

declare void @_ZN3p2t3CDTC1ERKSt6vectorIPNS_5PointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare void @_ZN3p2t3CDT11TriangulateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN3p2t3CDT12GetTrianglesEv(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T22MakeFacesFromTrianglesERSt6vectorIPN3p2t8TriangleESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14
  %i.g = phi ptr [ %i.ak, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14 ], [ %i.f, %bb.a ]
  %.015 = phi i64 [ %i.ai, %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit14 ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.015
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, -2081580349
  br i1 %.not.i, label %_ZNK6Assimp21BlenderTessellatorP2T23GetActualPointStructureERN3p2t5PointE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(118) @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

end_hunk_1
