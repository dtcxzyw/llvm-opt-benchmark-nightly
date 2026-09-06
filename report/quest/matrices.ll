Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/matrices?download=true
inline.NumInlined: 337
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.CompMatr1 = type { i32, i64, [2 x [2 x %"class.std::complex"]] }
%"class.std::complex" = type { { double, double } }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<std::complex<double>>, std::allocator<std::vector<std::complex<double>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<std::complex<double>>, std::allocator<std::vector<std::complex<double>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<std::complex<double>>, std::allocator<std::vector<std::complex<double>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<std::complex<double>>, std::allocator<std::vector<std::complex<double>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.CompMatr2 = type { i32, i64, [4 x [4 x %"class.std::complex"]] }
%struct.DiagMatr1 = type { i32, i64, [2 x %"class.std::complex"] }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::complex<double>, std::allocator<std::complex<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::complex<double>, std::allocator<std::complex<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::complex<double>, std::allocator<std::complex<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::complex<double>, std::allocator<std::complex<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.DiagMatr2 = type { i32, i64, [4 x %"class.std::complex"] }
%struct.CompMatr = type { i32, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.QuESTEnv = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.DiagMatr = type { i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FullStateDiagMatr = type { i32, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PauliStrSum = type { i64, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_ = comdat any

$_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_ = comdat any

$_Z30freeAllMemoryIfAnyAllocsFailedI8CompMatrEvT_ = comdat any

$_Z30freeAllMemoryIfAnyAllocsFailedI8DiagMatrEvT_ = comdat any

$_Z30freeAllMemoryIfAnyAllocsFailedI17FullStateDiagMatrEvT_ = comdat any

$_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_ = comdat any

$_Z22validateAndPrintMatrixI9CompMatr1EvT_PKc = comdat any

$_Z22validateAndPrintMatrixI9CompMatr2EvT_PKc = comdat any

$_Z22validateAndPrintMatrixI8CompMatrEvT_PKc = comdat any

$_Z22validateAndPrintMatrixI9DiagMatr1EvT_PKc = comdat any

$_Z22validateAndPrintMatrixI9DiagMatr2EvT_PKc = comdat any

$_Z22validateAndPrintMatrixI8DiagMatrEvT_PKc = comdat any

$_Z22validateAndPrintMatrixI17FullStateDiagMatrEvT_PKc = comdat any

@_ZL17defaultMatrIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZL18defaultQuregIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZL18defaultKrausIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZL18defaultTableIndentB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@__func__._Z12getCompMatr1St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE = private unnamed_addr constant [13 x i8] c"getCompMatr1\00", align 1
@__func__._Z12getCompMatr2St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE = private unnamed_addr constant [13 x i8] c"getCompMatr2\00", align 1
@__func__._Z12getDiagMatr1St6vectorISt7complexIdESaIS1_EE = private unnamed_addr constant [13 x i8] c"getDiagMatr1\00", align 1
@__func__._Z12getDiagMatr2St6vectorISt7complexIdESaIS1_EE = private unnamed_addr constant [13 x i8] c"getDiagMatr2\00", align 1
@__func__.createCompMatr = private unnamed_addr constant [15 x i8] c"createCompMatr\00", align 1
@__func__.createDiagMatr = private unnamed_addr constant [15 x i8] c"createDiagMatr\00", align 1
@__func__._Z40validateAndCreateCustomFullStateDiagMatriiiiPKc = private unnamed_addr constant [41 x i8] c"validateAndCreateCustomFullStateDiagMatr\00", align 1
@__func__.createCustomFullStateDiagMatr = private unnamed_addr constant [30 x i8] c"createCustomFullStateDiagMatr\00", align 1
@_ZN8modeflag8USE_AUTOE = external local_unnamed_addr global i32, align 4
@__func__.createFullStateDiagMatr = private unnamed_addr constant [24 x i8] c"createFullStateDiagMatr\00", align 1
@__func__.syncCompMatr = private unnamed_addr constant [13 x i8] c"syncCompMatr\00", align 1
@__func__.syncDiagMatr = private unnamed_addr constant [13 x i8] c"syncDiagMatr\00", align 1
@__func__.syncFullStateDiagMatr = private unnamed_addr constant [22 x i8] c"syncFullStateDiagMatr\00", align 1
@__func__.destroyCompMatr = private unnamed_addr constant [16 x i8] c"destroyCompMatr\00", align 1
@__func__.destroyDiagMatr = private unnamed_addr constant [16 x i8] c"destroyDiagMatr\00", align 1
@__func__.destroyFullStateDiagMatr = private unnamed_addr constant [25 x i8] c"destroyFullStateDiagMatr\00", align 1
@__func__.setCompMatr = private unnamed_addr constant [12 x i8] c"setCompMatr\00", align 1
@__func__.setDiagMatr = private unnamed_addr constant [12 x i8] c"setDiagMatr\00", align 1
@__func__.setFullStateDiagMatr = private unnamed_addr constant [21 x i8] c"setFullStateDiagMatr\00", align 1
@__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE = private unnamed_addr constant [18 x i8] c"setInlineCompMatr\00", align 1
@__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE = private unnamed_addr constant [18 x i8] c"setInlineDiagMatr\00", align 1
@__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE = private unnamed_addr constant [27 x i8] c"setInlineFullStateDiagMatr\00", align 1
@__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE = private unnamed_addr constant [21 x i8] c"createInlineCompMatr\00", align 1
@__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE = private unnamed_addr constant [21 x i8] c"createInlineDiagMatr\00", align 1
@__func__.setFullStateDiagMatrFromPauliStrSum = private unnamed_addr constant [36 x i8] c"setFullStateDiagMatrFromPauliStrSum\00", align 1
@__func__.createFullStateDiagMatrFromPauliStrSum = private unnamed_addr constant [39 x i8] c"createFullStateDiagMatrFromPauliStrSum\00", align 1
@__func__.setDiagMatrFromMultiVarFunc = private unnamed_addr constant [28 x i8] c"setDiagMatrFromMultiVarFunc\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@__func__.setFullStateDiagMatrFromMultiVarFunc = private unnamed_addr constant [37 x i8] c"setFullStateDiagMatrFromMultiVarFunc\00", align 1
@__func__.setDiagMatrFromMultiDimLists = private unnamed_addr constant [29 x i8] c"setDiagMatrFromMultiDimLists\00", align 1
@__func__.setFullStateDiagMatrFromMultiDimLists = private unnamed_addr constant [38 x i8] c"setFullStateDiagMatrFromMultiDimLists\00", align 1
@__func__.reportCompMatr1 = private unnamed_addr constant [16 x i8] c"reportCompMatr1\00", align 1
@__func__._Z22validateAndPrintMatrixI9CompMatr1EvT_PKc = private unnamed_addr constant [23 x i8] c"validateAndPrintMatrix\00", align 1
@__func__.reportCompMatr2 = private unnamed_addr constant [16 x i8] c"reportCompMatr2\00", align 1
@__func__.reportCompMatr = private unnamed_addr constant [15 x i8] c"reportCompMatr\00", align 1
@__func__.reportDiagMatr1 = private unnamed_addr constant [16 x i8] c"reportDiagMatr1\00", align 1
@__func__.reportDiagMatr2 = private unnamed_addr constant [16 x i8] c"reportDiagMatr2\00", align 1
@__func__.reportDiagMatr = private unnamed_addr constant [15 x i8] c"reportDiagMatr\00", align 1
@__func__.reportFullStateDiagMatr = private unnamed_addr constant [24 x i8] c"reportFullStateDiagMatr\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matrices.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z12getCompMatr1St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.CompMatr1) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  %.pre3 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef 1, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__._Z12getCompMatr1St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.af = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  store ptr %i.ag, ptr %i.a, align 16, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef nonnull %i.a, i64 noundef 2, ptr noundef nonnull @__func__._Z12getCompMatr1St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE), !noalias !66
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %0, align 8, !tbaa !28, !alias.scope !66
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ak, align 8, !tbaa !67, !alias.scope !66
  %i.al = load ptr, ptr %i.a, align 16, !tbaa !25, !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !25, !noalias !66
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #15
  br label %common.resume
}

declare void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !22 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !17

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !25 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

.loopexit12:                                      ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #15 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #17
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #16
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_validateNewNestedElemsPtrNotNull(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = shl nuw i64 1, %i.a
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef %0, i64 noundef %i.b, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12getCompMatr2St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.CompMatr2) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = alloca [4 x ptr], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  %.pre3 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef 2, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__._Z12getCompMatr2St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.af = load ptr, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  store ptr %i.ag, ptr %i.a, align 16, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22
  store ptr %i.am, ptr %i.ak, align 16, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !25
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef nonnull @__func__._Z12getCompMatr2St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE), !noalias !71
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %0, align 8, !tbaa !33, !alias.scope !71
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.aq, align 8, !tbaa !72, !alias.scope !71
  %i.ar = load ptr, ptr %i.a, align 16, !tbaa !25, !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %scevgep.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false)
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !25, !noalias !71
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 64, i1 false)
  %i.au = load ptr, ptr %i.ak, align 16, !tbaa !25, !noalias !71
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !25, !noalias !71
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_Z12getDiagMatr1St6vectorISt7complexIdESaIS1_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.DiagMatr1) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !25
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !29
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef 1, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__._Z12getDiagMatr1St6vectorISt7complexIdESaIS1_EE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
end_hunk_0
begin_hunk_1_@destroyCompMatr:bb.a
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.5.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @destroyDiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.destroyDiagMatr)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.8.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.9.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z24validateAndDestroyMatrixI8DiagMatrEvT_PKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.9.0.copyload)
  br label %_Z24validateAndDestroyMatrixI8DiagMatrEvT_PKc.exit

