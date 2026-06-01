inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [2 x %"class.folly::TDigest"] }
%"class.folly::TDigest" = type { %"class.std::vector", i64, double, double, double, double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<folly::TDigest::Centroid, std::allocator<folly::TDigest::Centroid>>::_Vector_impl" }
%"struct.std::_Vector_base<folly::TDigest::Centroid, std::allocator<folly::TDigest::Centroid>>::_Vector_impl" = type { %"struct.std::_Vector_base<folly::TDigest::Centroid, std::allocator<folly::TDigest::Centroid>>::_Vector_impl_data" }
%"struct.std::_Vector_base<folly::TDigest::Centroid, std::allocator<folly::TDigest::Centroid>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::(anonymous namespace)::Buffer" = type { ptr, i64 }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%class.anon = type { i8 }
%"struct.folly::detail::UsingJEMallocInitializer" = type { i8 }
%"struct.folly::detail::UsingTCMallocInitializer" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.folly::TDigest::CentroidMerger" = type { %"class.std::vector", i64, double, double, double, double, %"class.std::optional", double, double, double, %"class.folly::TDigest::Centroid" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<folly::TDigest::Centroid>::_Storage", i8 }>
%"union.std::_Optional_payload_base<folly::TDigest::Centroid>::_Storage" = type { %"class.folly::TDigest::Centroid" }
%"class.folly::TDigest::Centroid" = type { double, double }
%"class.folly::Range.23" = type { ptr, ptr }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.39 }
%union.anon.39 = type { ptr }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }

$_ZNSt5arrayIN5folly7TDigestELm2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv = comdat any

$_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_ = comdat any

$_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_ = comdat any

$_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvS8_S8_RT0_ = comdat any

$_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvS9_S9_RT0_ = comdat any

$_ZN5folly15throw_exceptionISt16invalid_argumentEEvOT_ = comdat any

$_ZNSt16invalid_argumentC2EOS_ = comdat any

$_ZN5folly6detail16throw_exception_ISt13runtime_errorJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_ = comdat any

$_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Invalid input value\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Unexpected loop fallthrough.\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTVSt16invalid_argument = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt13runtime_error = external constant ptr

@_ZN5folly7TDigestC1ESt6vectorINS0_8CentroidESaIS2_EEddddm = unnamed_addr alias void (ptr, ptr, double, double, double, double, i64), ptr @_ZN5folly7TDigestC2ESt6vectorINS0_8CentroidESaIS2_EEddddm

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigestC2ESt6vectorINS0_8CentroidESaIS2_EEddddm(ptr noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef captures(none) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i64 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::array", align 8       ; 16 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  %9 = alloca %"class.folly::TDigest", align 16   ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 %6, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double %2, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %3, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store double %4, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store double %5, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !26     ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %.not = icmp ugt i64 %i.l, %6
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EEaSEOS4_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %0, align 8, !tbaa !26
  store ptr %i.g, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  store ptr %i.p, ptr %i.n, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %6, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.s, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.h, ptr %8, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.g, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  store ptr %i.x, ptr %i.v, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.y = load double, ptr %i.b, align 8, !tbaa !21
  %i.z = load double, ptr %i.c, align 8, !tbaa !22
  %i.aa = load double, ptr %i.d, align 8, !tbaa !23
  %i.ab = load double, ptr %i.e, align 8, !tbaa !24
  invoke void @_ZN5folly7TDigestC1ESt6vectorINS0_8CentroidESaIS2_EEddddm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %8, double noundef %i.y, double noundef %i.z, double noundef %i.aa, double noundef %i.ab, i64 noundef %i.l)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %8, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 128
  invoke void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.folly::TDigest") align 8 %9, ptr nonnull %7, ptr nonnull %i.ah)
          to label %_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit unwind label %bb.l

_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit:   ; preds = %bb.e
  %i.ai = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = load <2 x ptr>, ptr %9, align 16, !tbaa !29
  store <2 x ptr> %i.al, ptr %0, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !27
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly7TDigestaSEOS0_.exit.thread, label %_ZN5folly7TDigestaSEOS0_.exit

_ZN5folly7TDigestaSEOS0_.exit.thread:             ; preds = %_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestaSEOS0_.exit:                    ; preds = %_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ar) #24
  %.pr = load ptr, ptr %9, align 16, !tbaa !26    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7TDigestD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly7TDigestaSEOS0_.exit
end_hunk_0
begin_hunk_1_@_ZN5folly7TDigest10merge2ImplERKS0_S2_:bb.a
  %i.dv = call double @llvm.fmuladd.f64(double %i.du, double %i.dr, double %.pre103161) ; 2 uses
  store double %i.dv, ptr %i.cl, align 16, !tbaa !72
  %i.dw = fadd double %i.dr, %.pre105163          ; 2 uses
  store double %i.dw, ptr %i.cm, align 8, !tbaa !73
  br label %.noexc56, !llvm.loop !94

.loopexit:                                        ; preds = %bb.t, %bb.x
  %.pre103.lcssa = phi double [ %.pre103161, %bb.x ], [ %.promoted160167, %bb.t ]
  %.pre105.lcssa = phi double [ %.pre105163, %bb.x ], [ %.promoted162170, %bb.t ]
  %.sroa.010.0.sink.i.lcssa133 = phi ptr [ %.sroa.010.0.sink.i, %bb.x ], [ %.sroa.010.0.sink.i.peel, %bb.t ]
  %.sroa.010.1.i.lcssa132 = phi ptr [ %.sroa.010.1.i, %bb.x ], [ %.sroa.010.1.i.peel, %bb.t ]
  %.sroa.016.1.i.lcssa131 = phi ptr [ %.sroa.016.1.i, %bb.x ], [ %.sroa.016.1.i.peel, %bb.t ]
  %i.dx = load double, ptr %i.ck, align 16, !tbaa !69
  %i.dy = load double, ptr %i.cn, align 8, !tbaa !70 ; 2 uses
  %i.dz = call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.dy, double %.pre103.lcssa) ; 2 uses
  %i.ea = fadd double %.pre105.lcssa, %i.dy       ; 2 uses
  store double %i.ea, ptr %i.cn, align 8, !tbaa !70
  %i.eb = fdiv double %i.dz, %i.ea                ; 2 uses
  store double %i.eb, ptr %i.ck, align 16, !tbaa !69
  %i.ec = load double, ptr %i.cg, align 8, !tbaa !67
  %i.ed = fadd double %i.dz, %i.ec
  store double %i.ed, ptr %i.cg, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.ee = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.ef = load ptr, ptr %3, align 16, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.loopexit
  %.sroa.05.0.i.i66 = phi ptr [ %i.ee, %.loopexit ], [ %i.eh, %bb.z ] ; 3 uses
  %i.eg = icmp eq ptr %.sroa.05.0.i.i66, %i.ef
  br i1 %i.eg, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds i8, ptr %.sroa.05.0.i.i66, i64 -16 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !69
  %i.ej = fcmp olt double %i.eb, %i.ei
  br i1 %i.ej, label %bb.y, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67: ; preds = %bb.z, %bb.y
  %i.ek = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i66, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc70 unwind label %bb.ah  ; 0 uses

