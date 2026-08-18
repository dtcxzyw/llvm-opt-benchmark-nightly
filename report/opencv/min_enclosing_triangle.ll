inline.NumInlined: 423
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"!points.empty()\00", align 1
@__func__._ZN20minEnclosingTriangleL24findMinEnclosingTriangleERKN2cv11_InputArrayERKNS0_12_OutputArrayERd = private unnamed_addr constant [25 x i8] c"findMinEnclosingTriangle\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/opencv/opencv/modules/geometry/src/min_enclosing_triangle.cpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"areEqualPoints(p, q) == false\00", align 1
@__func__._ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_ = private unnamed_addr constant [31 x i8] c"lineEquationDeterminedByPoints\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [111 x i8] c"The position of the vertex C on side B could not be determined, because the considered lines do not intersect.\00", align 1
@__func__._ZN20minEnclosingTriangleL18findVertexCOnSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_ = private unnamed_addr constant [19 x i8] c"findVertexCOnSideB\00", align 1
@.str.6 = private unnamed_addr constant [88 x i8] c"The position of side B could not be determined, because gamma(b) could not be computed.\00", align 1
@__func__._ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_ = private unnamed_addr constant [12 x i8] c"updateSideB\00", align 1

; Function Attrs: mustprogress uwtable
define noundef double @_ZN2cv20minEnclosingTriangleERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Point_", align 8        ; 8 uses
  %7 = alloca %"class.cv::Point_", align 8        ; 6 uses
  %8 = alloca %"class.cv::Point_", align 8        ; 8 uses
  %9 = alloca %"class.cv::Point_", align 8        ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %12 = alloca %"class.cv::Point_", align 8       ; 7 uses
  %13 = alloca %"class.cv::Point_", align 8       ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::Point_", align 8       ; 6 uses
  %17 = alloca %"class.cv::Point_", align 8       ; 5 uses
  %18 = alloca %"class.cv::Point_", align 8       ; 8 uses
  %19 = alloca %"class.cv::Point_", align 8       ; 6 uses
  %20 = alloca %"class.cv::Point_", align 8       ; 5 uses
  %21 = alloca %"class.cv::Point_", align 8       ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.std::vector", align 8      ; 29 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %i.f = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL24findMinEnclosingTriangleERKN2cv11_InputArrayERKNS0_12_OutputArrayERd, ptr noundef nonnull @.str.1, i32 noundef 320) #17
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %23, align 8, !tbaa !8     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %.pn17.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit50.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.n = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !15
  store ptr %25, ptr %i.n, align 8, !tbaa !18
  invoke void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %26, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false), !alias.scope !19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16, !noalias !19
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.q, align 8, !noalias !19
  store i32 -2113732571, ptr %22, align 8, !tbaa !15, !noalias !19
  store ptr %27, ptr %i.p, align 8, !tbaa !18, !noalias !19
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16, !noalias !19
  %i.s = load ptr, ptr %27, align 8, !tbaa !22, !alias.scope !19 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %.body.sink.split.i

_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16, !noalias !19
  %i.t = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = load ptr, ptr %27, align 8, !tbaa !22    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp ugt i64 %i.y, 24
  br i1 %i.z, label %bb.j, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 4
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store <2 x float> zeroinitializer, ptr %19, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = lshr exact i64 %i.y, 3                  ; 3 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 17 uses
  store i32 1, ptr %i.d, align 4, !tbaa !28
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN20minEnclosingTriangleL32findMinimumAreaEnclosingTriangleERKSt6vectorIN2cv6Point_IfEESaIS3_EERS5_Rd.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.af = and i64 %i.ab, 4294967295
  br label %bb.k

