Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/min_enclosing_triangle?download=true
inline.NumInlined: 423
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
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
  %27 = alloca %"class.std::vector", align 8      ; 30 uses
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
  %i.i = load ptr, ptr %23, align 8, !tbaa !13    ; 2 uses
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
  store i32 33619968, ptr %26, align 8, !tbaa !49
  store ptr %25, ptr %i.n, align 8, !tbaa !50
  invoke void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %26, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false), !alias.scope !51
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16, !noalias !51
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.q, align 8, !noalias !51
  store i32 -2113732571, ptr %22, align 8, !tbaa !49, !noalias !51
  store ptr %27, ptr %i.p, align 8, !tbaa !50, !noalias !51
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16, !noalias !51
  %i.s = load ptr, ptr %27, align 8, !tbaa !17, !alias.scope !51 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %.body.sink.split.i

_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16, !noalias !51
  %i.t = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = load ptr, ptr %27, align 8, !tbaa !17    ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp ugt i64 %i.y, 24
  br i1 %i.z, label %bb.j, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZN20minEnclosingTriangleL10initialiseERSt6vectorIN2cv6Point_IfEESaIS3_EERd.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 4
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store <2 x float> zeroinitializer, ptr %19, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = lshr exact i64 %i.y, 3                  ; 3 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 17 uses
  store i32 1, ptr %i.d, align 4, !tbaa !53
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
  %i.bf = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge, %bb.k
  %i.bg = phi float [ %.pre235.i.i.i, %bb.k ], [ %i.bo, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ]
  %i.bh = phi float [ %.pre.i.i.i, %bb.k ], [ %i.cb, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ]
  %i.bi = phi i32 [ %.0..promoted.i.i.i, %bb.k ], [ %i.bk, %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i.backedge ] ; 3 uses
  %i.bj = add i32 %i.bi, 1
  %i.bk = urem i32 %i.bj, %i.ac                   ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.bl ; 2 uses
  %.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bn = load <2 x float>, ptr %i.bm, align 4    ; 2 uses
  %i.bo = load float, ptr %.sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %29 = insertelement <2 x float> %i.bp, float %i.bg, i64 1
  %30 = fsub <2 x float> %i.bf, %29
  %31 = fpext <2 x float> %30 to <2 x double>
  %i.bq = insertelement <2 x float> %i.bn, float %i.bh, i64 1
  %i.br = fsub <2 x float> %i.bc, %i.bq
  %i.bs = fpext <2 x float> %i.br to <2 x double>
  %i.bt = fmul <2 x double> %i.bb, %i.bs
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %31, <2 x double> %i.bt)
  %i.bv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bu)
  %i.bw = fdiv <2 x double> %i.bv, %i.be
  %i.bx = select <2 x i1> %i.ax, <2 x double> %i.bw, <2 x double> zeroinitializer ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0 ; 3 uses
  %i.bz = extractelement <2 x double> %i.bx, i64 1 ; 3 uses
  %i.ca = fcmp ogt double %i.by, %i.bz
  %i.cb = extractelement <2 x float> %i.bn, i64 0
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
  br label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i.i.i.i, !llvm.loop !32

_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i.i.i.i
  %i.ck = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 9 uses
  store i32 %i.bi, ptr %i.e, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.cl = icmp eq i64 %indvars.iv.next.i.i.i, %i.af ; 2 uses
  %i.cm = select i1 %i.cl, i64 0, i64 %indvars.iv.next.i.i.i ; 3 uses
  br label %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i

_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i: ; preds = %bb.r, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i
  %.0..0.125.i.i.i = phi i32 [ %.0..0.125244.i.i.i, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.0..0..0..0..0..0..0..0..0.125.pre.i.i.i, %bb.r ] ; 13 uses
  %.val20.i.i.i.i = phi ptr [ %.val.i.i.i, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.val20.i.pre.i.i.i, %bb.r ] ; 5 uses
  %.0..promoted212.i.i.i = phi i32 [ %i.bi, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %.0..0..0..0..0..0..0..0..0.114.pre.i.i.i, %bb.r ] ; 5 uses
  %i.cn = phi <2 x float> [ %i.am, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %i.hw, %bb.r ]
  %i.co = phi <2 x float> [ %i.al, %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.preheader.i.i.i ], [ %i.hv, %bb.r ] ; 3 uses
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
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.dg = fsub <2 x float> %i.de, %i.df
  %i.dh = fpext <2 x float> %i.dg to <2 x double>
  %i.di = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dd, <2 x float> %i.dc, <2 x i32> <i32 0, i32 2>
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
  %i.eb = fcmp ogt double %i.ea, %i.dz
  br i1 %i.eb, label %bb.l, label %_ZN20minEnclosingTriangleL20moveAIfLowAndBIfHighERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjS8_j.exit.i.i.i

bb.l:                                             ; preds = %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %i.aj
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i.i, i64 %indvars.iv.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !19
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
  %i.ej = load ptr, ptr %27, align 8, !tbaa !17   ; 6 uses
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
  %i.fo = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
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
  %.val20.i.pre.pre.i.i.i = load ptr, ptr %27, align 8, !tbaa !17
  br label %bb.r

bb.q:                                             ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i.i.i.i, %bb.m
  %i.ft = shufflevector <2 x float> %i.ep, <2 x float> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.fu = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.fv = fsub <2 x float> %i.ft, %i.fu
  %i.fw = fneg float %.val24.i.i.i.i
  %i.fx = fneg double %i.er
  %i.fy = load float, ptr %8, align 8, !tbaa !21
  %i.fz = load float, ptr %i.ad, align 4, !tbaa !22
  %i.ga = fpext float %i.fz to double
  %i.gb = fpext <2 x float> %i.fv to <2 x double> ; 4 uses
  %i.gc = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fw, i64 1
  %i.ge = fpext <2 x float> %i.gd to <2 x double>
  %i.gf = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ga, i64 1
  %i.gh = fmul <2 x double> %i.gg, %i.gb
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.ge, <2 x double> %i.gi) ; 2 uses
  %i.gk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gj) ; 2 uses
  %i.gl = load float, ptr %i.ek, align 4, !tbaa !21
  %i.gm = fpext float %i.gl to double
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.go = load float, ptr %i.gn, align 4, !tbaa !22
  %i.gp = fpext float %i.go to double
  %i.gq = extractelement <2 x double> %i.gb, i64 1
  %i.gr = fmul double %i.gq, %i.gp
  %i.gs = extractelement <2 x double> %i.gb, i64 0
  %i.gt = call double @llvm.fmuladd.f64(double %i.gs, double %i.gm, double %i.gr)
  %i.gu = extractelement <2 x double> %i.gj, i64 1
  %i.gv = fadd double %i.gu, %i.gt                ; 2 uses
  %i.gw = fcmp ogt double %i.gk, 0.000000e+00
  %i.gx = fcmp ogt double %i.gv, 0.000000e+00     ; 2 uses
  %i.gy = fcmp olt double %i.gv, 0.000000e+00
  %i.gz = fcmp uge double %i.gk, 0.000000e+00
  %i.ha = xor i1 %i.gz, %i.gy
  %not..i.i.i.i.i = xor i1 %i.gx, true
  %i.hb = and i1 %i.ha, %not..i.i.i.i.i
  %i.hc = select i1 %i.gw, i1 %i.gx, i1 %i.hb
  %.val29.i83.i.i.i = load i64, ptr %8, align 8
  %.val30.i84.i.i.i = load i64, ptr %9, align 8
  %storemerge.i85.i.i.i = select i1 %i.hc, i64 %.val29.i83.i.i.i, i64 %.val30.i84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.cp
  %i.he = bitcast i64 %storemerge.i85.i.i.i to <2 x float>
  %i.hf = load <2 x float>, ptr %i.hd, align 4, !tbaa !19
  %i.hg = fsub <2 x float> %i.he, %i.hf
  %i.hh = fpext <2 x float> %i.hg to <2 x double> ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = extractelement <2 x double> %i.hh, i64 1
  %i.hk = call double @atan2(double noundef %i.hj, double noundef %i.hi) #16
  %i.hl = fmul double %i.hk, 1.800000e+02
  %i.hm = fdiv double %i.hl, f0x400921FB54442D18  ; 3 uses
  %i.hn = fcmp olt double %i.hm, 0.000000e+00
  %i.ho = fadd double %i.hm, 3.600000e+02
  %i.hp = select i1 %i.hn, double %i.ho, double %i.hm
  %i.hq = call fastcc noundef i32 @_ZN20minEnclosingTriangleL10intersectsEdjRKSt6vectorIN2cv6Point_IfEESaIS3_EEjj(double noundef %i.hp, i32 noundef %.0..promoted212.i.i.i, ptr nonnull readonly %i.ej, i32 noundef %i.ac, i32 noundef %i.ck)
  %i.hr = icmp eq i32 %i.hq, 1
  %spec.select.i.i.i = select i1 %i.hr, ptr %i.e, ptr %i.d ; 2 uses
  %.pre256.i.i.i = load i32, ptr %spec.select.i.i.i, align 4, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i
  %.val20.i.pre.i.i.i = phi ptr [ %i.ej, %bb.q ], [ %.val20.i.pre.pre.i.i.i, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i ] ; 3 uses
  %i.hs = phi i32 [ %.pre256.i.i.i, %bb.q ], [ %.0..0.125.i.i.i, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i ]
  %.sink31.i.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.q ], [ %i.d, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit.i.i.i ]
  %i.ht = add i32 %i.hs, 1
  %i.hu = urem i32 %i.ht, %i.ac
  store i32 %i.hu, ptr %.sink31.i.i.i.i, align 4, !tbaa !53
  %.0..0..0..0..0..0..0..0..0.114.pre.i.i.i = load i32, ptr %i.e, align 4, !tbaa !53
  %.phi.trans.insert238.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.pre.i.i.i, i64 %indvars.iv.i.i.i
  %.phi.trans.insert241.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.pre.i.i.i, i64 %i.aj
  %i.hv = load <2 x float>, ptr %.phi.trans.insert238.i.i.i, align 4
  %i.hw = load <2 x float>, ptr %.phi.trans.insert241.i.i.i, align 4
  %.0..0..0..0..0..0..0..0..0.125.pre.i.i.i = load i32, ptr %i.d, align 4, !tbaa !53
  br label %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i, !llvm.loop !33