.noexc70:                                         ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67
  %i.el = load double, ptr %i.bv, align 8, !tbaa !65 ; 2 uses
  %i.em = fadd double %i.el, 1.000000e+00         ; 2 uses
  store double %i.em, ptr %i.bv, align 8, !tbaa !65
  %i.en = load i64, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.eo = uitofp i64 %i.en to double
  %i.ep = fdiv double %i.el, %i.eo                ; 4 uses
  %i.eq = fcmp ult double %i.ep, 5.000000e-01
  br i1 %i.eq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc70
  %i.er = fsub double 1.000000e+00, %i.ep         ; 2 uses
  %i.es = fmul nnan double %i.er, -2.000000e+00
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.er, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68

bb.ab:                                            ; preds = %.noexc70
  %i.eu = fmul double %i.ep, 2.000000e+00
  %i.ev = fmul double %i.ep, %i.eu
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68:       ; preds = %bb.ab, %bb.aa
  %.0.i.i69 = phi double [ %i.et, %bb.aa ], [ %i.ev, %bb.ab ]
  %i.ew = load double, ptr %i.bu, align 16, !tbaa !64
  %i.ex = fmul double %.0.i.i69, %i.ew            ; 2 uses
  store double %i.ex, ptr %i.bw, align 16, !tbaa !66
  %i.ey = load i8, ptr %i.ch, align 16, !tbaa !68, !range !44, !noundef !45
  %i.ez = trunc nuw i8 %i.ey to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.010.0.sink.i.lcssa133, i64 16, i1 false)
  br i1 %i.ez, label %.noexc56.outer.outer.backedge, label %bb.ac

.noexc56.outer.outer.backedge:                    ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68, %bb.ac
  br label %.noexc56.outer.outer, !llvm.loop !93

bb.ac:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68
  store i8 1, ptr %i.ch, align 16, !tbaa !68
  br label %.noexc56.outer.outer.backedge

"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit": ; preds = %bb.r, %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.fa, align 8, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.fc, align 8, !tbaa !28
  br i1 %.ph130, label %bb.ad, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

bb.ad:                                            ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit"
  %i.fd = load double, ptr %i.cl, align 16, !tbaa !72, !noalias !96
  %i.fe = load double, ptr %i.cm, align 8, !tbaa !73, !noalias !96
  %i.ff = load double, ptr %i.ck, align 16, !tbaa !69, !noalias !96
  %i.fg = load double, ptr %i.cn, align 8, !tbaa !70, !noalias !96 ; 2 uses
  %i.fh = call noundef double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.fd) ; 2 uses
  %i.fi = fadd double %i.fe, %i.fg                ; 2 uses
  store double %i.fi, ptr %i.cn, align 8, !tbaa !70, !noalias !96
  %i.fj = fdiv double %i.fh, %i.fi                ; 2 uses
  store double %i.fj, ptr %i.ck, align 16, !tbaa !69, !noalias !96
  %i.fk = load double, ptr %i.cg, align 8, !tbaa !67, !noalias !96
  %i.fl = fadd double %i.fh, %i.fk
  store double %i.fl, ptr %i.cg, align 8, !tbaa !67, !noalias !96
  %i.fm = load ptr, ptr %i.br, align 8, !tbaa !29, !noalias !96
  %i.fn = load ptr, ptr %3, align 16, !tbaa !29, !noalias !96
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.sroa.05.0.i.i = phi ptr [ %i.fm, %bb.ad ], [ %i.fp, %bb.af ] ; 3 uses
  %i.fo = icmp eq ptr %.sroa.05.0.i.i, %i.fn
  br i1 %i.fo, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !69, !noalias !96
  %i.fr = fcmp olt double %i.fj, %i.fq
  br i1 %i.fr, label %bb.ae, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.af, %bb.ae
  %i.fs = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc57 unwind label %bb.ai  ; 0 uses

.noexc57:                                         ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ft = load <2 x ptr>, ptr %3, align 16, !tbaa !29, !noalias !96
  %i.fu = load ptr, ptr %i.bs, align 16, !tbaa !27, !noalias !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 24, i1 false), !noalias !96
  %i.fv = load double, ptr %i.cg, align 8, !tbaa !28, !noalias !96
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit", %.noexc57
  %i.fw = phi ptr [ %i.fu, %.noexc57 ], [ null, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %.sroa.13.0 = phi double [ %i.fv, %.noexc57 ], [ 0.000000e+00, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ]
  %i.fx = phi <2 x ptr> [ %i.ft, %.noexc57 ], [ splat (ptr null), %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.fx, ptr %0, align 8, !tbaa !29
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !27
  store double %.sroa.13.0, ptr %i.fb, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.134.1, ptr %i.fz, align 8, !tbaa !22
  store <2 x double> %i.bp, ptr %i.fc, align 8, !tbaa !28
  %i.ga = extractelement <2 x ptr> %i.fx, i64 1
  %i.gb = icmp eq ptr %i.fw, %i.ga
  br i1 %i.gb, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gc = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ah:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.ai:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %bb.ag, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gf = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.gg = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit: ; preds = %bb.aj, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.al

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.ai, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ah ], [ %i.ge, %bb.ai ]
  %i.gk = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i62, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.gl = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit63

_ZN5folly7TDigest14CentroidMergerD2Ev.exit63:     ; preds = %bb.ak, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.al:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, %_ZN5folly7TDigestC2ERKS0_.exit53, %_ZN5folly7TDigestC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i23.i.i = alloca %"class.folly::Range.23", align 8 ; 4 uses
  %.sroa.0.i.i.i.i = alloca %"class.folly::Range.23", align 8 ; 4 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 6                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 128
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 9 uses
  %i.m = add i64 %i.e, -64
  %i.n = sub i64 %i.m, %i.f                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 1024
  br i1 %min.iters.check, label %.lr.ph.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.o = lshr i64 %i.n, 6
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.p, 3                     ; 2 uses
  %i.q = icmp eq i64 %n.mod.vf, 0
  %i.r = select i1 %i.q, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.p, %i.r                 ; 2 uses
  %i.s = shl i64 %n.vec, 6
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi264 = phi <4 x ptr> [ splat (ptr null), %vector.ph ], [ %i.bb, %vector.body ]
  %i.u = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 64, i64 128, i64 192> ; 5 uses
  %i.v = extractelement <4 x ptr> %vector.gep, i64 0 ; 2 uses
  %i.w = extractelement <4 x ptr> %vector.gep, i64 1 ; 2 uses
  %i.x = extractelement <4 x ptr> %vector.gep, i64 2 ; 2 uses
  %i.y = extractelement <4 x ptr> %vector.gep, i64 3 ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ad = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %i.aa, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %i.ab, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %i.ac, i64 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ap = insertelement <4 x ptr> poison, ptr %i.al, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %i.am, i64 1
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.an, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ao, i64 3 ; 2 uses
  %i.at = icmp ne <4 x ptr> %i.ag, %i.as
  %i.au = freeze <4 x i1> %i.at                   ; 3 uses
  %i.av = ptrtoint <4 x ptr> %i.as to <4 x i64>
  %i.aw = ptrtoint <4 x ptr> %i.ag to <4 x i64>
  %i.ax = sub <4 x i64> %i.av, %i.aw
  %i.ay = ashr exact <4 x i64> %i.ax, splat (i64 4)
  %i.az = bitcast <4 x i1> %i.au to i4
  %.not266 = icmp eq i4 %i.az, 0                  ; 2 uses
  %i.ba = select i1 %.not266, <4 x i1> %i.u, <4 x i1> %i.au ; 2 uses
  %i.bb = select i1 %.not266, <4 x ptr> %vec.phi264, <4 x ptr> %vector.gep ; 2 uses
  %i.bc = select <4 x i1> %i.au, <4 x i64> %i.ay, <4 x i64> zeroinitializer
  %i.bd = add <4 x i64> %i.bc, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %i.bf = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bd)
  %i.bg = tail call ptr @llvm.experimental.vector.extract.last.active.v4p0(<4 x ptr> %i.bb, <4 x i1> %i.ba, ptr null)
  br label %.lr.ph.preheader276