bb.k:                                             ; preds = %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i, %.lr.ph.i.i.i
  %.1 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i.i.i ], [ %.2, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 6 uses
  %.sroa.0.7.i = phi ptr [ null, %.lr.ph.i.i.i ], [ %.sroa.0.8.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 28 uses
  %.sroa.21.4.i = phi ptr [ null, %.lr.ph.i.i.i ], [ %.sroa.21.5.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 7 uses
  %.sroa.45.7.i = phi ptr [ null, %.lr.ph.i.i.i ], [ %.sroa.45.8.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 25 uses
  %.0..0.125244.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %.0..0.125.i.i.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ]
  %.0..promoted.i.i.i = phi i32 [ 2, %.lr.ph.i.i.i ], [ %.0..0..i.i.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i ] ; 14 uses
  %.val.i.i.i = load ptr, ptr %27, align 8        ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = icmp eq i64 %indvars.iv.i.i.i, 0
  %.v.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ab, i64 %indvars.iv.i.i.i
  %i.ai = add nuw i64 %.v.i.i.i.i.i.i, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 10 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.aj
  %i.al = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.am = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.an = fsub <2 x float> %i.am, %i.al           ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = extractelement <2 x float> %i.an, i64 1
  %i.ar = fpext float %i.aq to double             ; 3 uses
  %i.as = fneg double %i.ar
  %i.at = fmul double %i.ar, %i.ar
  %i.au = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.at) ; 2 uses
  %sqrt.i.i.i.i.i.i = call double @llvm.sqrt.f64(double %i.au)
  %i.av = fcmp une double %i.au, 0.000000e+00
  %.phi.trans.insert.i.i.i = zext i32 %.0..promoted.i.i.i to i64
  %.phi.trans.insert234.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.phi.trans.insert.i.i.i ; 2 uses
  %.pre.i.i.i = load float, ptr %.phi.trans.insert234.i.i.i, align 4
  %.sroa_idx.i14.i.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert234.i.i.i, i64 4
  %.pre235.i.i.i = load float, ptr %.sroa_idx.i14.i.phi.trans.insert.i.i.i, align 4
  %i.aw = insertelement <2 x i1> poison, i1 %i.av, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %sqrt.i.i.i.i.i.i, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge, %bb.k
  %i.bf = phi float [ %.pre235.i.i.i, %bb.k ], [ %i.bn, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ]
  %i.bg = phi float [ %.pre.i.i.i, %bb.k ], [ %i.cb, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ]
  %i.bh = phi i32 [ %.0..promoted.i.i.i, %bb.k ], [ %i.bj, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ] ; 3 uses
  %i.bi = add i32 %i.bh, 1
  %i.bj = urem i32 %i.bi, %i.ac                   ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.bk ; 2 uses
  %.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bm = load <2 x float>, ptr %i.bl, align 4    ; 2 uses
  %i.bn = load float, ptr %.sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %30 = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bo = insertelement <2 x float> %30, float %i.bf, i64 1
  %31 = fsub <2 x float> %29, %i.bo
  %i.bp = fpext <2 x float> %31 to <2 x double>
  %i.bq = insertelement <2 x float> %i.bm, float %i.bg, i64 1
  %i.br = fsub <2 x float> %i.bc, %i.bq
  %i.bs = fpext <2 x float> %i.br to <2 x double>
  %i.bt = fmul <2 x double> %i.bb, %i.bs
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bp, <2 x double> %i.bt)
  %i.bv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bu)
  %i.bw = fdiv <2 x double> %i.bv, %i.be
  %i.bx = select <2 x i1> %i.ax, <2 x double> %i.bw, <2 x double> zeroinitializer ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0 ; 3 uses
  %i.bz = extractelement <2 x double> %i.bx, i64 1 ; 3 uses
  %i.ca = fcmp ogt double %i.by, %i.bz
  %i.cb = extractelement <2 x float> %i.bm, i64 0
  br i1 %i.ca, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i.i.i.i

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i
  %i.cc = fsub double %i.by, %i.bz
  %i.cd = call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = call noundef double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.cf = call noundef double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cg = fcmp ogt double %i.ce, 1.000000e+00
  %.sroa.speculated2.i.i.i.i.i.i.i = select i1 %i.cg, double %i.ce, double 1.000000e+00 ; 2 uses
  %i.ch = fcmp olt double %.sroa.speculated2.i.i.i.i.i.i.i, %i.cf
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.ch, double %i.cf, double %.sroa.speculated2.i.i.i.i.i.i.i
  %i.ci = fmul double %.sroa.speculated.i.i.i.i.i.i.i, 1.000000e-05
  %i.cj = fcmp ugt double %i.cd, %i.ci
  br i1 %i.cj, label %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i.i.i.i, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i
  br label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i, !llvm.loop !29