_Z24validateAndDestroyMatrixI8DiagMatrEvT_PKc.exit: ; preds = %bb.a, %bb.b
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.3.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.4.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.7.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.5.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.6.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @destroyFullStateDiagMatr(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.destroyFullStateDiagMatr)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.8.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.9.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z24validateAndDestroyMatrixI17FullStateDiagMatrEvT_PKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.9.0.copyload)
  br label %_Z24validateAndDestroyMatrixI17FullStateDiagMatrEvT_PKc.exit

_Z24validateAndDestroyMatrixI17FullStateDiagMatrEvT_PKc.exit: ; preds = %bb.a, %bb.b
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.3.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.4.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.7.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.5.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.6.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @setCompMatr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.setCompMatr)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @__func__.setCompMatr)
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload6 = load ptr, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.89.0.copyload = load ptr, ptr %.sroa.89.0..sroa_idx, align 8
  tail call void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef %.sroa.7.0.copyload, ptr noundef %1, i64 noundef %i.b)
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.syncCompMatr)
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.89.0.copyload)
  br i1 %i.c, label %bb.b, label %_Z24setAndSyncDenseMatrElemsIPPSt7complexIdEEv8CompMatrT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu8CompMatr(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0)
  br label %_Z24setAndSyncDenseMatrElemsIPPSt7complexIdEEv8CompMatrT_.exit