.lr.ph.preheader276:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  %.046180.ph = phi ptr [ null, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.048179.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.bh = icmp eq i64 %.1, 0
  br i1 %i.bh, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader276, %.lr.ph
  %.0181 = phi i64 [ %.1, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader276 ]
  %.046180 = phi ptr [ %.147, %.lr.ph ], [ %.046180.ph, %.lr.ph.preheader276 ]
  %.048179 = phi ptr [ %i.br, %.lr.ph ], [ %.048179.ph, %.lr.ph.preheader276 ] ; 4 uses
  %i.bi = load ptr, ptr %.048179, align 8, !tbaa !29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.048179, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk                ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %.147 = select i1 %i.bl, ptr %.046180, ptr %.048179 ; 4 uses
  %i.bq = select i1 %i.bl, i64 0, i64 %i.bp
  %.1 = add i64 %i.bq, %.0181                     ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.048179, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.br, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.bu, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.147, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 3 uses
  %i.bx = load ptr, ptr %.147, align 8, !tbaa !26 ; 4 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = ashr exact i64 %i.ca, 4
  %i.cc = icmp eq i64 %.1, %i.cb
  br i1 %i.cc, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.147, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = icmp eq i64 %i.ce, %i.l
  br i1 %i.cf, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = icmp ugt i64 %i.ca, 9223372036854775792
  br i1 %i.cg, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !35

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #29
  %.pre219 = load ptr, ptr %i.bv, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.ci = phi ptr [ %i.bw, %bb.h ], [ %.pre219, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.cj = phi ptr [ null, %bb.h ], [ %i.ch, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !27
  %i.cn = icmp eq ptr %i.bx, %i.ci
  br i1 %i.cn, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.cj, %bb.j ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %i.bx, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.ci
  br i1 %i.cq, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cj, %bb.j ], [ %i.cp, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false)
end_hunk_1
begin_hunk_2_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i:         ; preds = %bb.t, %bb.s
  %.0.i.i = phi double [ %i.ff, %bb.s ], [ %i.fh, %bb.t ]
  %i.fi = fmul double %.158, %.0.i.i
  store double %i.fi, ptr %i.ez, align 16, !tbaa !66
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  store double 0.000000e+00, ptr %i.fj, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 6 uses
  store i8 0, ptr %i.fk, align 16, !tbaa !68
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 1.000000e+00>, ptr %i.fm, align 16, !tbaa !28
  %i.fn = icmp eq ptr %.sroa.0119.1, %.sroa.14.1
  br i1 %i.fn, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0119.1, i64 8
  %i.ft = ptrtoint ptr %.sroa.0119.1 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph200, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit
  %.sroa.14.2199 = phi ptr [ %.sroa.14.1, %.lr.ph200 ], [ %.sroa.14.3, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit ] ; 2 uses
  %i.fu = load ptr, ptr %.sroa.0119.1, align 8, !tbaa !103 ; 5 uses
  %i.fv = load i8, ptr %i.fk, align 16, !tbaa !68, !range !44, !noundef !45
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.v, label %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false)
  store i8 1, ptr %i.fk, align 16, !tbaa !68
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !70
  store double %i.fy, ptr %i.fl, align 8, !tbaa !71
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !70 ; 3 uses
  %i.gb = load double, ptr %i.fl, align 8, !tbaa !71
  %i.gc = fadd double %i.ga, %i.gb                ; 2 uses
  store double %i.gc, ptr %i.fl, align 8, !tbaa !71
  %i.gd = load double, ptr %i.ez, align 16, !tbaa !66
  %i.ge = fcmp ugt double %i.gc, %i.gd
  br i1 %i.ge, label %bb.w, label %._crit_edge210

._crit_edge210:                                   ; preds = %bb.v
  %.pre = load double, ptr %i.fp, align 16, !tbaa !72
  %.pre212 = load double, ptr %i.fq, align 8, !tbaa !73
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gf = load double, ptr %i.ey, align 8, !tbaa !65
  %i.gg = load i64, ptr %i.ew, align 8, !tbaa !57
  %i.gh = uitofp i64 %i.gg to double
  %i.gi = fcmp ogt double %i.gf, %i.gh
  %.pre211 = load double, ptr %i.fp, align 16, !tbaa !72 ; 2 uses
  %.pre213 = load double, ptr %i.fq, align 8, !tbaa !73 ; 2 uses
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge210, %bb.w
  %i.gj = phi double [ %.pre212, %._crit_edge210 ], [ %.pre213, %bb.w ]
  %i.gk = phi double [ %.pre, %._crit_edge210 ], [ %.pre211, %bb.w ]
  %i.gl = load double, ptr %i.fu, align 8, !tbaa !69
  %i.gm = call double @llvm.fmuladd.f64(double %i.gl, double %i.ga, double %i.gk)
  store double %i.gm, ptr %i.fp, align 16, !tbaa !72
  %i.gn = fadd double %i.ga, %i.gj
  store double %i.gn, ptr %i.fq, align 8, !tbaa !73
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.y:                                             ; preds = %bb.w
  %i.go = load double, ptr %i.fo, align 16, !tbaa !69
  %i.gp = load double, ptr %i.fr, align 8, !tbaa !70 ; 2 uses
  %i.gq = call noundef double @llvm.fmuladd.f64(double %i.go, double %i.gp, double %.pre211) ; 2 uses
  %i.gr = fadd double %.pre213, %i.gp             ; 2 uses
  store double %i.gr, ptr %i.fr, align 8, !tbaa !70
  %i.gs = fdiv double %i.gq, %i.gr                ; 2 uses
  store double %i.gs, ptr %i.fo, align 16, !tbaa !69
  %i.gt = load double, ptr %i.fj, align 8, !tbaa !67
  %i.gu = fadd double %i.gq, %i.gt
  store double %i.gu, ptr %i.fj, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  %i.gv = load ptr, ptr %i.eu, align 8, !tbaa !29
  %i.gw = load ptr, ptr %4, align 16, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.sroa.05.0.i = phi ptr [ %i.gv, %bb.y ], [ %i.gy, %bb.aa ] ; 3 uses
  %i.gx = icmp eq ptr %.sroa.05.0.i, %i.gw
  br i1 %i.gx, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gy = getelementptr inbounds i8, ptr %.sroa.05.0.i, i64 -16 ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !69
  %i.ha = fcmp olt double %i.gs, %i.gz
  br i1 %i.ha, label %bb.z, label %.critedge.i, !prof !35, !llvm.loop !74

.critedge.i:                                      ; preds = %bb.aa, %bb.z
  %i.hb = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr %.sroa.05.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %.noexc unwind label %bb.ah    ; 0 uses

.noexc:                                           ; preds = %.critedge.i
  %i.hc = load double, ptr %i.ey, align 8, !tbaa !65 ; 2 uses
  %i.hd = fadd double %i.hc, 1.000000e+00
  store double %i.hd, ptr %i.ey, align 8, !tbaa !65
  %i.he = load i64, ptr %i.ew, align 8, !tbaa !57
  %i.hf = uitofp i64 %i.he to double
  %i.hg = fdiv double %i.hc, %i.hf                ; 4 uses
  %i.hh = fcmp ult double %i.hg, 5.000000e-01
  br i1 %i.hh, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc
  %i.hi = fsub double 1.000000e+00, %i.hg         ; 2 uses
  %i.hj = fmul nnan double %i.hi, -2.000000e+00
  %i.hk = call double @llvm.fmuladd.f64(double %i.hj, double %i.hi, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

bb.ac:                                            ; preds = %.noexc
  %i.hl = fmul double %i.hg, 2.000000e+00
  %i.hm = fmul double %i.hg, %i.hl
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit:           ; preds = %bb.ab, %bb.ac
  %.0.i = phi double [ %i.hk, %bb.ab ], [ %i.hm, %bb.ac ]
  %i.hn = load double, ptr %i.ex, align 16, !tbaa !64
  %i.ho = fmul double %.0.i, %i.hn
  store double %i.ho, ptr %i.ez, align 16, !tbaa !66
  %i.hp = load i8, ptr %i.fk, align 16, !tbaa !68, !range !44, !noundef !45
  %i.hq = trunc nuw i8 %i.hp to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false)
  br i1 %i.hq, label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit
  store i8 1, ptr %i.fk, align 16, !tbaa !68
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit: ; preds = %bb.x, %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit, %bb.ad
  %i.hr = load ptr, ptr %.sroa.0119.1, align 8, !tbaa !103
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  store ptr %i.hs, ptr %.sroa.0119.1, align 8, !tbaa !103
  %i.ht = load ptr, ptr %i.fs, align 8, !tbaa !105
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.hv = getelementptr inbounds i8, ptr %.sroa.14.2199, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0119.1, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  br label %bb.ai

bb.af:                                            ; preds = %._crit_edge192
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i, %bb.q
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99

bb.ah:                                            ; preds = %.critedge.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.ai:                                            ; preds = %bb.ae, %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %.sroa.14.3 = phi ptr [ %i.hv, %bb.ae ], [ %.sroa.14.2199, %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit ] ; 3 uses
  %i.hz = ptrtoint ptr %.sroa.14.3 to i64
  %i.ia = sub i64 %i.hz, %i.ft
  %i.ib = ashr exact i64 %i.ia, 4                 ; 3 uses
  %i.ic = icmp ugt i64 %i.ib, 2
  br i1 %i.ic, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %i.id = phi i64 [ %i.iw, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %i.ie = phi i64 [ %i.iv, %bb.aj ], [ 0, %bb.ai ]
  %.037.i.i = phi i64 [ %i.in, %bb.aj ], [ 0, %bb.ai ]
  %i.if = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.id
  %i.ig = or disjoint i64 %i.ie, 1                ; 2 uses
  %i.ih = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.ig
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !103
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !69
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !103
  %i.il = load double, ptr %i.ik, align 8, !tbaa !69
  %i.im = fcmp ogt double %i.ij, %i.il
  %i.in = select i1 %i.im, i64 %i.ig, i64 %i.id, !unpredictable !45 ; 4 uses
  %i.io = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.037.i.i ; 3 uses
  %i.ip = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.in ; 3 uses
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !103
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !69
  %i.is = load ptr, ptr %i.ip, align 8, !tbaa !103
  %i.it = load double, ptr %i.is, align 8, !tbaa !69
  %i.iu = fcmp ogt double %i.ir, %i.it
  br i1 %i.iu, label %bb.aj, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.aj:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.iv = shl i64 %i.in, 1                        ; 3 uses
  %i.iw = add i64 %i.iv, 2                        ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.ib
  br i1 %i.ix, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !111

._crit_edge.loopexit.i.i:                         ; preds = %bb.aj
  %i.iy = or disjoint i64 %i.iv, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ai
  %.0.lcssa.i.i = phi i64 [ 0, %bb.ai ], [ %i.in, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi i64 [ 1, %bb.ai ], [ %i.iy, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.iz = icmp ult i64 %.lcssa.i.i, %i.ib
  br i1 %i.iz, label %bb.ak, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.ja = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.0.lcssa.i.i ; 3 uses
  %i.jb = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.lcssa.i.i ; 3 uses
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !103
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !69
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !103
  %i.jf = load double, ptr %i.je, align 8, !tbaa !69
  %i.jg = fcmp ogt double %i.jd, %i.jf
  br i1 %i.jg, label %bb.al, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i23.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i23.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i23.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i23.i.i)
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ak, %bb.al
  %i.jh = icmp eq ptr %.sroa.0119.1, %.sroa.14.3
  br i1 %i.jh, label %._crit_edge201.loopexit, label %bb.u

._crit_edge201.loopexit:                          ; preds = %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit
  %.pre214 = load i8, ptr %i.fk, align 16, !tbaa !68, !range !44, !noalias !112
  %i.ji = trunc nuw i8 %.pre214 to i1
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.jj = phi i1 [ %i.ji, %._crit_edge201.loopexit ], [ false, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.jk, align 8, !tbaa !11
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.jm, align 8, !tbaa !28
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  br i1 %i.jj, label %bb.am, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread: ; preds = %._crit_edge201
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store double %.158, ptr %i.jo, align 8, !tbaa !22
  store <2 x double> %i.eo, ptr %i.jm, align 8, !tbaa !28
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.am:                                            ; preds = %._crit_edge201
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jq = load double, ptr %i.jp, align 16, !tbaa !72, !noalias !112
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.js = load double, ptr %i.jr, align 8, !tbaa !73, !noalias !112
  %i.jt = load double, ptr %i.jn, align 16, !tbaa !69, !noalias !112
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !70, !noalias !112 ; 2 uses
  %i.jw = call noundef double @llvm.fmuladd.f64(double %i.jt, double %i.jv, double %i.jq) ; 2 uses
  %i.jx = fadd double %i.js, %i.jv                ; 2 uses
  store double %i.jx, ptr %i.ju, align 8, !tbaa !70, !noalias !112
  %i.jy = fdiv double %i.jw, %i.jx                ; 2 uses
  store double %i.jy, ptr %i.jn, align 16, !tbaa !69, !noalias !112
  %i.jz = load double, ptr %i.fj, align 8, !tbaa !67, !noalias !112
  %i.ka = fadd double %i.jw, %i.jz
  store double %i.ka, ptr %i.fj, align 8, !tbaa !67, !noalias !112
  %i.kb = load ptr, ptr %i.eu, align 8, !tbaa !29, !noalias !112
  %i.kc = load ptr, ptr %4, align 16, !tbaa !29, !noalias !112
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.05.0.i.i = phi ptr [ %i.kb, %bb.am ], [ %i.ke, %bb.ao ] ; 3 uses
  %i.kd = icmp eq ptr %.sroa.05.0.i.i, %i.kc
  br i1 %i.kd, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ke = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !69, !noalias !112
  %i.kg = fcmp olt double %i.jy, %i.kf
  br i1 %i.kg, label %bb.an, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.ao, %bb.an
  %i.kh = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jn)
          to label %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit unwind label %bb.ar ; 0 uses

_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit: ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ki = load ptr, ptr %i.ev, align 16, !tbaa !27, !noalias !112 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %i.eu, align 8, !tbaa !25, !noalias !112
  %i.kl = load <2 x ptr>, ptr %4, align 16, !tbaa !29, !noalias !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 24, i1 false), !noalias !112
  %i.km = load double, ptr %i.fj, align 8, !tbaa !28, !noalias !112
  %.pre215 = load ptr, ptr %0, align 8, !tbaa !26 ; 3 uses
  %.pre216 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  store <2 x ptr> %i.kl, ptr %0, align 8, !tbaa !29
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre215, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ko = ptrtoint ptr %.pre216 to i64
  %i.kp = ptrtoint ptr %.pre215 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.pre215, i64 noundef %i.kq) #24
  %.pre217 = load ptr, ptr %i.kj, align 8, !tbaa !27
  %.pre218 = load ptr, ptr %i.kn, align 8, !tbaa !25
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %bb.ap, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kr = phi ptr [ %.pre218, %bb.ap ], [ %i.kk, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  %i.ks = phi ptr [ %.pre217, %bb.ap ], [ %i.ki, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  store double %i.km, ptr %i.jl, align 8, !tbaa !28
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.158, ptr %i.kt, align 8, !tbaa !22
  store <2 x double> %i.eo, ptr %i.jm, align 8, !tbaa !28
  %i.ku = icmp eq ptr %i.ks, %i.kr
  br i1 %i.ku, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kv = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ar:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigestD2Ev.exit, label %bb.au

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread, %bb.aq, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.ky = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.kz = load ptr, ptr %i.ev, align 16, !tbaa !27
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #24
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ld = ptrtoint ptr %.sroa.25.1 to i64
  %i.le = ptrtoint ptr %.sroa.0119.1 to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1, i64 noundef %i.lf) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !27
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.kx to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lk) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.au, %bb.ar, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.hy, %bb.ah ], [ %i.kw, %bb.ar ], [ %i.kw, %bb.au ]
  %i.ll = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i94, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95, label %bb.av