_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i.i.i.i
  %i.ck = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 9 uses
  store i32 %i.bh, ptr %i.e, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.cl = icmp eq i64 %indvars.iv.next.i.i.i, %i.af ; 2 uses
  %i.cm = select i1 %i.cl, i64 0, i64 %indvars.iv.next.i.i.i ; 3 uses
  br label %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i

_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i: ; preds = %bb.r, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i
  %.0..0.125.i.i.i = phi i32 [ %.0..0.125244.i.i.i, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.0..0..0..0..0..0..0..0..0.125.pre.i.i.i, %bb.r ] ; 13 uses
  %.val20.i.i.i.i = phi ptr [ %.val.i.i.i, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.val20.i.pre.i.i.i, %bb.r ] ; 5 uses
  %.0..promoted212.i.i.i = phi i32 [ %i.bh, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.0..0..0..0..0..0..0..0..0.114.pre.i.i.i, %bb.r ] ; 5 uses
  %i.cn = phi <2 x float> [ %i.am, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %i.hx, %bb.r ]
  %i.co = phi <2 x float> [ %i.al, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %i.hw, %bb.r ] ; 3 uses
  %i.cp = zext i32 %.0..promoted212.i.i.i to i64  ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %i.cp
  %i.cr = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = fpext float %i.cs to double             ; 3 uses
  %i.cu = extractelement <2 x float> %i.cr, i64 1
  %i.cv = fpext float %i.cu to double             ; 3 uses
  %i.cw = fneg double %i.cv
  %i.cx = fmul double %i.cv, %i.cv
  %i.cy = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cx) ; 2 uses
  %sqrt.i.i.i33.i.i.i = call double @llvm.sqrt.f64(double %i.cy)
  %i.cz = fcmp une double %i.cy, 0.000000e+00
  %i.da = zext i32 %.0..0.125.i.i.i to i64        ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %i.da ; 2 uses
  %i.dc = load <2 x float>, ptr %i.cq, align 4    ; 2 uses
  %i.dd = load <2 x float>, ptr %i.db, align 4    ; 2 uses
  %i.de = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.dg = fsub <2 x float> %i.de, %i.df
  %i.dh = fpext <2 x float> %i.dg to <2 x double>
  %i.di = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.dk = fsub <2 x float> %i.di, %i.dj
  %i.dl = fpext <2 x float> %i.dk to <2 x double>
  %i.dm = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dn, %i.dl
  %i.dp = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.dh, <2 x double> %i.do)
  %i.ds = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr)
  %i.dt = insertelement <2 x double> poison, double %sqrt.i.i.i33.i.i.i, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x double> %i.ds, %i.du
  %i.dw = insertelement <2 x i1> poison, i1 %i.cz, i64 0
  %i.dx = shufflevector <2 x i1> %i.dw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x double> %i.dv, <2 x double> zeroinitializer ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dy, i64 1
  %i.eb = fcmp ogt double %i.dz, %i.ea
  br i1 %i.eb, label %bb.l, label %_ZN20minEnclosingTriangleL20moveAIfLowAndBIfHighERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjS8_j.exit.i.i.i

bb.l:                                             ; preds = %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %i.aj
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %indvars.iv.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !26
  %i.ee = icmp eq i32 %.0..0.125.i.i.i, 0
  %.v.i.i81.i.i.i = select i1 %i.ee, i32 %i.ac, i32 %.0..0.125.i.i.i
  %i.ef = add i32 %.v.i.i81.i.i.i, -1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %i.eg
  %i.ei = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL27findGammaIntersectionPointsERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_RS3_SA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %i.ck, i32 noundef %.0..0.125.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.db, ptr noundef nonnull align 4 dereferenceable(8) %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %i.ed, ptr noundef nonnull align 4 dereferenceable(8) %i.ec, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i

.noexc.i:                                         ; preds = %bb.l
  br i1 %i.ei, label %bb.m, label %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i