_ZN20minEnclosingTriangleL20moveAIfLowAndBIfHighERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjS8_j.exit.i.i.i: ; preds = %_ZN20minEnclosingTriangleL20advanceBToRightChainERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjj.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store <2 x float> zeroinitializer, ptr %17, align 8, !tbaa !19
  %i.hx = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj(i32 noundef %.0..promoted212.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %.0..0.125.i.i.i, i32 noundef %i.ck)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc24.i:                                       ; preds = %_ZN20minEnclosingTriangleL20moveAIfLowAndBIfHighERKSt6vectorIN2cv6Point_IfEESaIS3_EEjRjS8_j.exit.i.i.i
  %.pre250.i.i.i = load ptr, ptr %27, align 8, !tbaa !17 ; 2 uses
  br i1 %i.hx, label %.lr.ph.i.i.i.i, label %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc24.i
  %i.hy = icmp eq i32 %.0..0.125.i.i.i, 0
  %.v.i.i.i.i.i = select i1 %i.hy, i32 %i.ac, i32 %.0..0.125.i.i.i
  %i.hz = add i32 %.v.i.i.i.i.i, -1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = load <2 x float>, ptr %17, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i, %.lr.ph.i.i.i.i
  %.val22.i37.i.i.i = phi ptr [ %i.kt, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i ], [ %.pre250.i.i.i, %.lr.ph.i.i.i.i ] ; 7 uses
  %i.ic = phi i32 [ %i.kq, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i ], [ %.0..promoted212.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.id = phi <2 x float> [ %i.nk, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i ], [ %i.ib, %.lr.ph.i.i.i.i ]
  %i.ie = zext i32 %i.ic to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.val22.i37.i.i.i, i64 %i.ie ; 2 uses
  %i.ig = load <2 x float>, ptr %i.if, align 4, !tbaa !19
  %i.ih = fsub <2 x float> %i.id, %i.ig
  %i.ii = fpext <2 x float> %i.ih to <2 x double> ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = extractelement <2 x double> %i.ii, i64 1
  %i.il = call double @atan2(double noundef %i.ik, double noundef %i.ij) #16
  %i.im = fmul double %i.il, 1.800000e+02
  %i.in = fdiv double %i.im, f0x400921FB54442D18  ; 3 uses
  %i.io = fcmp olt double %i.in, 0.000000e+00
  %i.ip = fadd double %i.in, 3.600000e+02
  %i.iq = select i1 %i.io, double %i.ip, double %i.in
  %i.ir = call fastcc noundef i32 @_ZN20minEnclosingTriangleL10intersectsEdjRKSt6vectorIN2cv6Point_IfEESaIS3_EEjj(double noundef %i.iq, i32 noundef %i.ic, ptr readonly %.val22.i37.i.i.i, i32 noundef %i.ac, i32 noundef %i.ck)
  %i.is = icmp eq i32 %i.ir, 1
  br i1 %i.is, label %bb.t, label %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.val22.i37.i.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val22.i37.i.i.i, i64 %i.aj ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.val22.i37.i.i.i, i64 %i.ia ; 2 uses
  %i.iw = load <2 x float>, ptr %i.if, align 4    ; 2 uses
  %i.ix = load <2 x float>, ptr %i.iu, align 4
  %i.iy = load <2 x float>, ptr %i.it, align 4    ; 3 uses
  %i.iz = fsub <2 x float> %i.ix, %i.iy           ; 2 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  %i.jb = fpext float %i.ja to double             ; 3 uses
  %i.jc = extractelement <2 x float> %i.iz, i64 1
  %i.jd = fpext float %i.jc to double             ; 3 uses
  %i.je = fneg double %i.jd
  %i.jf = fmul double %i.jd, %i.jd
  %i.jg = call double @llvm.fmuladd.f64(double %i.jb, double %i.jb, double %i.jf) ; 2 uses
  %sqrt.i.i.i43.i.i.i = call double @llvm.sqrt.f64(double %i.jg)
  %i.jh = fcmp une double %i.jg, 0.000000e+00
  %i.ji = load <2 x float>, ptr %i.iv, align 4    ; 2 uses
  %i.jj = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = shufflevector <2 x float> %i.iw, <2 x float> %i.ji, <2 x i32> <i32 1, i32 3>
  %i.jl = fsub <2 x float> %i.jj, %i.jk
  %i.jm = fpext <2 x float> %i.jl to <2 x double>
  %i.jn = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = shufflevector <2 x float> %i.iw, <2 x float> %i.ji, <2 x i32> <i32 0, i32 2>
  %i.jp = fsub <2 x float> %i.jn, %i.jo
  %i.jq = fpext <2 x float> %i.jp to <2 x double>
  %i.jr = insertelement <2 x double> poison, double %i.je, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.js, %i.jq
  %i.ju = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jm, <2 x double> %i.jt)
  %i.jx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jw)
  %i.jy = insertelement <2 x double> poison, double %sqrt.i.i.i43.i.i.i, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = fdiv <2 x double> %i.jx, %i.jz
  %i.kb = insertelement <2 x i1> poison, i1 %i.jh, i64 0
  %i.kc = shufflevector <2 x i1> %i.kb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.kd = select <2 x i1> %i.kc, <2 x double> %i.ka, <2 x double> zeroinitializer ; 2 uses
  %i.ke = extractelement <2 x double> %i.kd, i64 0 ; 3 uses
  %i.kf = extractelement <2 x double> %i.kd, i64 1 ; 3 uses
  %i.kg = fcmp ogt double %i.ke, %i.kf
  br i1 %i.kg, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i47.i.i.i, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i44.i.i.i

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i44.i.i.i: ; preds = %bb.t
  %i.kh = fsub double %i.ke, %i.kf
  %i.ki = call noundef double @llvm.fabs.f64(double %i.kh)
  %i.kj = call noundef double @llvm.fabs.f64(double %i.ke) ; 2 uses
  %i.kk = call noundef double @llvm.fabs.f64(double %i.kf) ; 2 uses
  %i.kl = fcmp ogt double %i.kj, 1.000000e+00
  %.sroa.speculated2.i.i.i.i45.i.i.i = select i1 %i.kl, double %i.kj, double 1.000000e+00 ; 2 uses
  %i.km = fcmp olt double %.sroa.speculated2.i.i.i.i45.i.i.i, %i.kk
  %.sroa.speculated.i.i.i.i46.i.i.i = select i1 %i.km, double %i.kk, double %.sroa.speculated2.i.i.i.i45.i.i.i
  %i.kn = fmul double %.sroa.speculated.i.i.i.i46.i.i.i, 1.000000e-05
  %i.ko = fcmp ugt double %i.ki, %i.kn
  br i1 %i.ko, label %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i, label %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i47.i.i.i

_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i47.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i44.i.i.i, %bb.t
  %i.kp = add i32 %i.ic, 1
  %i.kq = urem i32 %i.kp, %i.ac                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.val22.i37.i.i.i, i64 %i.da
  %i.ks = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL27findGammaIntersectionPointsERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_RS3_SA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %i.ck, i32 noundef %i.kq, ptr noundef nonnull align 4 dereferenceable(8) %i.kr, ptr noundef nonnull align 4 dereferenceable(8) %i.iv, ptr noundef nonnull align 4 dereferenceable(8) %i.it, ptr noundef nonnull align 4 dereferenceable(8) %i.iu, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %.noexc25.i unwind label %.loopexit.i

.noexc25.i:                                       ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.thread.i47.i.i.i
  br i1 %i.ks, label %bb.u, label %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.thread.i.i.i

_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.thread.i.i.i: ; preds = %.noexc25.i
  store i32 %i.kq, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.pre249.i.i.i = load ptr, ptr %27, align 8, !tbaa !17
  br label %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.i.i.i