bb.av:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lm = load ptr, ptr %i.ev, align 16, !tbaa !27
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lp) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95

_ZN5folly7TDigest14CentroidMergerD2Ev.exit95:     ; preds = %bb.av, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99: ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ag, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95
  %.sroa.25.0176 = phi ptr [ %.sroa.25.1, %bb.ag ], [ %.sroa.25.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.25.1, %bb.af ], [ %.sroa.14.0187, %.loopexit ], [ %.sroa.14.0187, %.loopexit.split-lp ]
  %.sroa.0119.0166 = phi ptr [ %.sroa.0119.1, %bb.ag ], [ %.sroa.0119.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.0119.1, %bb.af ], [ %.sroa.0119.0188, %.loopexit ], [ %.sroa.0119.0188, %.loopexit.split-lp ] ; 2 uses
  %.pn67.pn = phi { ptr, i32 } [ %i.hx, %bb.ag ], [ %.pn63, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %i.hw, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lq = ptrtoint ptr %.sroa.25.0176 to i64
  %i.lr = ptrtoint ptr %.sroa.0119.0166 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0166, i64 noundef %i.ls) #24
  resume { ptr, i32 } %.pn67.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit: ; preds = %bb.at, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvS8_S8_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.09 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  %.sroa.02.0.copyload = load ptr, ptr %i.p, align 8
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.y = load double, ptr %i.x, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !103
  %i.aa = load double, ptr %i.z, align 8, !tbaa !69
  %i.ab = fcmp ogt double %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ae = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i, %.09
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !69
  %i.ak = load double, ptr %.sroa.02.0.copyload, align 8, !tbaa !69
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.an = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.an, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, !llvm.loop !116

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x ptr> %i.q, ptr %i.ao, align 8
  %.not = icmp eq i64 %.09, 0
  %i.ap = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !117

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeENS_5RangeIPPKS0_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i23.i.i = alloca %"class.folly::Range.23", align 8 ; 4 uses
  %.sroa.0.i.i.i.i = alloca %"class.folly::Range.23", align 8 ; 4 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 16
  %i.j = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 9 uses
  %i.o = add i64 %i.e, -8
  %i.p = sub i64 %i.o, %i.f                       ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 120
  br i1 %min.iters.check, label %.lr.ph.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi262 = phi <4 x ptr> [ splat (ptr null), %vector.ph ], [ %i.bd, %vector.body ]
  %i.u = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !118 ; 5 uses
  %i.x = extractelement <4 x ptr> %i.w, i64 0     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = extractelement <4 x ptr> %i.w, i64 1     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = extractelement <4 x ptr> %i.w, i64 2    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = extractelement <4 x ptr> %i.w, i64 3    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %i.ag = insertelement <4 x ptr> %i.af, ptr %i.aa, i64 1
  %i.ah = insertelement <4 x ptr> %i.ag, ptr %i.ac, i64 2
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %i.ae, i64 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ar = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ao, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.ap, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.aq, i64 3 ; 2 uses
  %i.av = icmp ne <4 x ptr> %i.ai, %i.au
  %i.aw = freeze <4 x i1> %i.av                   ; 3 uses
  %i.ax = ptrtoint <4 x ptr> %i.au to <4 x i64>
  %i.ay = ptrtoint <4 x ptr> %i.ai to <4 x i64>
  %i.az = sub <4 x i64> %i.ax, %i.ay
  %i.ba = ashr exact <4 x i64> %i.az, splat (i64 4)
  %i.bb = bitcast <4 x i1> %i.aw to i4
  %.not267 = icmp eq i4 %i.bb, 0                  ; 2 uses
  %i.bc = select i1 %.not267, <4 x i1> %i.u, <4 x i1> %i.aw ; 2 uses
  %i.bd = select i1 %.not267, <4 x ptr> %vec.phi262, <4 x ptr> %i.w ; 2 uses
  %i.be = select <4 x i1> %i.aw, <4 x i64> %i.ba, <4 x i64> zeroinitializer
  %i.bf = add <4 x i64> %i.be, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %i.bh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bf) ; 2 uses
  %i.bi = tail call ptr @llvm.experimental.vector.extract.last.active.v4p0(<4 x ptr> %i.bd, <4 x i1> %i.bc, ptr null) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader277