_Z24setAndSyncDenseMatrElemsIPPSt7complexIdEEv8CompMatrT_.exit: ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.6.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload6)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload8)
  ret void
}

declare void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setDiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.setDiagMatr)
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef %1, ptr noundef nonnull @__func__.setDiagMatr)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  tail call void @_Z13cpu_copyArrayPSt7complexIdES1_x(ptr noundef %i.b, ptr noundef %1, i64 noundef %i.d)
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload4 = load ptr, ptr %.sroa.3.0..sroa_idx3, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload6 = load ptr, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload10 = load ptr, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload12 = load ptr, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.813.0.copyload = load ptr, ptr %.sroa.813.0..sroa_idx, align 8
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.syncDiagMatr)
  %i.e = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.813.0.copyload)
  br i1 %i.e, label %bb.b, label %syncDiagMatr.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu8DiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
  br label %syncDiagMatr.exit

syncDiagMatr.exit:                                ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.7.0.copyload12, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload4)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload6)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload8)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload10)
  ret void
}

declare void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z13cpu_copyArrayPSt7complexIdES1_x(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setFullStateDiagMatr(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %3, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef %2, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z36localiser_fullstatediagmatr_setElems17FullStateDiagMatrxPSt7complexIdEx(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.36.0.copyload = load ptr, ptr %.sroa.36.0..sroa_idx, align 8, !tbaa !48
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !48
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !48
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8, !tbaa !48
  store i32 1, ptr %.sroa.69.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.36.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.47.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.58.0.copyload)
  ret void
}

declare void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef byval(%struct.FullStateDiagMatr) align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z36localiser_fullstatediagmatr_setElems17FullStateDiagMatrxPSt7complexIdEx(ptr noundef byval(%struct.FullStateDiagMatr) align 8, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z11setCompMatr8CompMatrSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.setCompMatr)
  %i.a = load i32, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  %.pre23 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre23, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.at, %bb.l ], [ %i.bj, %bb.q ], [ %i.bi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %i.a, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setCompMatr)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !16    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %.noexc.i.i9, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, !prof !17