bb.u:                                             ; preds = %.noexc25.i
  %i.kt = load ptr, ptr %27, align 8, !tbaa !17   ; 4 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.cm
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.aj ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 4
  %i.ky = load <2 x float>, ptr %i.kv, align 4    ; 3 uses
  %.val24.i89.i.i.i = load float, ptr %i.kx, align 4 ; 2 uses
  %i.kz = load <2 x float>, ptr %i.kw, align 4    ; 3 uses
  %i.la = extractelement <2 x float> %i.ky, i64 0
  %i.lb = fpext float %i.la to double             ; 3 uses
  %i.lc = extractelement <2 x float> %i.kz, i64 0
  %i.ld = fpext float %i.lc to double             ; 2 uses
  %i.le = fsub double %i.lb, %i.ld
  %i.lf = call noundef double @llvm.fabs.f64(double %i.le)
  %i.lg = call noundef double @llvm.fabs.f64(double %i.lb) ; 2 uses
  %i.lh = call noundef double @llvm.fabs.f64(double %i.ld) ; 2 uses
  %i.li = fcmp ogt double %i.lg, 1.000000e+00
  %.sroa.speculated2.i.i.i.i102.i.i.i = select i1 %i.li, double %i.lg, double 1.000000e+00 ; 2 uses
  %i.lj = fcmp olt double %.sroa.speculated2.i.i.i.i102.i.i.i, %i.lh
  %.sroa.speculated.i.i.i.i103.i.i.i = select i1 %i.lj, double %i.lh, double %.sroa.speculated2.i.i.i.i102.i.i.i
  %i.lk = fmul double %.sroa.speculated.i.i.i.i103.i.i.i, 1.000000e-05
  %i.ll = fcmp ugt double %i.lf, %i.lk
  br i1 %i.ll, label %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i, label %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i104.i.i.i

_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i104.i.i.i: ; preds = %bb.u
  %i.lm = getelementptr i8, ptr %i.kw, i64 4
  %.val26.i91.i.i.i = load float, ptr %i.lm, align 4
  %i.ln = fpext float %.val24.i89.i.i.i to double ; 2 uses
  %i.lo = fpext float %.val26.i91.i.i.i to double ; 2 uses
  %i.lp = fsub double %i.ln, %i.lo
  %i.lq = call noundef double @llvm.fabs.f64(double %i.lp)
  %i.lr = call noundef double @llvm.fabs.f64(double %i.ln) ; 2 uses
  %i.ls = call noundef double @llvm.fabs.f64(double %i.lo) ; 2 uses
  %i.lt = fcmp ogt double %i.lr, 1.000000e+00
  %.sroa.speculated2.i.i4.i.i105.i.i.i = select i1 %i.lt, double %i.lr, double 1.000000e+00 ; 2 uses
  %i.lu = fcmp olt double %.sroa.speculated2.i.i4.i.i105.i.i.i, %i.ls
  %.sroa.speculated.i.i5.i.i106.i.i.i = select i1 %i.lu, double %i.ls, double %.sroa.speculated2.i.i4.i.i105.i.i.i
  %i.lv = fmul double %.sroa.speculated.i.i5.i.i106.i.i.i, 1.000000e-05
  %i.lw = fcmp ugt double %i.lq, %i.lv
  br i1 %i.lw, label %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i104.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc26.i:                                       ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_, ptr noundef nonnull @.str.1, i32 noundef 1411) #17
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc26.i
  unreachable

bb.x:                                             ; preds = %.noexc26.i
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i: ; preds = %bb.x
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !14
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.body22.i

_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.i104.i.i.i, %bb.u
  %i.md = shufflevector <2 x float> %i.kz, <2 x float> %i.ky, <2 x i32> <i32 1, i32 2>
  %i.me = shufflevector <2 x float> %i.ky, <2 x float> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.mf = fsub <2 x float> %i.md, %i.me
  %i.mg = fneg float %.val24.i89.i.i.i
  %i.mh = fneg double %i.lb
  %i.mi = load float, ptr %6, align 8, !tbaa !21
  %i.mj = load float, ptr %i.ae, align 4, !tbaa !22
  %i.mk = fpext float %i.mj to double
  %i.ml = fpext <2 x float> %i.mf to <2 x double> ; 4 uses
  %i.mm = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %i.mg, i64 1
  %i.mo = fpext <2 x float> %i.mn to <2 x double>
  %i.mp = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mk, i64 1
  %i.mr = fmul <2 x double> %i.mq, %i.ml
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.mo, <2 x double> %i.ms) ; 2 uses
  %i.mu = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mt) ; 2 uses
  %i.mv = load <2 x float>, ptr %i.ku, align 4, !tbaa !19
  %i.mw = fpext <2 x float> %i.mv to <2 x double> ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.ml, %i.mw
  %i.mx = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.my = extractelement <2 x double> %i.ml, i64 0
  %i.mz = extractelement <2 x double> %i.mw, i64 0
  %i.na = call double @llvm.fmuladd.f64(double %i.my, double %i.mz, double %i.mx)
  %i.nb = extractelement <2 x double> %i.mt, i64 1
  %i.nc = fadd double %i.nb, %i.na                ; 2 uses
  %i.nd = fcmp ogt double %i.mu, 0.000000e+00
  %i.ne = fcmp ogt double %i.nc, 0.000000e+00     ; 2 uses
  %i.nf = fcmp olt double %i.nc, 0.000000e+00
  %i.ng = fcmp uge double %i.mu, 0.000000e+00
  %i.nh = xor i1 %i.ng, %i.nf
  %not..i.i92.i.i.i = xor i1 %i.ne, true
  %i.ni = and i1 %i.nh, %not..i.i92.i.i.i
  %i.nj = select i1 %i.nd, i1 %i.ne, i1 %i.ni
  %.val29.i93.i.i.i = load i64, ptr %6, align 8
  %.val30.i94.i.i.i = load i64, ptr %7, align 8
  %storemerge.i95.i.i.i = select i1 %i.nj, i64 %.val29.i93.i.i.i, i64 %.val30.i94.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.nk = bitcast i64 %storemerge.i95.i.i.i to <2 x float>
  br label %bb.s

_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14greaterOrEqualEdd.exit.i44.i.i.i, %bb.s
  store i32 %i.ic, ptr %i.e, align 4
  br label %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.i.i.i