.lr.ph.preheader277:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  %.046180.ph = phi ptr [ null, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  %.048179.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.147.lcssa = phi ptr [ %i.bi, %middle.block ], [ %.147, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i64 [ %i.bh, %middle.block ], [ %.1, %.lr.ph ] ; 2 uses
  %i.bj = icmp eq i64 %.1.lcssa, 0
  br i1 %i.bj, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader277, %.lr.ph
  %.0181 = phi i64 [ %.1, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader277 ]
  %.046180 = phi ptr [ %.147, %.lr.ph ], [ %.046180.ph, %.lr.ph.preheader277 ]
  %.048179 = phi ptr [ %i.bu, %.lr.ph ], [ %.048179.ph, %.lr.ph.preheader277 ] ; 2 uses
  %i.bk = load ptr, ptr %.048179, align 8, !tbaa !118 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4
  %.147 = select i1 %i.bo, ptr %.046180, ptr %i.bk ; 2 uses
  %i.bt = select i1 %i.bo, i64 0, i64 %i.bs
  %.1 = add i64 %i.bt, %.0181                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048179, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bu, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.bx, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %.147.lcssa, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %i.ca = load ptr, ptr %.147.lcssa, align 8, !tbaa !26 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = ashr exact i64 %i.cd, 4
  %i.cf = icmp eq i64 %.1.lcssa, %i.ce
  br i1 %i.cf, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.147.lcssa, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = icmp eq i64 %i.ch, %i.n
  br i1 %i.ci, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp ugt i64 %i.cd, 9223372036854775792
  br i1 %i.cj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !35

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.cl = phi ptr [ null, %bb.h ], [ %i.ck, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !27
  %i.cp = load ptr, ptr %.147.lcssa, align 8, !tbaa !29 ; 2 uses
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !29 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %i.cl, %bb.j ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.j ], [ %i.ct, %.lr.ph.i.i.i.i.i.i ]
end_hunk_2
begin_hunk_3_@_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE:bb.a
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i:         ; preds = %bb.t, %bb.s
  %.0.i.i = phi double [ %i.fk, %bb.s ], [ %i.fm, %bb.t ]
  %i.fn = fmul double %.158, %.0.i.i
  store double %i.fn, ptr %i.fe, align 16, !tbaa !66
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  store double 0.000000e+00, ptr %i.fo, align 8, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 6 uses
  store i8 0, ptr %i.fp, align 16, !tbaa !68
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 1.000000e+00>, ptr %i.fr, align 16, !tbaa !28
  %i.fs = icmp eq ptr %.sroa.0119.1, %.sroa.14.1
  br i1 %i.fs, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0119.1, i64 8
  %i.fy = ptrtoint ptr %.sroa.0119.1 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph200, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit
  %.sroa.14.2199 = phi ptr [ %.sroa.14.1, %.lr.ph200 ], [ %.sroa.14.3, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit ] ; 2 uses
  %i.fz = load ptr, ptr %.sroa.0119.1, align 8, !tbaa !103 ; 5 uses
  %i.ga = load i8, ptr %i.fp, align 16, !tbaa !68, !range !44, !noundef !45
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.v, label %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false)
  store i8 1, ptr %i.fp, align 16, !tbaa !68
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !70
  store double %i.gd, ptr %i.fq, align 8, !tbaa !71
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !70 ; 3 uses
  %i.gg = load double, ptr %i.fq, align 8, !tbaa !71
  %i.gh = fadd double %i.gf, %i.gg                ; 2 uses
  store double %i.gh, ptr %i.fq, align 8, !tbaa !71
  %i.gi = load double, ptr %i.fe, align 16, !tbaa !66
  %i.gj = fcmp ugt double %i.gh, %i.gi
  br i1 %i.gj, label %bb.w, label %._crit_edge210

._crit_edge210:                                   ; preds = %bb.v
  %.pre = load double, ptr %i.fu, align 16, !tbaa !72
  %.pre212 = load double, ptr %i.fv, align 8, !tbaa !73
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gk = load double, ptr %i.fd, align 8, !tbaa !65
  %i.gl = load i64, ptr %i.fb, align 8, !tbaa !57
  %i.gm = uitofp i64 %i.gl to double
  %i.gn = fcmp ogt double %i.gk, %i.gm
  %.pre211 = load double, ptr %i.fu, align 16, !tbaa !72 ; 2 uses
  %.pre213 = load double, ptr %i.fv, align 8, !tbaa !73 ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge210, %bb.w
  %i.go = phi double [ %.pre212, %._crit_edge210 ], [ %.pre213, %bb.w ]
  %i.gp = phi double [ %.pre, %._crit_edge210 ], [ %.pre211, %bb.w ]
  %i.gq = load double, ptr %i.fz, align 8, !tbaa !69
  %i.gr = call double @llvm.fmuladd.f64(double %i.gq, double %i.gf, double %i.gp)
  store double %i.gr, ptr %i.fu, align 16, !tbaa !72
  %i.gs = fadd double %i.gf, %i.go
  store double %i.gs, ptr %i.fv, align 8, !tbaa !73
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.y:                                             ; preds = %bb.w
  %i.gt = load double, ptr %i.ft, align 16, !tbaa !69
  %i.gu = load double, ptr %i.fw, align 8, !tbaa !70 ; 2 uses
  %i.gv = call noundef double @llvm.fmuladd.f64(double %i.gt, double %i.gu, double %.pre211) ; 2 uses
  %i.gw = fadd double %.pre213, %i.gu             ; 2 uses
  store double %i.gw, ptr %i.fw, align 8, !tbaa !70
  %i.gx = fdiv double %i.gv, %i.gw                ; 2 uses
  store double %i.gx, ptr %i.ft, align 16, !tbaa !69
  %i.gy = load double, ptr %i.fo, align 8, !tbaa !67
  %i.gz = fadd double %i.gv, %i.gy
  store double %i.gz, ptr %i.fo, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  %i.ha = load ptr, ptr %i.ez, align 8, !tbaa !29
  %i.hb = load ptr, ptr %4, align 16, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.sroa.05.0.i = phi ptr [ %i.ha, %bb.y ], [ %i.hd, %bb.aa ] ; 3 uses
  %i.hc = icmp eq ptr %.sroa.05.0.i, %i.hb
  br i1 %i.hc, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hd = getelementptr inbounds i8, ptr %.sroa.05.0.i, i64 -16 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !69
  %i.hf = fcmp olt double %i.gx, %i.he
  br i1 %i.hf, label %bb.z, label %.critedge.i, !prof !35, !llvm.loop !74

.critedge.i:                                      ; preds = %bb.aa, %bb.z
  %i.hg = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr %.sroa.05.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ft)
          to label %.noexc unwind label %bb.ah    ; 0 uses