.noexc.i.i9:                                      ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.i
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !18
  %.pre25 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.an = phi ptr [ %i.ag, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre24, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.ao = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ] ; 5 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %i.ao)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i7, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.aj) #19
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10: ; preds = %bb.j
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !15
  invoke void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10
  %i.au = load ptr, ptr %3, align 8, !tbaa !16    ; 3 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15
  %.05.i.i.i13 = phi ptr [ %i.bc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15 ], [ %i.au, %bb.m ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i12
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15: ; preds = %bb.n, %.lr.ph.i.i.i12
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 24 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bc, %i.av
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17, label %.lr.ph.i.i.i12, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15
  %.pr.i18 = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17, %bb.m
  %i.bd = phi ptr [ %.pr.i18, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17 ], [ %i.au, %bb.m ] ; 3 uses
  %.not.i.i1.i20 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #15
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef byval(%struct.CompMatr) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  %.pre4 = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !19
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.n, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45
  invoke void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef %i.b, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.t)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.u, %bb.f ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, %i.v
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %.sroa.3.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload13 = load ptr, ptr %.sroa.3.0..sroa_idx12, align 8
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload15 = load ptr, ptr %.sroa.4.0..sroa_idx14, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload17 = load ptr, ptr %.sroa.5.0..sroa_idx16, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.618.0.copyload = load ptr, ptr %.sroa.618.0..sroa_idx, align 8
  call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.syncCompMatr)
  %i.ai = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.618.0.copyload)
  br i1 %i.ai, label %bb.i, label %syncCompMatr.exit

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  call void @_Z16gpu_copyCpuToGpu8CompMatr(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0)
  br label %syncCompMatr.exit

syncCompMatr.exit:                                ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.i
  store i32 1, ptr %.sroa.5.0.copyload17, align 4, !tbaa !47
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload13)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload15)
  ret void

bb.j:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #15
  br label %common.resume
}

declare void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef, ptr nofree noundef align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z11setDiagMatr8DiagMatrSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 6 uses
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.setDiagMatr)
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !25
  %.pre3 = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !29
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef %i.a, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setDiagMatr)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !22
  call void @setDiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef %i.w)
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit2

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit2:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_Z20setFullStateDiagMatr17FullStateDiagMatrxSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, i64 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.a = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %i.g, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef %i.a, ptr noundef nonnull @__func__.setFullStateDiagMatr)
  tail call void @_Z36localiser_fullstatediagmatr_setElems17FullStateDiagMatrxPSt7complexIdEx(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, ptr noundef %i.a, i64 noundef %i.g)
  store i32 1, ptr %.sroa.7.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  %i.a = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  tail call void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef %i.a, i32 noundef %1, ptr noundef nonnull @__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !18
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre24, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.at, %bb.l ], [ %i.bj, %bb.q ], [ %i.bi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %i.a, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %.noexc.i.i10, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7, !prof !17

.noexc.i.i10:                                     ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7: ; preds = %bb.i
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
  %.pre25 = load ptr, ptr %2, align 8, !tbaa !18
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.an = phi ptr [ %i.ag, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.ao = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ] ; 5 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %i.ao)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.aj) #19
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11: ; preds = %bb.j
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !15
  invoke void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.au = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.05.i.i.i14 = phi ptr [ %i.bc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16 ], [ %i.au, %bb.m ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i14, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i13
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16: ; preds = %bb.n, %.lr.ph.i.i.i13
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.bc, %i.av
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, label %.lr.ph.i.i.i13, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.pr.i19 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, %bb.m
  %i.bd = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18 ], [ %i.au, %bb.m ] ; 3 uses
  %.not.i.i1.i21 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i21, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #15
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #15
  br label %common.resume
}