_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.i.i.i: ; preds = %.noexc24.i, %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.thread.i.i.i
  %.0..0..i.i.i = phi i32 [ %i.ic, %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i ], [ %i.kq, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.thread.i.i.i ], [ %.0..promoted212.i.i.i, %.noexc24.i ] ; 11 uses
  %i.nl = phi ptr [ %.val22.i37.i.i.i, %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.loopexit.i.i.i ], [ %.pre249.i.i.i, %_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj.exit96.thread.i.i.i ], [ %.pre250.i.i.i, %.noexc24.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.aj
  %i.nn = load i64, ptr %i.nm, align 4            ; 3 uses
  store i64 %i.nn, ptr %20, align 8
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i.i.i
  %i.np = load i64, ptr %i.no, align 4            ; 3 uses
  store i64 %i.np, ptr %21, align 8
  %i.nq = icmp eq i32 %.0..0.125.i.i.i, 0
  %.v.i13.i.i.i.i = select i1 %i.nq, i32 %i.ac, i32 %.0..0.125.i.i.i
  %i.nr = add i32 %.v.i13.i.i.i.i, -1             ; 2 uses
  %i.ns = zext i32 %i.nr to i64                   ; 4 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.ns ; 2 uses
  %.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nu = load float, ptr %.sroa_idx.i.i.i, align 4 ; 6 uses
  %i.nv = load float, ptr %i.nt, align 4          ; 6 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.da
  %i.nx = load <2 x float>, ptr %i.nw, align 4    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !19
  %i.ny = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj(i32 noundef %.0..0..i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %.0..0.125.i.i.i, i32 noundef %i.ck)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc27.i:                                       ; preds = %_ZN20minEnclosingTriangleL18searchForBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjRjj.exit.i.i.i
  %.val18.pre.i.i.i.i = load ptr, ptr %27, align 8, !tbaa !17 ; 11 uses
  %i.nz = trunc i64 %i.nn to i32                  ; 4 uses
  %i.oa = lshr i64 %i.nn, 32
  %i.ob = trunc i64 %i.np to i32
  %i.oc = insertelement <2 x i32> poison, i32 %i.nz, i64 0
  %i.od = insertelement <2 x i32> %i.oc, i32 %i.ob, i64 1 ; 2 uses
  %i.oe = bitcast <2 x i32> %i.od to <2 x float>  ; 3 uses
  %i.of = lshr i64 %i.np, 32
  %i.og = trunc nuw i64 %i.of to i32
  %i.oh = trunc nuw i64 %i.oa to i32              ; 3 uses
  %i.oi = insertelement <2 x i32> poison, i32 %i.oh, i64 0 ; 2 uses
  %i.oj = insertelement <2 x i32> %i.oi, i32 %i.og, i64 1 ; 2 uses
  %i.ok = bitcast <2 x i32> %i.oj to <2 x float>  ; 5 uses
  br i1 %i.ny, label %bb.y, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27.i
  %.pre.i49.i.i.i = zext i32 %.0..0..i.i.i to i64
  br label %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.i.i.i

bb.y:                                             ; preds = %.noexc27.i
  %i.ol = zext i32 %.0..0..i.i.i to i64           ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.ol
  %i.on = load <2 x float>, ptr %16, align 8, !tbaa !19
  %i.oo = load <2 x float>, ptr %i.om, align 4, !tbaa !19
  %i.op = fsub <2 x float> %i.oo, %i.on
  %i.oq = fpext <2 x float> %i.op to <2 x double> ; 2 uses
  %i.or = extractelement <2 x double> %i.oq, i64 0
  %i.os = extractelement <2 x double> %i.oq, i64 1
  %i.ot = call double @atan2(double noundef %i.os, double noundef %i.or) #16
  %i.ou = fmul double %i.ot, 1.800000e+02
  %i.ov = fdiv double %i.ou, f0x400921FB54442D18  ; 3 uses
  %i.ow = fcmp olt double %i.ov, 0.000000e+00
  %i.ox = fadd double %i.ov, 3.600000e+02
  %i.oy = select i1 %i.ow, double %i.ox, double %i.ov
  %i.oz = call fastcc noundef i32 @_ZN20minEnclosingTriangleL10intersectsEdjRKSt6vectorIN2cv6Point_IfEESaIS3_EEjj(double noundef %i.oy, i32 noundef %.0..0..i.i.i, ptr readonly %.val18.pre.i.i.i.i, i32 noundef %i.ac, i32 noundef %i.ck)
  %i.pa = icmp eq i32 %i.oz, 2
  br i1 %i.pa, label %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.thread.i.i.i, label %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.i.i.i

_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.thread.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.z

_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.i.i.i: ; preds = %bb.y, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i49.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ol, %bb.y ]
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %indvars.iv.i.i.i
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.aj
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %.pre-phi.i.i.i.i
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.ns
  %i.pf = load <2 x float>, ptr %i.pd, align 4    ; 2 uses
  %i.pg = load <2 x float>, ptr %i.pc, align 4
  %i.ph = load <2 x float>, ptr %i.pb, align 4    ; 3 uses
  %i.pi = fsub <2 x float> %i.pg, %i.ph           ; 2 uses
  %i.pj = extractelement <2 x float> %i.pi, i64 0
  %i.pk = fpext float %i.pj to double             ; 3 uses
  %i.pl = extractelement <2 x float> %i.pi, i64 1
  %i.pm = fpext float %i.pl to double             ; 3 uses
  %i.pn = fneg double %i.pm
  %i.po = fmul double %i.pm, %i.pm
  %i.pp = call double @llvm.fmuladd.f64(double %i.pk, double %i.pk, double %i.po) ; 2 uses
  %sqrt.i.i.i54.i.i.i = call double @llvm.sqrt.f64(double %i.pp)
  %i.pq = fcmp une double %i.pp, 0.000000e+00
  %i.pr = load <2 x float>, ptr %i.pe, align 4    ; 2 uses
  %i.ps = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pt = shufflevector <2 x float> %i.pf, <2 x float> %i.pr, <2 x i32> <i32 1, i32 3>
  %i.pu = fsub <2 x float> %i.ps, %i.pt
  %i.pv = fpext <2 x float> %i.pu to <2 x double>
  %i.pw = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = shufflevector <2 x float> %i.pf, <2 x float> %i.pr, <2 x i32> <i32 0, i32 2>
  %i.py = fsub <2 x float> %i.pw, %i.px
  %i.pz = fpext <2 x float> %i.py to <2 x double>
  %i.qa = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x double> %i.qb, %i.pz
  %i.qd = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.qe = shufflevector <2 x double> %i.qd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.pv, <2 x double> %i.qc)
  %i.qg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qf)
  %i.qh = insertelement <2 x double> poison, double %sqrt.i.i.i54.i.i.i, i64 0
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qj = fdiv <2 x double> %i.qg, %i.qi
  %i.qk = insertelement <2 x i1> poison, i1 %i.pq, i64 0
  %i.ql = shufflevector <2 x i1> %i.qk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qm = select <2 x i1> %i.ql, <2 x double> %i.qj, <2 x double> zeroinitializer ; 2 uses
  %i.qn = extractelement <2 x double> %i.qm, i64 0
  %i.qo = extractelement <2 x double> %i.qm, i64 1
  %i.qp = fcmp olt double %i.qn, %i.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br i1 %i.qp, label %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit._crit_edge.i.i.i, label %bb.ag