.noexc:                                           ; preds = %.critedge.i
  %i.hh = load double, ptr %i.fd, align 8, !tbaa !65 ; 2 uses
  %i.hi = fadd double %i.hh, 1.000000e+00
  store double %i.hi, ptr %i.fd, align 8, !tbaa !65
  %i.hj = load i64, ptr %i.fb, align 8, !tbaa !57
  %i.hk = uitofp i64 %i.hj to double
  %i.hl = fdiv double %i.hh, %i.hk                ; 4 uses
  %i.hm = fcmp ult double %i.hl, 5.000000e-01
  br i1 %i.hm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc
  %i.hn = fsub double 1.000000e+00, %i.hl         ; 2 uses
  %i.ho = fmul nnan double %i.hn, -2.000000e+00
  %i.hp = call double @llvm.fmuladd.f64(double %i.ho, double %i.hn, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

bb.ac:                                            ; preds = %.noexc
  %i.hq = fmul double %i.hl, 2.000000e+00
  %i.hr = fmul double %i.hl, %i.hq
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit:           ; preds = %bb.ab, %bb.ac
  %.0.i = phi double [ %i.hp, %bb.ab ], [ %i.hr, %bb.ac ]
  %i.hs = load double, ptr %i.fc, align 16, !tbaa !64
  %i.ht = fmul double %.0.i, %i.hs
  store double %i.ht, ptr %i.fe, align 16, !tbaa !66
  %i.hu = load i8, ptr %i.fp, align 16, !tbaa !68, !range !44, !noundef !45
  %i.hv = trunc nuw i8 %i.hu to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false)
  br i1 %i.hv, label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit
  store i8 1, ptr %i.fp, align 16, !tbaa !68
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit: ; preds = %bb.x, %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit, %bb.ad
  %i.hw = load ptr, ptr %.sroa.0119.1, align 8, !tbaa !103
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  store ptr %i.hx, ptr %.sroa.0119.1, align 8, !tbaa !103
  %i.hy = load ptr, ptr %i.fx, align 8, !tbaa !105
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.ia = getelementptr inbounds i8, ptr %.sroa.14.2199, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0119.1, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false)
  br label %bb.ai