bb.m:                                             ; preds = %.noexc.i
  %i.ej = load ptr, ptr %27, align 8, !tbaa !22   ; 6 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.cm ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.aj ; 2 uses
  %i.en = getelementptr i8, ptr %i.el, i64 4
  %i.eo = load <2 x float>, ptr %i.el, align 4    ; 3 uses
  %.val24.i.i.i.i = load float, ptr %i.en, align 4 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.em, align 4    ; 3 uses
  %i.eq = extractelement <2 x float> %i.eo, i64 0
  %i.er = fpext float %i.eq to double             ; 3 uses
  %i.es = extractelement <2 x float> %i.ep, i64 0
  %i.et = fpext float %i.es to double             ; 2 uses
  %i.eu = fsub double %i.er, %i.et
  %i.ev = call noundef double @llvm.fabs.f64(double %i.eu)
  %i.ew = call noundef double @llvm.fabs.f64(double %i.er) ; 2 uses
  %i.ex = call noundef double @llvm.fabs.f64(double %i.et) ; 2 uses
  %i.ey = fcmp ogt double %i.ew, 1.000000e+00
  %.sroa.speculated2.i.i.i.i97.i.i.i = select i1 %i.ey, double %i.ew, double 1.000000e+00 ; 2 uses
  %i.ez = fcmp olt double %.sroa.speculated2.i.i.i.i97.i.i.i, %i.ex
  %.sroa.speculated.i.i.i.i98.i.i.i = select i1 %i.ez, double %i.ex, double %.sroa.speculated2.i.i.i.i97.i.i.i
  %i.fa = fmul double %.sroa.speculated.i.i.i.i98.i.i.i, 1.000000e-05
  %i.fb = fcmp ugt double %i.ev, %i.fa
  br i1 %i.fb, label %bb.q, label %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i.i.i.i

_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i.i.i.i: ; preds = %bb.m
  %i.fc = getelementptr i8, ptr %i.em, i64 4
  %.val26.i.i.i.i = load float, ptr %i.fc, align 4
  %i.fd = fpext float %.val24.i.i.i.i to double   ; 2 uses
  %i.fe = fpext float %.val26.i.i.i.i to double   ; 2 uses
  %i.ff = fsub double %i.fd, %i.fe
  %i.fg = call noundef double @llvm.fabs.f64(double %i.ff)
  %i.fh = call noundef double @llvm.fabs.f64(double %i.fd) ; 2 uses
  %i.fi = call noundef double @llvm.fabs.f64(double %i.fe) ; 2 uses
  %i.fj = fcmp ogt double %i.fh, 1.000000e+00
  %.sroa.speculated2.i.i4.i.i.i.i.i = select i1 %i.fj, double %i.fh, double 1.000000e+00 ; 2 uses
  %i.fk = fcmp olt double %.sroa.speculated2.i.i4.i.i.i.i.i, %i.fi
  %.sroa.speculated.i.i5.i.i.i.i.i = select i1 %i.fk, double %i.fi, double %.sroa.speculated2.i.i4.i.i.i.i.i
  %i.fl = fmul double %.sroa.speculated.i.i5.i.i.i.i.i, 1.000000e-05
  %i.fm = fcmp ugt double %i.fg, %i.fl
  br i1 %i.fm, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc21.i:                                       ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_, ptr noundef nonnull @.str.1, i32 noundef 1411) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc21.i
  unreachable

bb.p:                                             ; preds = %.noexc21.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99.i.i.i: ; preds = %bb.p
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !14
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body22.i

_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.val20.i.pre.pre.i.i.i = load ptr, ptr %27, align 8, !tbaa !22
  br label %bb.r

bb.q:                                             ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i.i.i.i, %bb.m
  %i.ft = shufflevector <2 x float> %i.ep, <2 x float> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.fu = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.fv = fsub <2 x float> %i.ft, %i.fu
  %i.fw = fneg float %.val24.i.i.i.i
  %i.fx = fneg double %i.er
  %i.fy = load float, ptr %8, align 8, !tbaa !31
  %i.fz = load float, ptr %i.ad, align 4, !tbaa !33
  %i.ga = fpext float %i.fz to double
  %i.gb = fpext <2 x float> %i.fv to <2 x double> ; 4 uses
  %i.gc = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fw, i64 1
  %i.ge = fpext <2 x float> %i.gd to <2 x double>
  %i.gf = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ga, i64 1
  %i.gh = fmul <2 x double> %i.gg, %i.gb
end_hunk_0