_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit._crit_edge.i.i.i: ; preds = %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.i.i.i
  %.pre265.i.i.i = zext i32 %.0..0..i.i.i to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit._crit_edge.i.i.i, %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.thread.i.i.i
  %.pre-phi266.i.i.i = phi i64 [ %.pre265.i.i.i, %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit._crit_edge.i.i.i ], [ %i.ol, %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.thread.i.i.i ]
  %i.qq = icmp eq i32 %.0..0..i.i.i, 0
  %.v.i.i57.i.i.i = select i1 %i.qq, i32 %i.ac, i32 %.0..0..i.i.i
  %i.qr = add i32 %.v.i.i57.i.i.i, -1
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 4            ; 3 uses
  store i64 %i.qu, ptr %18, align 8
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %.pre-phi266.i.i.i
  %i.qw = load i64, ptr %i.qv, align 4            ; 3 uses
  store i64 %i.qw, ptr %19, align 8
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = trunc i64 %i.qu to i32
  %i.qz = bitcast i32 %i.qx to float              ; 5 uses
  %i.ra = bitcast i32 %i.qy to float              ; 6 uses
  %i.rb = lshr i64 %i.qw, 32
  %i.rc = lshr i64 %i.qu, 32
  %i.rd = trunc nuw i64 %i.rb to i32
  %i.re = trunc nuw i64 %i.rc to i32
  %i.rf = bitcast i32 %i.rd to float              ; 5 uses
  %i.rg = bitcast i32 %i.re to float              ; 6 uses
  %i.rh = fsub float %i.rf, %i.rg
  %i.ri = fpext float %i.rh to double             ; 8 uses
  %i.rj = fsub float %i.ra, %i.qz
  %i.rk = fpext float %i.rj to double             ; 6 uses
  %i.rl = bitcast i32 %i.oh to float
  %shift = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop192 = fsub <2 x float> %shift, %i.ok
  %i.rm = extractelement <2 x float> %foldExtExtBinop192, i64 0
  %i.rn = fpext float %i.rm to double             ; 2 uses
  %i.ro = bitcast i32 %i.nz to float
  %shift194 = shufflevector <2 x float> %i.oe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop195 = fsub <2 x float> %i.oe, %shift194
  %i.rp = extractelement <2 x float> %foldExtExtBinop195, i64 0
  %i.rq = fpext float %i.rp to double             ; 2 uses
  %i.rr = fneg double %i.rk                       ; 3 uses
  %i.rs = fmul double %i.rn, %i.rr
  %i.rt = call double @llvm.fmuladd.f64(double %i.ri, double %i.rq, double %i.rs) ; 2 uses
  %i.ru = call noundef double @llvm.fabs.f64(double %i.rt) ; 3 uses
  %i.rv = fcmp ogt double %i.ru, 1.000000e+00
  %.sroa.speculated2.i.i.i.i.i.i.i.i = select i1 %i.rv, double %i.ru, double 1.000000e+00
  %i.rw = fmul nnan double %.sroa.speculated2.i.i.i.i.i.i.i.i, 1.000000e-05
  %i.rx = fcmp ugt double %i.ru, %i.rw
  br i1 %i.rx, label %bb.aa, label %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %i.nx, i64 1
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %i.nx, i64 0
  %i.ry = fsub float %.sroa.0.4.vec.extract.i.i.i, %i.nu
  %i.rz = fpext float %i.ry to double             ; 2 uses
  %i.sa = fsub float %i.nv, %.sroa.0.0.vec.extract.i.i.i
  %i.sb = fpext float %i.sa to double             ; 2 uses
  %i.sc = fmul double %i.rz, %i.rr
  %i.sd = call double @llvm.fmuladd.f64(double %i.ri, double %i.sb, double %i.sc) ; 2 uses
  %i.se = call noundef double @llvm.fabs.f64(double %i.sd) ; 3 uses
  %i.sf = fcmp ogt double %i.se, 1.000000e+00
  %.sroa.speculated2.i.i.i29.i.i.i.i.i = select i1 %i.sf, double %i.se, double 1.000000e+00
  %i.sg = fmul nnan double %.sroa.speculated2.i.i.i29.i.i.i.i.i, 1.000000e-05
  %i.sh = fcmp ugt double %i.se, %i.sg
  br i1 %i.sh, label %bb.ab, label %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.si = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sj = insertelement <2 x double> %i.si, double %i.rn, i64 1 ; 2 uses
  %i.sk = fneg <2 x double> %i.sj
  %i.sl = fpext float %i.ro to double
  %i.sm = fpext float %i.nv to double
  %i.sn = fpext float %i.rl to double
  %i.so = fpext float %i.nu to double
  %i.sp = insertelement <2 x double> poison, double %i.so, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %i.sn, i64 1
  %i.sr = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.ss = insertelement <2 x double> %i.sr, double %i.rq, i64 1 ; 2 uses
  %i.st = fmul <2 x double> %i.sq, %i.ss
  %i.su = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.sv = insertelement <2 x double> %i.su, double %i.sl, i64 1
  %i.sw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.sj, <2 x double> %i.st) ; 2 uses
  %i.sx = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sz = fmul <2 x double> %i.sw, %i.sy
  %i.ta = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.tb = insertelement <2 x double> %i.ta, double %i.rt, i64 1 ; 2 uses
  %i.tc = insertelement <2 x double> poison, double %i.ri, i64 0
  %i.td = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %.sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.aj ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4
  %.sroa_idx.i.i59.i.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.th = load float, ptr %.sroa_idx.i.i59.i.i.i, align 4
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %.val18.pre.i.i.i.i, i64 %i.ns ; 2 uses
  %.sroa_idx.i52.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tj = load float, ptr %i.te, align 4          ; 2 uses
  %i.tk = load float, ptr %.sroa_idx4.i.i.i.i.i, align 4 ; 2 uses
  %i.tl = fsub float %i.tg, %i.tj
  %i.tm = fsub float %i.th, %i.tk                 ; 2 uses
  %i.tn = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.to = insertelement <2 x float> %i.tn, float %i.tl, i64 1
  %i.tp = fpext <2 x float> %i.to to <2 x double> ; 3 uses
  %i.tq = fpext float %i.tm to double
  %i.tr = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.tm, i64 1
  %i.tt = fpext <2 x float> %i.ts to <2 x double> ; 2 uses
  %i.tu = insertelement <2 x double> %i.tt, double %i.rk, i64 0
  %i.tv = fmul <2 x double> %i.tu, %i.tt
  %i.tw = insertelement <2 x double> %i.tp, double %i.ri, i64 0
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tp, <2 x double> %i.tw, <2 x double> %i.tv) ; 2 uses
  %i.ty = shufflevector <2 x double> %i.tx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ty, <2 x double> %i.ss, <2 x double> %i.sz)
  %i.ua = fdiv <2 x double> %i.tz, %i.tb
  %i.ub = fptrunc <2 x double> %i.ua to <2 x float>
  %i.uc = fmul <2 x double> %i.ty, %i.sk
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> %i.td, <2 x double> %i.uc)
  %i.ue = fdiv <2 x double> %i.ud, %i.tb
  %i.uf = fptrunc <2 x double> %i.ue to <2 x float>
  %i.ug = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ub)
  %i.uh = fmul float %i.ug, 5.000000e-01
  %i.ui = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.uf)
  %i.uj = fmul float %i.ui, 5.000000e-01
  %i.uk = fneg double %i.tq
  %i.ul = extractelement <2 x double> %i.tx, i64 1 ; 2 uses
  %sqrt.i.i.i60.i.i.i = call double @llvm.sqrt.f64(double %i.ul)
  %i.um = fcmp une double %i.ul, 0.000000e+00
  %i.un = load <2 x float>, ptr %i.ti, align 4    ; 3 uses
  %i.uo = load float, ptr %.sroa_idx.i52.i.i.i.i, align 4
  %i.up = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = insertelement <2 x float> %i.un, float %i.uj, i64 0
  %i.us = fsub <2 x float> %i.uq, %i.ur
  %i.ut = fpext <2 x float> %i.us to <2 x double>
  %i.uu = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uw = insertelement <2 x float> %32, float %i.uh, i64 0
  %i.ux = fsub <2 x float> %i.uv, %i.uw
  %i.uy = fpext <2 x float> %i.ux to <2 x double>
  %i.uz = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vb = fmul <2 x double> %i.va, %i.uy
  %i.vc = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %i.ut, <2 x double> %i.vb)
  %i.ve = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.vd)
  %i.vf = insertelement <2 x double> poison, double %sqrt.i.i.i60.i.i.i, i64 0
  %i.vg = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vh = fdiv <2 x double> %i.ve, %i.vg
  %i.vi = insertelement <2 x i1> poison, i1 %i.um, i64 0
  %i.vj = shufflevector <2 x i1> %i.vi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vk = select <2 x i1> %i.vj, <2 x double> %i.vh, <2 x double> zeroinitializer ; 2 uses
  %i.vl = extractelement <2 x double> %i.vk, i64 0
  %i.vm = extractelement <2 x double> %i.vk, i64 1
  %i.vn = fcmp olt double %i.vl, %i.vm
  br i1 %i.vn, label %bb.ac, label %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !19
  %i.vo = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL27findGammaIntersectionPointsERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_RS3_SA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %i.ck, i32 noundef %i.nr, ptr noundef nonnull readonly align 4 dereferenceable(8) %18, ptr noundef nonnull readonly align 4 dereferenceable(8) %19, ptr noundef nonnull readonly align 4 dereferenceable(8) %20, ptr noundef nonnull readonly align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc28.i:                                       ; preds = %bb.ac
  br i1 %i.vo, label %_ZN20minEnclosingTriangleL18findVertexCOnSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc29.i:                                       ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL18findVertexCOnSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_, ptr noundef nonnull @.str.1, i32 noundef 934) #17
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc29.i
  unreachable

bb.af:                                            ; preds = %.noexc29.i
  %i.vp = landingpad { ptr, i32 }
          cleanup
  %i.vq = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !14
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %.body22.i

_ZN20minEnclosingTriangleL18findVertexCOnSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_.exit.i.i.i.i: ; preds = %.noexc28.i
  %i.vv = load ptr, ptr %27, align 8, !tbaa !17   ; 3 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i.i ; 2 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.aj ; 2 uses
  %.val.i.i61.i.i.i = load float, ptr %i.vw, align 4, !tbaa !21
  %i.vy = getelementptr i8, ptr %i.vw, i64 4
  %.val21.i.i.i.i.i = load float, ptr %i.vy, align 4
  %.val22.i.i.i.i.i = load float, ptr %i.vx, align 4, !tbaa !21
  %i.vz = getelementptr i8, ptr %i.vx, i64 4
  %.val23.i.i.i.i.i = load float, ptr %i.vz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  invoke fastcc void @_ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_(float %.val.i.i61.i.i.i, float %.val21.i.i.i.i.i, float %.val22.i.i.i.i.i, float %.val23.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc30.i:                                       ; preds = %_ZN20minEnclosingTriangleL18findVertexCOnSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjRKS3_S9_S9_S9_.exit.i.i.i.i
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.cm
  %i.wb = load double, ptr %i.a, align 8, !tbaa !24
  %i.wc = load double, ptr %i.b, align 8, !tbaa !24
  %i.wd = load double, ptr %i.c, align 8, !tbaa !24
  %i.we = load <2 x float>, ptr %12, align 8, !tbaa !19 ; 2 uses
  %i.wf = load <2 x float>, ptr %i.wa, align 4, !tbaa !19 ; 2 uses
  %i.wg = shufflevector <2 x float> %i.wf, <2 x float> %i.we, <2 x i32> <i32 0, i32 2>
  %i.wh = fpext <2 x float> %i.wg to <2 x double>
  %i.wi = shufflevector <2 x float> %i.wf, <2 x float> %i.we, <2 x i32> <i32 1, i32 3>
  %i.wj = fpext <2 x float> %i.wi to <2 x double>
  %i.wk = insertelement <2 x double> poison, double %i.wc, i64 0
  %i.wl = shufflevector <2 x double> %i.wk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wm = fmul <2 x double> %i.wl, %i.wj
  %i.wn = insertelement <2 x double> poison, double %i.wb, i64 0
  %i.wo = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wo, <2 x double> %i.wh, <2 x double> %i.wm)
  %i.wq = insertelement <2 x double> poison, double %i.wd, i64 0
  %i.wr = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ws = fadd <2 x double> %i.wr, %i.wp          ; 3 uses
  %i.wt = fcmp ogt <2 x double> %i.ws, zeroinitializer ; 2 uses
  %i.wu = extractelement <2 x double> %i.ws, i64 0
  %i.wv = fcmp olt double %i.wu, 0.000000e+00
  %i.ww = extractelement <2 x double> %i.ws, i64 1
  %i.wx = fcmp uge double %i.ww, 0.000000e+00
  %i.wy = xor i1 %i.wx, %i.wv
  %i.wz = extractelement <2 x i1> %i.wt, i64 0    ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.wz, true
  %i.xa = and i1 %i.wy, %not..i.i.i.i.i.i
  %i.xb = extractelement <2 x i1> %i.wt, i64 1
  %i.xc = select i1 %i.xb, i1 %i.wz, i1 %i.xa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.val25.i.i.i.i.i = load <2 x float>, ptr %12, align 8
  %.val26.i.i.i.i.i = load <2 x float>, ptr %13, align 8
  %.sroa.0.0.i.i.i.i.i = select i1 %i.xc, <2 x float> %.val25.i.i.i.i.i, <2 x float> %.val26.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.xd = extractelement <2 x float> %i.un, i64 0
  br label %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i