bb.af:                                            ; preds = %._crit_edge192
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit99

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i, %bb.q
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit99

bb.ah:                                            ; preds = %.critedge.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.ai:                                            ; preds = %bb.ae, %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %.sroa.14.3 = phi ptr [ %i.ia, %bb.ae ], [ %.sroa.14.2199, %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit ] ; 3 uses
  %i.ie = ptrtoint ptr %.sroa.14.3 to i64
  %i.if = sub i64 %i.ie, %i.fy
  %i.ig = ashr exact i64 %i.if, 4                 ; 3 uses
  %i.ih = icmp ugt i64 %i.ig, 2
  br i1 %i.ih, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %i.ii = phi i64 [ %i.jb, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %i.ij = phi i64 [ %i.ja, %bb.aj ], [ 0, %bb.ai ]
  %.037.i.i = phi i64 [ %i.is, %bb.aj ], [ 0, %bb.ai ]
  %i.ik = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.ii
  %i.il = or disjoint i64 %i.ij, 1                ; 2 uses
  %i.im = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.il
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !103
  %i.io = load double, ptr %i.in, align 8, !tbaa !69
  %i.ip = load ptr, ptr %i.im, align 8, !tbaa !103
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !69
  %i.ir = fcmp ogt double %i.io, %i.iq
  %i.is = select i1 %i.ir, i64 %i.il, i64 %i.ii, !unpredictable !45 ; 4 uses
  %i.it = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.037.i.i ; 3 uses
  %i.iu = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %i.is ; 3 uses
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !103
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !69
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !103
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !69
  %i.iz = fcmp ogt double %i.iw, %i.iy
  br i1 %i.iz, label %bb.aj, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.aj:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.it, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %i.iu, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ja = shl i64 %i.is, 1                        ; 3 uses
  %i.jb = add i64 %i.ja, 2                        ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ig
  br i1 %i.jc, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !127

._crit_edge.loopexit.i.i:                         ; preds = %bb.aj
  %i.jd = or disjoint i64 %i.ja, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ai
  %.0.lcssa.i.i = phi i64 [ 0, %bb.ai ], [ %i.is, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi i64 [ 1, %bb.ai ], [ %i.jd, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.je = icmp ult i64 %.lcssa.i.i, %i.ig
  br i1 %i.je, label %bb.ak, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.jf = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.0.lcssa.i.i ; 3 uses
  %i.jg = getelementptr inbounds [16 x i8], ptr %.sroa.0119.1, i64 %.lcssa.i.i ; 3 uses
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !103
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !69
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !103
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !69
  %i.jl = fcmp ogt double %i.ji, %i.jk
  br i1 %i.jl, label %bb.al, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i23.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i23.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i23.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i23.i.i)
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ak, %bb.al
  %i.jm = icmp eq ptr %.sroa.0119.1, %.sroa.14.3
  br i1 %i.jm, label %._crit_edge201.loopexit, label %bb.u

._crit_edge201.loopexit:                          ; preds = %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit
  %.pre214 = load i8, ptr %i.fp, align 16, !tbaa !68, !range !44, !noalias !128
  %i.jn = trunc nuw i8 %.pre214 to i1
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.jo = phi i1 [ %i.jn, %._crit_edge201.loopexit ], [ false, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.jp, align 8, !tbaa !11
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.jr, align 8, !tbaa !28
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  br i1 %i.jo, label %bb.am, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread: ; preds = %._crit_edge201
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store double %.158, ptr %i.jt, align 8, !tbaa !22
  store <2 x double> %i.et, ptr %i.jr, align 8, !tbaa !28
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.am:                                            ; preds = %._crit_edge201
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jv = load double, ptr %i.ju, align 16, !tbaa !72, !noalias !128
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !73, !noalias !128
  %i.jy = load double, ptr %i.js, align 16, !tbaa !69, !noalias !128
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !70, !noalias !128 ; 2 uses
  %i.kb = call noundef double @llvm.fmuladd.f64(double %i.jy, double %i.ka, double %i.jv) ; 2 uses
  %i.kc = fadd double %i.jx, %i.ka                ; 2 uses
  store double %i.kc, ptr %i.jz, align 8, !tbaa !70, !noalias !128
  %i.kd = fdiv double %i.kb, %i.kc                ; 2 uses
  store double %i.kd, ptr %i.js, align 16, !tbaa !69, !noalias !128
  %i.ke = load double, ptr %i.fo, align 8, !tbaa !67, !noalias !128
  %i.kf = fadd double %i.kb, %i.ke
  store double %i.kf, ptr %i.fo, align 8, !tbaa !67, !noalias !128
  %i.kg = load ptr, ptr %i.ez, align 8, !tbaa !29, !noalias !128
  %i.kh = load ptr, ptr %4, align 16, !tbaa !29, !noalias !128
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.05.0.i.i = phi ptr [ %i.kg, %bb.am ], [ %i.kj, %bb.ao ] ; 3 uses
  %i.ki = icmp eq ptr %.sroa.05.0.i.i, %i.kh
  br i1 %i.ki, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kj = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !69, !noalias !128
  %i.kl = fcmp olt double %i.kd, %i.kk
  br i1 %i.kl, label %bb.an, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.ao, %bb.an
  %i.km = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.js)
          to label %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit unwind label %bb.ar ; 0 uses

_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit: ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kn = load ptr, ptr %i.fa, align 16, !tbaa !27, !noalias !128 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kp = load ptr, ptr %i.ez, align 8, !tbaa !25, !noalias !128
  %i.kq = load <2 x ptr>, ptr %4, align 16, !tbaa !29, !noalias !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 24, i1 false), !noalias !128
  %i.kr = load double, ptr %i.fo, align 8, !tbaa !28, !noalias !128
  %.pre215 = load ptr, ptr %0, align 8, !tbaa !26 ; 3 uses
  %.pre216 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  store <2 x ptr> %i.kq, ptr %0, align 8, !tbaa !29
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre215, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kt = ptrtoint ptr %.pre216 to i64
  %i.ku = ptrtoint ptr %.pre215 to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %.pre215, i64 noundef %i.kv) #24
  %.pre217 = load ptr, ptr %i.ko, align 8, !tbaa !27
  %.pre218 = load ptr, ptr %i.ks, align 8, !tbaa !25
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %bb.ap, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kw = phi ptr [ %.pre218, %bb.ap ], [ %i.kp, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  %i.kx = phi ptr [ %.pre217, %bb.ap ], [ %i.kn, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  store double %i.kr, ptr %i.jq, align 8, !tbaa !28
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.158, ptr %i.ky, align 8, !tbaa !22
  store <2 x double> %i.et, ptr %i.jr, align 8, !tbaa !28
  %i.kz = icmp eq ptr %i.kx, %i.kw
  br i1 %i.kz, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.la = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ar:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.lb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigestD2Ev.exit, label %bb.au

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread, %bb.aq, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.ld = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.le = load ptr, ptr %i.fa, align 16, !tbaa !27
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lh) #24
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.li = ptrtoint ptr %.sroa.25.1 to i64
  %i.lj = ptrtoint ptr %.sroa.0119.1 to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1, i64 noundef %i.lk) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !27
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lc to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lp) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.au, %bb.ar, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.id, %bb.ah ], [ %i.lb, %bb.ar ], [ %i.lb, %bb.au ]
  %i.lq = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i94, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95, label %bb.av

bb.av:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lr = load ptr, ptr %i.fa, align 16, !tbaa !27
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lu) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95

_ZN5folly7TDigest14CentroidMergerD2Ev.exit95:     ; preds = %bb.av, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit99

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit99: ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ag, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95
  %.sroa.25.0176 = phi ptr [ %.sroa.25.1, %bb.ag ], [ %.sroa.25.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.25.1, %bb.af ], [ %.sroa.14.0187, %.loopexit ], [ %.sroa.14.0187, %.loopexit.split-lp ]
  %.sroa.0119.0166 = phi ptr [ %.sroa.0119.1, %bb.ag ], [ %.sroa.0119.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.0119.1, %bb.af ], [ %.sroa.0119.0188, %.loopexit ], [ %.sroa.0119.0188, %.loopexit.split-lp ] ; 2 uses
  %.pn67.pn = phi { ptr, i32 } [ %i.ic, %bb.ag ], [ %.pn63, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %i.ib, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lv = ptrtoint ptr %.sroa.25.0176 to i64
  %i.lw = ptrtoint ptr %.sroa.0119.0166 to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0166, i64 noundef %i.lx) #24
  resume { ptr, i32 } %.pn67.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit: ; preds = %bb.at, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvS9_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.09 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8
end_hunk_3