declare void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 6 uses
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  %i.a = load i32, ptr %0, align 8, !tbaa !50     ; 2 uses
  tail call void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef %i.a, i32 noundef %1, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  %.pre4 = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !29
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef %i.a, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  %i.w = load ptr, ptr %2, align 8, !tbaa !22
  call void @setDiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef %i.w)
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %3, align 8, !tbaa !22
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  tail call void @_Z44validate_declaredNumElemsMatchesVectorLengthxxPKc(i64 noundef %2, i64 noundef %i.g, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  tail call void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
  %.pre = load ptr, ptr %3, align 8, !tbaa !25
  %.pre20 = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre20, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.q = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload27 = load ptr, ptr %.sroa.3.0..sroa_idx26, align 8
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload29 = load ptr, ptr %.sroa.4.0..sroa_idx28, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload31 = load ptr, ptr %.sroa.6.0..sroa_idx30, align 8
  %.sroa.7.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload33 = load ptr, ptr %.sroa.7.0..sroa_idx32, align 8
  %i.t = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  invoke void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  invoke void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %i.w, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc
  invoke void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef %i.q, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc5
  invoke void @_Z36localiser_fullstatediagmatr_setElems17FullStateDiagMatrxPSt7complexIdEx(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, ptr noundef %i.q, i64 noundef %i.w)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %.noexc6
  store i32 1, ptr %.sroa.7.0.copyload33, align 4, !tbaa !47
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload27)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload29)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc8
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload)
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %.noexc9
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload31)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc10
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i12 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.l) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13:    ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.x
}

declare void @_Z44validate_declaredNumElemsMatchesVectorLengthxxPKc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias nofree writable sret(%struct.CompMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z26validate_newCompMatrParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !18
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.as, %bb.l ], [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @createCompMatr(ptr dead_on_unwind writable sret(%struct.CompMatr) align 8 %0, i32 noundef %1)
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i12, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, !prof !17

.noexc.i.i12:                                     ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9: ; preds = %bb.i
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #18
  %.pre27 = load ptr, ptr %2, align 8, !tbaa !18
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.ae, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre28, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre27, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.an = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.ak, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ] ; 5 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !19
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.am, ptr %i.al, ptr noundef %i.an)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i10, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ai) #19
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13: ; preds = %bb.j
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !15
  invoke void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.at = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i14 = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i14, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.05.i.i.i16 = phi ptr [ %i.bb, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18 ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i16, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i15
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18: ; preds = %bb.n, %.lr.ph.i.i.i15
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, label %.lr.ph.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.pr.i21 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, %bb.m
  %i.bc = phi ptr [ %.pr.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20 ], [ %i.at, %bb.m ] ; 3 uses
  %.not.i.i1.i23 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i23, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #15
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE(ptr dead_on_unwind noalias nofree writable sret(%struct.DiagMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 6 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE)
  tail call void @_Z26validate_newDiagMatrParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre6, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !29
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z20createInlineDiagMatriSt6vectorISt7complexIdESaIS1_EE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  call void @createDiagMatr(ptr dead_on_unwind writable sret(%struct.DiagMatr) align 8 %0, i32 noundef %1)
  %i.v = load ptr, ptr %2, align 8, !tbaa !22
  call void @setDiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef %i.v)
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit5:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetCompMatrFromArr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.setCompMatr)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