bb.ag:                                            ; preds = %_ZN20minEnclosingTriangleL14isNotBTangencyERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjj.exit.i.i.i
  %i.xe = invoke fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL5gammaEjRN2cv6Point_IfEERKSt6vectorIS2_SaIS2_EEjjj(i32 noundef %.0..0..i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull readonly align 8 dereferenceable(24) %27, i32 noundef %i.ac, i32 noundef %.0..0.125.i.i.i, i32 noundef %i.ck)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc31.i:                                       ; preds = %bb.ag
  br i1 %i.xe, label %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc32.i:                                       ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_, ptr noundef nonnull @.str.1, i32 noundef 611) #17
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc32.i
  unreachable

bb.aj:                                            ; preds = %.noexc32.i
  %i.xf = landingpad { ptr, i32 }
          cleanup
  %i.xg = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.xi = icmp eq ptr %i.xg, %i.xh
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.xj = load i64, ptr %i.xh, align 8, !tbaa !14
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.body22.i

_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i: ; preds = %.noexc31.i
  %i.xl = zext i32 %.0..0..i.i.i to i64
  %i.xm = load ptr, ptr %27, align 8, !tbaa !17
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %i.xl
  %i.xo = load i64, ptr %i.xn, align 4            ; 3 uses
  store i64 %i.xo, ptr %19, align 8
  %.val49.i65.pre.i.i.i = load float, ptr %i.aa, align 4, !tbaa !22 ; 2 uses
  %.val48.i.pre.i.i.i = load float, ptr %18, align 8, !tbaa !21 ; 2 uses
  %i.xp = trunc i64 %i.xo to i32
  %i.xq = bitcast i32 %i.xp to float              ; 2 uses
  %i.xr = lshr i64 %i.xo, 32
  %i.xs = trunc nuw i64 %i.xr to i32
  %i.xt = bitcast i32 %i.xs to float              ; 2 uses
  %.pre258.i.i.i = fsub float %i.xt, %.val49.i65.pre.i.i.i
  %.pre259.i.i.i = fpext float %.pre258.i.i.i to double
  %.pre261.i.i.i = fsub float %.val48.i.pre.i.i.i, %i.xq
  %.pre263.i.i.i = fpext float %.pre261.i.i.i to double
  br label %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i

_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i: ; preds = %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i, %.noexc30.i, %bb.ab, %bb.aa, %bb.z
  %.pre-phi264.i.i.i = phi double [ %i.rk, %.noexc30.i ], [ %i.rk, %bb.ab ], [ %i.rk, %bb.aa ], [ %i.rk, %bb.z ], [ %.pre263.i.i.i, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 5 uses
  %.pre-phi260.i.i.i = phi double [ %i.ri, %.noexc30.i ], [ %i.ri, %bb.ab ], [ %i.ri, %bb.aa ], [ %i.ri, %bb.z ], [ %.pre259.i.i.i, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 4 uses
  %.val51.i.i.i.i = phi float [ %i.rf, %.noexc30.i ], [ %i.rf, %bb.ab ], [ %i.rf, %bb.aa ], [ %i.rf, %bb.z ], [ %i.xt, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 2 uses
  %.val50.i.i.i.i = phi float [ %i.qz, %.noexc30.i ], [ %i.qz, %bb.ab ], [ %i.qz, %bb.aa ], [ %i.qz, %bb.z ], [ %i.xq, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ]
  %.val49.i65.i.i.i = phi float [ %i.rg, %.noexc30.i ], [ %i.rg, %bb.ab ], [ %i.rg, %bb.aa ], [ %i.rg, %bb.z ], [ %.val49.i65.pre.i.i.i, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 3 uses
  %.val48.i.i.i.i = phi float [ %i.ra, %.noexc30.i ], [ %i.ra, %bb.ab ], [ %i.ra, %bb.aa ], [ %i.ra, %bb.z ], [ %.val48.i.pre.i.i.i, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 2 uses
  %i.xu = phi i1 [ true, %.noexc30.i ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ]
  %i.xv = phi i1 [ false, %.noexc30.i ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ true, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ]
  %i.xw = phi i1 [ false, %.noexc30.i ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ false, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ]
  %.sroa.9.0.i.i.i = phi float [ %i.uo, %.noexc30.i ], [ %i.nu, %bb.ab ], [ %i.nu, %bb.aa ], [ %i.nu, %bb.z ], [ %i.nu, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 4 uses
  %.sroa.0144.0.i.i.i = phi float [ %i.xd, %.noexc30.i ], [ %i.nv, %bb.ab ], [ %i.nv, %bb.aa ], [ %i.nv, %bb.z ], [ %i.nv, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 3 uses
  %.sroa.0.1.i.i.i = phi <2 x float> [ %.sroa.0.0.i.i.i.i.i, %.noexc30.i ], [ %i.nx, %bb.ab ], [ %i.nx, %bb.aa ], [ %i.nx, %bb.z ], [ %i.nx, %_ZN20minEnclosingTriangleL11updateSideBERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_.exit.i.i.i ] ; 4 uses
  %.sroa.0.0.vec.extract128.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract136.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.xx = fsub float %.sroa.0.4.vec.extract136.i.i.i, %.sroa.9.0.i.i.i
  %i.xy = fpext float %i.xx to double             ; 3 uses
  %i.xz = fsub float %.sroa.0144.0.i.i.i, %.sroa.0.0.vec.extract128.i.i.i
  %i.ya = fpext float %i.xz to double             ; 4 uses
  %i.yb = fneg double %i.ya                       ; 3 uses
  %i.yc = fmul double %.pre-phi260.i.i.i, %i.yb
  %i.yd = call double @llvm.fmuladd.f64(double %i.xy, double %.pre-phi264.i.i.i, double %i.yc) ; 2 uses
  %i.ye = call noundef double @llvm.fabs.f64(double %i.yd) ; 3 uses
  %i.yf = fcmp ogt double %i.ye, 1.000000e+00
  %.sroa.speculated2.i.i.i.i66.i.i.i = select i1 %i.yf, double %i.ye, double 1.000000e+00
  %i.yg = fmul nnan double %.sroa.speculated2.i.i.i.i66.i.i.i, 1.000000e-05
  %i.yh = fcmp ugt double %i.ye, %i.yg
  br i1 %i.yh, label %bb.ak, label %_ZN20minEnclosingTriangleL34updateMinimumAreaEnclosingTriangleERSt6vectorIN2cv6Point_IfEESaIS3_EERdRKS3_S9_S9_.exit.i.i.i

bb.ak:                                            ; preds = %_ZN20minEnclosingTriangleL13updateSidesBAERKSt6vectorIN2cv6Point_IfEESaIS3_EEjjjjRjRS3_S9_S9_S9_RKS3_SB_.exit.i.i.i
  %i.yi = insertelement <2 x float> poison, float %.val48.i.i.i.i, i64 0
  %i.yj = insertelement <2 x float> %i.yi, float %.sroa.0144.0.i.i.i, i64 1
  %i.yk = fpext <2 x float> %i.yj to <2 x double>
  %i.yl = insertelement <2 x float> poison, float %.val49.i65.i.i.i, i64 0
  %i.ym = insertelement <2 x float> %i.yl, float %.sroa.9.0.i.i.i, i64 1
  %i.yn = fpext <2 x float> %i.ym to <2 x double>
  %i.yo = fneg double %.pre-phi260.i.i.i
end_hunk_0
begin_hunk_1_@_ZN20minEnclosingTriangleL22lineEquationParametersERKN2cv6Point_IfEES4_:_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.ph13, i64 noundef %i.v) #18
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_(float %.0.val, float %.4.val, float %.0.val1, float %.4.val3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = fpext float %.0.val to double            ; 3 uses
  %i.b = fpext float %.0.val1 to double           ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = tail call noundef double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.g = fcmp ogt double %i.e, 1.000000e+00
  %.sroa.speculated2.i.i.i = select i1 %i.g, double %i.e, double 1.000000e+00 ; 2 uses
  %i.h = fcmp olt double %.sroa.speculated2.i.i.i, %i.f
  %.sroa.speculated.i.i.i = select i1 %i.h, double %i.f, double %.sroa.speculated2.i.i.i
  %i.i = fmul double %.sroa.speculated.i.i.i, 1.000000e-05
  %i.j = fcmp ugt double %i.d, %i.i
  br i1 %i.j, label %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.thread, label %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit

_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit: ; preds = %bb.a
  %i.k = fpext float %.4.val to double            ; 2 uses
  %i.l = fpext float %.4.val3 to double           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = tail call noundef double @llvm.fabs.f64(double %i.m)
  %i.o = tail call noundef double @llvm.fabs.f64(double %i.k) ; 2 uses
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.q = fcmp ogt double %i.o, 1.000000e+00
  %.sroa.speculated2.i.i4.i = select i1 %i.q, double %i.o, double 1.000000e+00 ; 2 uses
  %i.r = fcmp olt double %.sroa.speculated2.i.i4.i, %i.p
  %.sroa.speculated.i.i5.i = select i1 %i.r, double %i.p, double %.sroa.speculated2.i.i4.i
  %i.s = fmul double %.sroa.speculated.i.i5.i, 1.000000e-05
  %i.t = fcmp ugt double %i.n, %i.s
  br i1 %i.t, label %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN20minEnclosingTriangleL30lineEquationDeterminedByPointsERKN2cv6Point_IfEES4_RdS5_S5_, ptr noundef nonnull @.str.1, i32 noundef 1411) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !14
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.u

_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit.thread: ; preds = %bb.a, %_ZN20minEnclosingTriangleL14areEqualPointsERKN2cv6Point_IfEES4_.exit
  %i.aa = fsub float %.4.val3, %.4.val
  %i.ab = fpext float %i.aa to double
  store double %i.ab, ptr %0, align 8, !tbaa !24
  %i.ac = fsub float %.0.val, %.0.val1
  %i.ad = fpext float %i.ac to double             ; 2 uses
  store double %i.ad, ptr %1, align 8, !tbaa !24
  %i.ae = fneg float %.4.val
  %i.af = fpext float %i.ae to double
  %i.ag = load double, ptr %0, align 8, !tbaa !24
  %i.ah = fneg double %i.a
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ad, double %i.ai)
  store double %i.aj, ptr %2, align 8, !tbaa !24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal fastcc noundef range(i32 1, 4) i32 @_ZN20minEnclosingTriangleL10intersectsEdjRKSt6vectorIN2cv6Point_IfEESaIS3_EEjj(double noundef %0, i32 noundef %1, ptr nofree readonly captures(none) %.0.val, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.v.i = select i1 %i.a, i32 %2, i32 %1
  %i.b = add i32 %.v.i, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.c ; 3 uses
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.e ; 4 uses
  %.val44 = load float, ptr %i.d, align 4, !tbaa !21
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %.val45 = load float, ptr %i.g, align 4, !tbaa !22
  %.val46 = load float, ptr %i.f, align 4, !tbaa !21 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %.val47 = load float, ptr %i.h, align 4, !tbaa !22 ; 2 uses
  %i.i = fsub float %.val47, %.val45
  %i.j = fpext float %i.i to double
  %i.k = fsub float %.val46, %.val44
  %i.l = fpext float %i.k to double
  %i.m = tail call double @atan2(double noundef %i.j, double noundef %i.l) #16
  %i.n = fmul double %i.m, 1.800000e+02
  %i.o = fdiv double %i.n, f0x400921FB54442D18    ; 3 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %i.q = fadd double %i.o, 3.600000e+02
  %i.r = select i1 %i.p, double %i.q, double %i.o ; 8 uses
  %i.s = add i32 %1, 1
  %i.t = urem i32 %i.s, %2
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.u ; 3 uses
  %.val40 = load float, ptr %i.v, align 4, !tbaa !21
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val41 = load float, ptr %i.w, align 4, !tbaa !22
  %i.x = fsub float %.val47, %.val41
  %i.y = fpext float %i.x to double
  %i.z = fsub float %.val46, %.val40
  %i.aa = fpext float %i.z to double
  %i.ab = tail call double @atan2(double noundef %i.y, double noundef %i.aa) #16
  %i.ac = icmp eq i32 %3, 0
  %.v.i57 = select i1 %i.ac, i32 %2, i32 %3
  %i.ad = add i32 %.v.i57, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.ae ; 3 uses
  %i.ag = zext i32 %3 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.ag ; 3 uses
  %i.ai = load <2 x float>, ptr %i.af, align 4, !tbaa !19
  %i.aj = load <2 x float>, ptr %i.ah, align 4, !tbaa !19
  %i.ak = fsub <2 x float> %i.aj, %i.ai
  %i.al = fpext <2 x float> %i.ak to <2 x double> ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = tail call double @atan2(double noundef %i.an, double noundef %i.am) #16
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ab, i64 1
  %i.ar = fmul <2 x double> %i.aq, splat (double 1.800000e+02)
  %i.as = fdiv <2 x double> %i.ar, splat (double f0x400921FB54442D18) ; 3 uses
  %i.at = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.au = fadd double %i.at, 3.600000e+02
  %i.av = fcmp olt <2 x double> %i.as, zeroinitializer ; 2 uses
  %i.aw = extractelement <2 x i1> %i.av, i64 1
  %i.ax = select i1 %i.aw, double %i.au, double %i.at ; 8 uses
  %i.ay = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.az = fadd double %i.ay, 3.600000e+02
  %i.ba = extractelement <2 x i1> %i.av, i64 0
  %i.bb = select i1 %i.ba, double %i.az, double %i.ay ; 8 uses
  %i.bc = tail call fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %i.bb, double noundef %i.r, double noundef %i.ax)
  br i1 %i.bc, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = fcmp ogt double %i.bb, 1.800000e+02
  %.v.i.i.i = select i1 %i.bd, double -1.800000e+02, double 1.800000e+02
  %i.be = fadd double %i.bb, %.v.i.i.i            ; 2 uses
  %i.bf = tail call fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %i.be, double noundef %i.r, double noundef %i.ax)
  br i1 %i.bf, label %bb.c, label %_ZN20minEnclosingTriangleL26isFlushAngleBtwPredAndSuccERddd.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07.ph = phi double [ %i.bb, %bb.a ], [ %i.be, %bb.b ] ; 2 uses
  %i.bg = tail call fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %0, double noundef %i.r, double noundef %.07.ph)
  br i1 %i.bg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = fsub double %0, %i.r
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.bk = tail call noundef double @llvm.fabs.f64(double %i.r) ; 2 uses
  %i.bl = fcmp ogt double %i.bj, 1.000000e+00
  %.sroa.speculated2.i.i = select i1 %i.bl, double %i.bj, double 1.000000e+00 ; 4 uses
  %i.bm = fcmp olt double %.sroa.speculated2.i.i, %i.bk
  %.sroa.speculated.i.i = select i1 %i.bm, double %i.bk, double %.sroa.speculated2.i.i
  %i.bn = fmul double %.sroa.speculated.i.i, 1.000000e-05
  %i.bo = fcmp ugt double %i.bi, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = load <2 x float>, ptr %i.d, align 4     ; 2 uses
  %i.bq = load <2 x float>, ptr %i.af, align 4
  %i.br = load <2 x float>, ptr %i.ah, align 4    ; 3 uses
  %i.bs = fsub <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fpext float %i.bt to double             ; 3 uses
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = fpext float %i.bv to double             ; 3 uses
  %i.bx = fneg double %i.bw
  %i.by = fmul double %i.bw, %i.bw
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.by) ; 2 uses
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.bz)
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  %i.cb = load <2 x float>, ptr %i.f, align 4     ; 2 uses
  %i.cc = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = shufflevector <2 x float> %i.bp, <2 x float> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.ce = fsub <2 x float> %i.cc, %i.cd
  %i.cf = fpext <2 x float> %i.ce to <2 x double>
  %i.cg = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %i.bp, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.ci = fsub <2 x float> %i.cg, %i.ch
  %i.cj = fpext <2 x float> %i.ci to <2 x double>
  %i.ck = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.cl, %i.cj
  %i.cn = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cf, <2 x double> %i.cm)
  %i.cq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cp)
  %i.cr = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fdiv <2 x double> %i.cq, %i.cs
  %i.cu = insertelement <2 x i1> poison, i1 %i.ca, i64 0
  %i.cv = shufflevector <2 x i1> %i.cu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cw = select <2 x i1> %i.cv, <2 x double> %i.ct, <2 x double> zeroinitializer ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = extractelement <2 x double> %i.cw, i64 1
  %i.cz = fcmp ogt double %i.cx, %i.cy
  %..i = select i1 %i.cz, i32 2, i32 1
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.da = tail call fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %0, double noundef %i.ax, double noundef %.07.ph)
  br i1 %i.da, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = fsub double %0, %i.ax
  %i.dc = tail call noundef double @llvm.fabs.f64(double %i.db)
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.de = fcmp olt double %.sroa.speculated2.i.i, %i.dd
  %.sroa.speculated.i.i61 = select i1 %i.de, double %i.dd, double %.sroa.speculated2.i.i
  %i.df = fmul double %.sroa.speculated.i.i61, 1.000000e-05
  %i.dg = fcmp ugt double %i.dc, %i.df
  br i1 %i.dg, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dh = load <2 x float>, ptr %i.v, align 4     ; 2 uses
  %i.di = load <2 x float>, ptr %i.af, align 4
  %i.dj = load <2 x float>, ptr %i.ah, align 4    ; 3 uses
  %i.dk = fsub <2 x float> %i.di, %i.dj           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = fpext float %i.dl to double             ; 3 uses
  %i.dn = extractelement <2 x float> %i.dk, i64 1
  %i.do = fpext float %i.dn to double             ; 3 uses
  %i.dp = fneg double %i.do
  %i.dq = fmul double %i.do, %i.do
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dq) ; 2 uses
  %sqrt.i.i.i66 = tail call double @llvm.sqrt.f64(double %i.dr)
  %i.ds = fcmp une double %i.dr, 0.000000e+00
  %i.dt = load <2 x float>, ptr %i.f, align 4     ; 2 uses
  %i.du = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = shufflevector <2 x float> %i.dh, <2 x float> %i.dt, <2 x i32> <i32 1, i32 3>
  %i.dw = fsub <2 x float> %i.du, %i.dv
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x float> %i.dh, <2 x float> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.ea = fsub <2 x float> %i.dy, %i.dz
  %i.eb = fpext <2 x float> %i.ea to <2 x double>
  %i.ec = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, %i.eb
  %i.ef = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.dx, <2 x double> %i.ee)
  %i.ei = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eh)
  %i.ej = insertelement <2 x double> poison, double %sqrt.i.i.i66, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fdiv <2 x double> %i.ei, %i.ek
  %i.em = insertelement <2 x i1> poison, i1 %i.ds, i64 0
  %i.en = shufflevector <2 x i1> %i.em, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x double> %i.el, <2 x double> zeroinitializer ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = extractelement <2 x double> %i.eo, i64 1
  %i.er = fcmp ogt double %i.ep, %i.eq
  %..i68 = select i1 %i.er, i32 2, i32 1
  br label %bb.n

_ZN20minEnclosingTriangleL26isFlushAngleBtwPredAndSuccERddd.exit: ; preds = %bb.b
  %i.es = tail call fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %0, double noundef %i.r, double noundef %i.ax)
  br i1 %i.es, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN20minEnclosingTriangleL26isFlushAngleBtwPredAndSuccERddd.exit
  %i.et = fsub double %0, %i.r
  %i.eu = tail call noundef double @llvm.fabs.f64(double %i.et)
  %i.ev = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.ew = tail call noundef double @llvm.fabs.f64(double %i.r) ; 2 uses
  %i.ex = fcmp ogt double %i.ev, 1.000000e+00
  %.sroa.speculated2.i.i.i = select i1 %i.ex, double %i.ev, double 1.000000e+00 ; 8 uses
  %i.ey = fcmp olt double %.sroa.speculated2.i.i.i, %i.ew
  %.sroa.speculated.i.i.i = select i1 %i.ey, double %i.ew, double %.sroa.speculated2.i.i.i
  %i.ez = fmul double %.sroa.speculated.i.i.i, 1.000000e-05
  %i.fa = fcmp ugt double %i.eu, %i.ez
  br i1 %i.fa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fb = fsub double %0, %i.bb
  %i.fc = tail call noundef double @llvm.fabs.f64(double %i.fb)
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.fe = fcmp olt double %.sroa.speculated2.i.i.i, %i.fd
  %.sroa.speculated.i.i.i70 = select i1 %i.fe, double %i.fd, double %.sroa.speculated2.i.i.i
  %i.ff = fmul double %.sroa.speculated.i.i.i70, 1.000000e-05
  %i.fg = fcmp ugt double %i.fc, %i.ff
  br i1 %i.fg, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fh = fsub double %0, %i.ax
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.fh)
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.fk = fcmp olt double %.sroa.speculated2.i.i.i, %i.fj
  %.sroa.speculated.i.i.i72 = select i1 %i.fk, double %i.fj, double %.sroa.speculated2.i.i.i
  %i.fl = fmul double %.sroa.speculated.i.i.i72, 1.000000e-05
  %i.fm = fcmp ugt double %i.fi, %i.fl
  br i1 %i.fm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fn = fsub double %0, %i.bb
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = tail call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.fq = fcmp olt double %.sroa.speculated2.i.i.i, %i.fp
  %.sroa.speculated.i.i.i74 = select i1 %i.fq, double %i.fp, double %.sroa.speculated2.i.i.i
  %i.fr = fmul double %.sroa.speculated.i.i.i74, 1.000000e-05
  %i.fs = fcmp ugt double %i.fo, %i.fr
  br i1 %i.fs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.g
  br label %bb.n

bb.n:                                             ; preds = %_ZN20minEnclosingTriangleL26isFlushAngleBtwPredAndSuccERddd.exit, %bb.j, %bb.l, %bb.m, %bb.h, %bb.e
  %.0 = phi i32 [ %..i, %bb.e ], [ %..i68, %bb.h ], [ 3, %bb.m ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %_ZN20minEnclosingTriangleL26isFlushAngleBtwPredAndSuccERddd.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN20minEnclosingTriangleL23isAngleBetweenNonReflexEddd(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = fsub double %1, %2                       ; 2 uses
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ogt double %i.b, 1.800000e+02
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %1, %2
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp olt double %1, %0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp olt double %0, 3.600000e+02
  br i1 %i.f, label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit, label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit

_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit:  ; preds = %bb.d
  %i.g = fadd double %0, -3.600000e+02
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %.sroa.speculated2.i.i.i = select i1 %i.j, double %i.i, double 1.000000e+00 ; 2 uses
  %i.k = fcmp olt double %.sroa.speculated2.i.i.i, 3.600000e+02
  %.sroa.speculated.i.i.i = select i1 %i.k, double 3.600000e+02, double %.sroa.speculated2.i.i.i
  %i.l = fmul nnan double %.sroa.speculated.i.i.i, 1.000000e-05
  %i.m = fcmp ugt double %i.h, %i.l
  br i1 %i.m, label %bb.e, label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

bb.e:                                             ; preds = %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit, %bb.c
  %i.n = fcmp ogt double %0, 0.000000e+00
  br i1 %i.n, label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fsub double 0.000000e+00, %0
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.r = fcmp ogt double %i.q, 1.000000e+00
  %.sroa.speculated.i.i.i25 = select i1 %i.r, double %i.q, double 1.000000e+00
  %i.s = fmul nnan double %.sroa.speculated.i.i.i25, 1.000000e-05
  %i.t = fcmp ole double %i.p, %i.s
  br label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit26

_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit26: ; preds = %bb.e, %bb.f
  %i.u = phi i1 [ true, %bb.e ], [ %i.t, %bb.f ]
  %i.v = fcmp olt double %0, %2
  %i.w = and i1 %i.v, %i.u
  br label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

bb.g:                                             ; preds = %bb.b
  %i.x = fcmp olt double %2, %0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp olt double %0, 3.600000e+02
  br i1 %i.y, label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit, label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit29

_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit29: ; preds = %bb.h
  %i.z = fadd double %0, -3.600000e+02
  %i.aa = tail call noundef double @llvm.fabs.f64(double %i.z)
  %i.ab = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.ac = fcmp ogt double %i.ab, 1.000000e+00
  %.sroa.speculated2.i.i.i27 = select i1 %i.ac, double %i.ab, double 1.000000e+00 ; 2 uses
  %i.ad = fcmp olt double %.sroa.speculated2.i.i.i27, 3.600000e+02
  %.sroa.speculated.i.i.i28 = select i1 %i.ad, double 3.600000e+02, double %.sroa.speculated2.i.i.i27
  %i.ae = fmul nnan double %.sroa.speculated.i.i.i28, 1.000000e-05
  %i.af = fcmp ugt double %i.aa, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

bb.i:                                             ; preds = %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit29, %bb.g
  %i.ag = fcmp ogt double %0, 0.000000e+00
  br i1 %i.ag, label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = fsub double 0.000000e+00, %0
  %i.ai = tail call noundef double @llvm.fabs.f64(double %i.ah)
  %i.aj = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 1.000000e+00
  %.sroa.speculated.i.i.i30 = select i1 %i.ak, double %i.aj, double 1.000000e+00
  %i.al = fmul nnan double %.sroa.speculated.i.i.i30, 1.000000e-05
  %i.am = fcmp ole double %i.ai, %i.al
  br label %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit31

_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit31: ; preds = %bb.i, %bb.j
  %i.an = phi i1 [ true, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = fcmp olt double %0, %1
  %i.ap = and i1 %i.ao, %i.an
  br label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

bb.k:                                             ; preds = %bb.a
  %i.aq = fptosi double %i.a to i32
  %i.ar = srem i32 %i.aq, 180
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = fcmp olt double %2, %0
  %i.au = fcmp olt double %0, %1
  %i.av = and i1 %i.au, %i.at
  br label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = fcmp olt double %1, %0
  %i.ax = fcmp olt double %0, %2
  %i.ay = and i1 %i.aw, %i.ax
  br label %_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit

_ZN20minEnclosingTriangleL14isAngleBetweenEddd.exit: ; preds = %bb.h, %bb.d, %bb.m, %bb.l, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit29, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit31, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit26
  %.0 = phi i1 [ true, %bb.d ], [ %i.w, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit26 ], [ true, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit ], [ true, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit29 ], [ %i.ap, %_ZN20minEnclosingTriangleL11lessOrEqualEdd.exit31 ], [ %i.ay, %bb.m ], [ %i.av, %bb.l ], [ true, %bb.h ]
  ret i1 %.0
}

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
