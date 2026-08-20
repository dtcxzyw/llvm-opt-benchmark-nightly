inline.NumInlined: 247
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [45 x i8] c" Sequential 1-D convolution implementation: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c" Vectorized 1-D convolution implementation: \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"../../../../data/lena.jpg\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Can't open [\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@constinit = private unnamed_addr constant [9 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c" Sequential 2-D convolution implementation: \00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" Vectorized 2-D convolution implementation: \00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c" This program shows how to use the OpenCV parallel_for_ function and \0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c" compares the performance of the sequential and parallel implementations for a \0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c" convolution operation\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" Usage:\0A \00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c" [image_path -- default lena.jpg] \00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"list.size() != 0\00", align 1
@__func__._ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E = private unnamed_addr constant [4 x i8] c"Mat\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"size_total == list.size()\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %i.a = alloca [100005 x float], align 16        ; 27 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %12 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %20 = alloca %"class.cv::RNG", align 8          ; 6 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %23 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %28 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %30 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %i.c = alloca [100005 x float], align 16        ; 5 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %i.d = alloca [2 x i32], align 4                ; 6 uses
  %i.e = alloca [9 x float], align 4              ; 5 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 1, i32 noundef 100005, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef 1, i32 noundef 2000, i32 noundef 5)
          to label %bb.b unwind label %bb.ar

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.f = call i64 @time(ptr noundef null) #14     ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i, i64 4294967295, i64 %i.f
  store i64 %i.g, ptr %20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 50397184, ptr %21, align 8, !tbaa !12
  store ptr %17, ptr %i.h, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %22, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %i.k, align 8, !tbaa !16
  store i64 17179869185, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  store double 2.550000e+02, ptr %25, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 -1056833530, ptr %24, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %i.n, align 8, !tbaa !16
  store i64 17179869185, ptr %i.m, align 8
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.as

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  %i.o = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 50397184, ptr %26, align 8, !tbaa !12
  store ptr %18, ptr %i.o, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  store double -5.000000e+01, ptr %28, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 -1056833530, ptr %27, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %28, ptr %i.s, align 8, !tbaa !16
  store i64 17179869185, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  store double 5.000000e+01, ptr %30, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %30, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 -1056833530, ptr %29, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %i.v, align 8, !tbaa !16
  store i64 17179869185, ptr %i.u, align 8
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %29, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.at

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  %i.w = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.e unwind label %bb.au

bb.e:                                             ; preds = %bb.d
  %i.x = sitofp i64 %i.w to double
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.f unwind label %bb.au

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 1, i32 noundef %i.z, i32 noundef 0)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.g
  %i.aa = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %.noexc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.ad = sdiv i32 %i.ac, 2                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !28
  store i32 16842752, ptr %14, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %31, ptr %i.ag, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !12
  store ptr %31, ptr %i.ah, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0, i32 noundef 0, i32 noundef %i.ad, i32 noundef %i.ad, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc83 unwind label %bb.aw

.noexc83:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.aj = icmp sgt i32 %i.z, 0
  br i1 %i.aj, label %.lr.ph34.i, label %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit

.lr.ph34.i:                                       ; preds = %.noexc83
  %.not29.i = icmp slt i32 %i.ac, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 6 uses
  br i1 %.not29.i, label %.lr.ph34.split.us.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph34.i
  %i.an = sub nsw i32 0, %i.ad
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = sext i32 %i.ad to i64
  %smax.i = call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 3 uses
  %i.aq = add nuw nsw i32 %smax.i, 1
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  %i.ar = add i32 %i.ad, %smax.i
  %i.as = and i32 %i.ar, 1
  %lcmp.mod.not.not = icmp eq i32 %i.as, 0
  %indvars.iv.next.i.prol = add nsw i64 %i.ao, 1
  %54 = sub nsw i32 0, %smax.i
  %i.at = icmp eq i32 %i.ad, %54
  br label %.lr.ph.i

.lr.ph34.split.us.preheader.i:                    ; preds = %.lr.ph34.i
  %wide.trip.count45.i = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter387 = and i64 %wide.trip.count45.i, 3  ; 3 uses
  %i.au = icmp ult i32 %i.z, 4
  br i1 %i.au, label %.lr.ph34.split.us.i.epil.preheader, label %.lr.ph34.split.us.preheader.i.new

.lr.ph34.split.us.preheader.i.new:                ; preds = %.lr.ph34.split.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count45.i, 2147483644
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %.lr.ph34.split.us.i, %.lr.ph34.split.us.preheader.i.new
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph34.split.us.preheader.i.new ], [ %indvars.iv.next43.i.3, %.lr.ph34.split.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph34.split.us.preheader.i.new ], [ %niter.next.3, %.lr.ph34.split.us.i ]
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv42.i
  store i8 0, ptr %i.aw, align 1, !tbaa !30
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv42.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 0, ptr %i.az, align 1, !tbaa !30
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv42.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 0, ptr %i.bc, align 1, !tbaa !30
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv42.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 0, ptr %i.bf, align 1, !tbaa !30
  %indvars.iv.next43.i.3 = add nuw nsw i64 %indvars.iv42.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, label %.lr.ph34.split.us.i, !llvm.loop !31

bb.i:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.body

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next39.i, %._crit_edge.i ] ; 4 uses
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv38.i to i32
  %i.bj = add i32 %i.ad, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !29
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.bk, i64 %i.ap ; 3 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv38.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = uitofp i8 %i.bm to float
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ao
  %i.bo = load float, ptr %gep.i.prol, align 4, !tbaa !33
  %i.bp = fmul float %i.bo, %i.bn
  %i.bq = fpext float %i.bp to double
  %i.br = fadd double %i.bq, 0.000000e+00         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa386.unr = phi double [ poison, %.lr.ph.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.unr = phi i64 [ %i.ao, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %.02130.i.unr = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa386 = phi double [ %.lcssa386.unr, %.prol.loopexit ], [ %i.cs, %.lr.ph.i.new ]
  %i.bs = insertelement <2 x double> poison, double %.lcssa386, i64 0
  %i.bt = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bs)
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = call i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  %i.bw = trunc nuw i32 %i.bv to i8
  %i.bx = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv38.i
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !30
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, %wide.trip.count.i
  br i1 %exitcond41.not.i, label %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %.02130.i = phi double [ %i.cs, %.lr.ph.i.new ], [ %.02130.i.unr, %.prol.loopexit ]
  %i.bz = trunc nsw i64 %indvars.iv.i to i32
  %i.ca = add i32 %i.bj, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bh, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = uitofp i8 %i.cd to float
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cf = load float, ptr %gep.i, align 4, !tbaa !33
  %i.cg = fmul float %i.cf, %i.ce
  %i.ch = fpext float %i.cg to double
  %i.ci = fadd double %.02130.i, %i.ch
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cj = trunc nsw i64 %indvars.iv.next.i to i32
  %i.ck = add i32 %i.bj, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.bh, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30
  %i.co = uitofp i8 %i.cn to float
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.cp = load float, ptr %gep.i.1, align 4, !tbaa !33
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fpext float %i.cq to double
  %i.cs = fadd double %i.ci, %i.cr                ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.aq, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !35

_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph34.split.us.i
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit, label %.lr.ph34.split.us.i.epil.preheader

.lr.ph34.split.us.i.epil.preheader:               ; preds = %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph34.split.us.preheader.i
  %indvars.iv42.i.epil.init = phi i64 [ 0, %.lr.ph34.split.us.preheader.i ], [ %indvars.iv.next43.i.3, %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod389 = icmp ne i64 %xtraiter387, 0
  call void @llvm.assume(i1 %lcmp.mod389)
  br label %.lr.ph34.split.us.i.epil

.lr.ph34.split.us.i.epil:                         ; preds = %.lr.ph34.split.us.i.epil, %.lr.ph34.split.us.i.epil.preheader
  %indvars.iv42.i.epil = phi i64 [ %indvars.iv42.i.epil.init, %.lr.ph34.split.us.i.epil.preheader ], [ %indvars.iv.next43.i.epil, %.lr.ph34.split.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph34.split.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph34.split.us.i.epil ]
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv42.i.epil
  store i8 0, ptr %i.cu, align 1, !tbaa !30
  %indvars.iv.next43.i.epil = add nuw nsw i64 %indvars.iv42.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter387
  br i1 %epil.iter.cmp.not, label %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit, label %.lr.ph34.split.us.i.epil, !llvm.loop !36

_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit:   ; preds = %._crit_edge.i, %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph34.split.us.i.epil, %.noexc83
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #14
  %i.cv = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.j unwind label %bb.au

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_16conv1dEN2cv3MatERS1_S1_.exit
  %i.cw = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.k unwind label %bb.au

bb.k:                                             ; preds = %bb.j
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %i.cy = sitofp i64 %i.cv to double
  %i.cz = fsub double %i.cy, %i.x
  %i.da = fdiv double %i.cz, %i.cw
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.da)
          to label %_ZNSolsEd.exit unwind label %bb.au ; 4 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZNSolsEd.exit
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc231 unwind label %bb.au

.noexc231:                                        ; preds = %bb.l
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !56
  %.not.i1.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 67
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !30
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di)
          to label %.noexc232 unwind label %bb.au

.noexc232:                                        ; preds = %bb.n
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.au, !inline_history !62

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc232, %bb.m
  %.0.i.i.i = phi i8 [ %i.dm, %bb.m ], [ %i.dq, %.noexc232 ]
end_hunk_0
begin_hunk_1_@main:bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.iz, %bb.aw ], [ %i.bg, %bb.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #14
  br label %bb.ax

bb.ax:                                            ; preds = %.body, %bb.av
  %.pn51 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.iy, %bb.av ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #14
  br label %bb.dk

bb.ay:                                            ; preds = %.invoke, %.noexc244, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i239, %.noexc242, %bb.v, %.noexc117, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10.i, %.noexc115, %bb.ad, %.noexc112, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i, %.noexc110, %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.z, %bb.y, %.noexc104, %.noexc103, %.noexc102, %.noexc101, %.noexc100, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %.noexc98, %bb.x, %_ZNSolsEd.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %bb.t, %bb.s, %bb.r, %bb.o
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.az:                                            ; preds = %bb.p
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.q
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #14
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn53 = phi { ptr, i32 } [ %i.jc, %bb.ba ], [ %i.jb, %bb.az ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #14
  br label %bb.dj

bb.bc:                                            ; preds = %.noexc.i, %bb.ag
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.bd:                                            ; preds = %bb.ak
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.al
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn55 = phi { ptr, i32 } [ %i.jf, %bb.be ], [ %i.je, %bb.bd ] ; 2 uses
  %i.jg = load ptr, ptr %40, align 8, !tbaa !69   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.hi
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bf
  %i.ji = load i64, ptr %i.hi, align 8, !tbaa !30
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.bc
  %.pn55.pn = phi { ptr, i32 } [ %i.jd, %bb.bc ], [ %.pn55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %.pn55, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  br label %bb.di

bb.bg:                                            ; preds = %.invoke370, %.noexc288, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i283, %.noexc286, %bb.ct, %.noexc277, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i272, %.noexc275, %bb.cr, %.noexc266, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i261, %.noexc264, %bb.bt, %.noexc255, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i250, %.noexc253, %bb.aq, %_ZNSolsEd.exit202, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200, %bb.cp, %_ZNSolsEd.exit173, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %bb.co, %bb.cn, %bb.bw, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.bq, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, %bb.bl, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

._crit_edge.i.i134:                               ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #14
  %i.jl = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  store ptr %i.jl, ptr %41, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.jl, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 5, ptr %i.jm, align 8, !tbaa !71
  %i.jn = getelementptr inbounds nuw i8, ptr %41, i64 21
  store i8 0, ptr %i.jn, align 1, !tbaa !30
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 1)
          to label %bb.bh unwind label %bb.cv

bb.bh:                                            ; preds = %._crit_edge.i.i134
  %i.jo = load ptr, ptr %41, align 8, !tbaa !69   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.jl
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bh
  %i.jq = load i64, ptr %i.jl, align 8, !tbaa !30
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  %i.js = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  store ptr %i.js, ptr %42, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.js, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 6, ptr %i.jt, align 8, !tbaa !71
  %i.ju = getelementptr inbounds nuw i8, ptr %42, i64 22
  store i8 0, ptr %i.ju, align 2, !tbaa !30
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 1)
          to label %bb.bi unwind label %bb.cw

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.jv = load ptr, ptr %42, align 8, !tbaa !69   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.js
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bi
  %i.jx = load i64, ptr %i.js, align 8, !tbaa !30
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  %i.jz = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.jz, ptr %43, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.jz, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 5, ptr %i.ka, align 8, !tbaa !71
  %i.kb = getelementptr inbounds nuw i8, ptr %43, i64 21
  store i8 0, ptr %i.kb, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  %i.kc = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.kc, align 8, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.kd, align 4, !tbaa !28
  store i32 16842752, ptr %44, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.ke, align 8, !tbaa !16
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.bj unwind label %bb.cx

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  %i.kf = load ptr, ptr %43, align 8, !tbaa !69   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.jz
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bj
  %i.kh = load i64, ptr %i.jz, align 8, !tbaa !30
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 3, ptr %i.d, align 4, !tbaa !72
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 3, ptr %i.kj, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.e, ptr noundef nonnull align 4 dereferenceable(36) @constinit, i64 36, i1 false), !tbaa.struct !73
  invoke void @_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %45, ptr nonnull %i.d, i64 2, ptr nonnull %i.e, i64 9)
          to label %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit unwind label %bb.cy

_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.kk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(208) %45)
          to label %bb.bk unwind label %bb.cz     ; 0 uses

bb.bk:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  %i.kl = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.bl unwind label %bb.bg

bb.bl:                                            ; preds = %bb.bk
  %i.km = sitofp i64 %i.kl to double
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %35)
          to label %bb.bm unwind label %bb.bg

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.bn unwind label %bb.db

bb.bn:                                            ; preds = %bb.bm
  %i.kn = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !74 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %46, i64 12
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.ko, i32 noundef %i.kq, i32 noundef 0)
          to label %.noexc166 unwind label %bb.dc

.noexc166:                                        ; preds = %bb.bn
  %i.kr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.bo unwind label %bb.bp     ; 0 uses

bb.bo:                                            ; preds = %.noexc166
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ks = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !74 ; 2 uses
  %i.ku = sdiv i32 %i.kt, 2                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.kv, align 8, !tbaa !27
  %i.kw = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.kw, align 4, !tbaa !28
  store i32 16842752, ptr %10, align 8, !tbaa !12
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %46, ptr %i.kx, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.kz, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !12
  store ptr %46, ptr %i.ky, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %i.ku, i32 noundef %i.ku, i32 noundef %i.ku, i32 noundef %i.ku, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc167 unwind label %bb.dc

.noexc167:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.la = icmp sgt i32 %i.ko, 0
  br i1 %i.la, label %.lr.ph67.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit

.lr.ph67.i:                                       ; preds = %.noexc167
  %i.lb = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %36, i64 128 ; 6 uses
  %i.ld = icmp sgt i32 %i.kq, 0
  %i.le = sub nsw i32 0, %i.ku
  %i.lf = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.lg = getelementptr inbounds nuw i8, ptr %46, i64 128
  %i.lh = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %47, i64 128
  br i1 %i.ld, label %.lr.ph67.split.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit

.lr.ph67.split.i:                                 ; preds = %.lr.ph67.i
  %.not54.i = icmp slt i32 %i.kt, -1
  br i1 %.not54.i, label %.lr.ph63.us.preheader.i, label %.lr.ph63.preheader.i

.lr.ph63.preheader.i:                             ; preds = %.lr.ph67.split.i
  %i.lj = sext i32 %i.le to i64                   ; 3 uses
  %i.lk = sext i32 %i.ku to i64                   ; 4 uses
  %smax.i156 = call i32 @llvm.abs.i32(i32 %i.ku, i1 false) ; 3 uses
  %i.ll = add nuw nsw i32 %smax.i156, 1           ; 2 uses
  %wide.trip.count85.i = zext nneg i32 %i.ko to i64
  %wide.trip.count.i157 = zext nneg i32 %i.kq to i64
  %55 = add i32 %i.ku, %smax.i156
  %i.lm = add i32 %55, 1
  %i.ln = add nsw i32 %i.ku, %smax.i156
  %xtraiter392 = and i32 %i.lm, 3                 ; 2 uses
  %lcmp.mod393.not = icmp eq i32 %xtraiter392, 0
  %i.lo = icmp ult i32 %i.ln, 3
  br label %.lr.ph63.i

.lr.ph63.us.preheader.i:                          ; preds = %.lr.ph67.split.i
  %i.lp = zext nneg i32 %i.kq to i64              ; 5 uses
  %wide.trip.count93.i = zext nneg i32 %i.ko to i64 ; 2 uses
  %xtraiter394 = and i64 %wide.trip.count93.i, 3  ; 3 uses
  %i.lq = icmp ult i32 %i.ko, 4
  br i1 %i.lq, label %.lr.ph63.us.i.epil.preheader, label %.lr.ph63.us.preheader.i.new

.lr.ph63.us.preheader.i.new:                      ; preds = %.lr.ph63.us.preheader.i
  %unroll_iter398 = and i64 %wide.trip.count93.i, 2147483644
  br label %.lr.ph63.us.i

.lr.ph63.us.i:                                    ; preds = %.lr.ph63.us.i, %.lr.ph63.us.preheader.i.new
  %indvars.iv90.i = phi i64 [ 0, %.lr.ph63.us.preheader.i.new ], [ %indvars.iv.next91.i.3, %.lr.ph63.us.i ] ; 5 uses
  %niter399 = phi i64 [ 0, %.lr.ph63.us.preheader.i.new ], [ %niter399.next.3, %.lr.ph63.us.i ]
  %i.lr = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.ls = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.lt = mul i64 %i.ls, %indvars.iv90.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lt
  call void @llvm.memset.p0.i64(ptr align 1 %i.lu, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1
  %i.lv = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.lw = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.lx = mul i64 %i.lw, %indvars.iv.next91.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  call void @llvm.memset.p0.i64(ptr align 1 %i.ly, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i.1 = or disjoint i64 %indvars.iv90.i, 2
  %i.lz = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.ma = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.mb = mul i64 %i.ma, %indvars.iv.next91.i.1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mb
  call void @llvm.memset.p0.i64(ptr align 1 %i.mc, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i.2 = or disjoint i64 %indvars.iv90.i, 3
  %i.md = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.me = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.mf = mul i64 %i.me, %indvars.iv.next91.i.2
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mf
  call void @llvm.memset.p0.i64(ptr align 1 %i.mg, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i.3 = add nuw nsw i64 %indvars.iv90.i, 4 ; 2 uses
  %niter399.next.3 = add i64 %niter399, 4         ; 2 uses
  %niter399.ncmp.3 = icmp eq i64 %niter399.next.3, %unroll_iter398
  br i1 %niter399.ncmp.3, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, label %.lr.ph63.us.i, !llvm.loop !75

bb.bp:                                            ; preds = %.noexc166
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %.body168

.lr.ph63.i:                                       ; preds = %._crit_edge64.split.i, %.lr.ph63.preheader.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph63.preheader.i ], [ %indvars.iv.next83.i, %._crit_edge64.split.i ] ; 3 uses
  %i.mi = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.mj = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.mk = mul i64 %i.mj, %indvars.iv82.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mk
  %i.mm = add nsw i64 %indvars.iv82.i, %i.lk
  br label %.lr.ph58.i

._crit_edge64.split.i:                            ; preds = %._crit_edge59.split.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.i, !llvm.loop !75

.lr.ph58.i:                                       ; preds = %._crit_edge59.split.i, %.lr.ph63.i
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next79.i, %._crit_edge59.split.i ] ; 3 uses
  %i.mn = load ptr, ptr %i.lf, align 8, !tbaa !29
  %i.mo = load i64, ptr %i.lg, align 8, !tbaa !68
  %i.mp = load ptr, ptr %i.lh, align 8, !tbaa !29
  %i.mq = load i64, ptr %i.li, align 8, !tbaa !68
  %invariant.gep98.i = getelementptr [4 x i8], ptr %i.mp, i64 %i.lk
  %invariant.gep.i158 = getelementptr i8, ptr %i.mn, i64 %indvars.iv78.i
  %invariant.gep101.i = getelementptr i8, ptr %invariant.gep.i158, i64 %i.lk
  br label %.lr.ph.i159

._crit_edge59.split.i:                            ; preds = %._crit_edge.i165
  %i.mr = insertelement <4 x float> poison, float %.lcssa, i64 0
  %i.ms = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mr)
  %i.mt = call i32 @llvm.smax.i32(i32 %i.ms, i32 0)
  %i.mu = call i32 @llvm.umin.i32(i32 %i.mt, i32 255)
  %i.mv = trunc nuw i32 %i.mu to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv78.i
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !30
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count.i157
  br i1 %exitcond81.not.i, label %._crit_edge64.split.i, label %.lr.ph58.i, !llvm.loop !76

.lr.ph.i159:                                      ; preds = %._crit_edge.i165, %.lr.ph58.i
  %indvars.iv73.i = phi i64 [ %i.lj, %.lr.ph58.i ], [ %indvars.iv.next74.i, %._crit_edge.i165 ] ; 3 uses
  %.04055.i = phi float [ 0.000000e+00, %.lr.ph58.i ], [ %.lcssa, %._crit_edge.i165 ] ; 2 uses
  %i.mx = add nsw i64 %i.mm, %indvars.iv73.i
  %i.my = mul i64 %i.mx, %i.mo
  %i.mz = add nsw i64 %indvars.iv73.i, %i.lk
  %i.na = mul i64 %i.mz, %i.mq
  %gep99.i = getelementptr i8, ptr %invariant.gep98.i, i64 %i.na ; 5 uses
  %gep102.i = getelementptr i8, ptr %invariant.gep101.i, i64 %i.my ; 5 uses
  br i1 %lcmp.mod393.not, label %.prol.loopexit391, label %.prol.preheader390

.prol.preheader390:                               ; preds = %.lr.ph.i159, %.prol.preheader390
  %indvars.iv.i160.prol = phi i64 [ %indvars.iv.next.i162.prol, %.prol.preheader390 ], [ %i.lj, %.lr.ph.i159 ] ; 3 uses
  %.152.i.prol = phi float [ %i.nf, %.prol.preheader390 ], [ %.04055.i, %.lr.ph.i159 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader390 ], [ 0, %.lr.ph.i159 ]
  %gep.i161.prol = getelementptr [4 x i8], ptr %gep99.i, i64 %indvars.iv.i160.prol
  %i.nb = load float, ptr %gep.i161.prol, align 4, !tbaa !33
  %i.nc = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.i160.prol
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !30
  %i.ne = uitofp i8 %i.nd to float
  %i.nf = call float @llvm.fmuladd.f32(float %i.nb, float %i.ne, float %.152.i.prol) ; 3 uses
  %indvars.iv.next.i162.prol = add nsw i64 %indvars.iv.i160.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter392
  br i1 %prol.iter.cmp.not, label %.prol.loopexit391, label %.prol.preheader390, !llvm.loop !77

.prol.loopexit391:                                ; preds = %.prol.preheader390, %.lr.ph.i159
  %.lcssa.unr = phi float [ poison, %.lr.ph.i159 ], [ %i.nf, %.prol.preheader390 ]
  %indvars.iv.i160.unr = phi i64 [ %i.lj, %.lr.ph.i159 ], [ %indvars.iv.next.i162.prol, %.prol.preheader390 ]
  %.152.i.unr = phi float [ %.04055.i, %.lr.ph.i159 ], [ %i.nf, %.prol.preheader390 ]
  br i1 %i.lo, label %._crit_edge.i165, label %.lr.ph.i159.new

._crit_edge.i165:                                 ; preds = %.lr.ph.i159.new, %.prol.loopexit391
  %.lcssa = phi float [ %.lcssa.unr, %.prol.loopexit391 ], [ %i.nz, %.lr.ph.i159.new ] ; 2 uses
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %lftr.wideiv76.i = trunc i64 %indvars.iv.next74.i to i32
  %exitcond77.not.i = icmp eq i32 %i.ll, %lftr.wideiv76.i
  br i1 %exitcond77.not.i, label %._crit_edge59.split.i, label %.lr.ph.i159, !llvm.loop !78

.lr.ph.i159.new:                                  ; preds = %.prol.loopexit391, %.lr.ph.i159.new
  %indvars.iv.i160 = phi i64 [ %indvars.iv.next.i162.3, %.lr.ph.i159.new ], [ %indvars.iv.i160.unr, %.prol.loopexit391 ] ; 6 uses
  %.152.i = phi float [ %i.nz, %.lr.ph.i159.new ], [ %.152.i.unr, %.prol.loopexit391 ]
  %gep.i161 = getelementptr [4 x i8], ptr %gep99.i, i64 %indvars.iv.i160
  %i.ng = load float, ptr %gep.i161, align 4, !tbaa !33
  %i.nh = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.i160
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !30
  %i.nj = uitofp i8 %i.ni to float
  %i.nk = call float @llvm.fmuladd.f32(float %i.ng, float %i.nj, float %.152.i)
  %indvars.iv.next.i162 = add nsw i64 %indvars.iv.i160, 1 ; 2 uses
  %gep.i161.1 = getelementptr [4 x i8], ptr %gep99.i, i64 %indvars.iv.next.i162
  %i.nl = load float, ptr %gep.i161.1, align 4, !tbaa !33
  %i.nm = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i162
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !30
  %i.no = uitofp i8 %i.nn to float
  %i.np = call float @llvm.fmuladd.f32(float %i.nl, float %i.no, float %i.nk)
  %indvars.iv.next.i162.1 = add nsw i64 %indvars.iv.i160, 2 ; 2 uses
  %gep.i161.2 = getelementptr [4 x i8], ptr %gep99.i, i64 %indvars.iv.next.i162.1
  %i.nq = load float, ptr %gep.i161.2, align 4, !tbaa !33
  %i.nr = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i162.1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !30
  %i.nt = uitofp i8 %i.ns to float
  %i.nu = call float @llvm.fmuladd.f32(float %i.nq, float %i.nt, float %i.np)
  %indvars.iv.next.i162.2 = add nsw i64 %indvars.iv.i160, 3 ; 2 uses
  %gep.i161.3 = getelementptr [4 x i8], ptr %gep99.i, i64 %indvars.iv.next.i162.2
  %i.nv = load float, ptr %gep.i161.3, align 4, !tbaa !33
  %i.nw = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i162.2
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !30
  %i.ny = uitofp i8 %i.nx to float
  %i.nz = call float @llvm.fmuladd.f32(float %i.nv, float %i.ny, float %i.nu) ; 2 uses
  %indvars.iv.next.i162.3 = add nsw i64 %indvars.iv.i160, 4 ; 2 uses
  %lftr.wideiv.i163.3 = trunc i64 %indvars.iv.next.i162.3 to i32
  %exitcond.not.i164.3 = icmp eq i32 %i.ll, %lftr.wideiv.i163.3
  br i1 %exitcond.not.i164.3, label %._crit_edge.i165, label %.lr.ph.i159.new, !llvm.loop !79

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph63.us.i
  %lcmp.mod396.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod396.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil.preheader

.lr.ph63.us.i.epil.preheader:                     ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.preheader.i
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.lr.ph63.us.preheader.i ], [ %indvars.iv.next91.i.3, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod397 = icmp ne i64 %xtraiter394, 0
  call void @llvm.assume(i1 %lcmp.mod397)
  br label %.lr.ph63.us.i.epil

.lr.ph63.us.i.epil:                               ; preds = %.lr.ph63.us.i.epil, %.lr.ph63.us.i.epil.preheader
  %indvars.iv90.i.epil = phi i64 [ %indvars.iv90.i.epil.init, %.lr.ph63.us.i.epil.preheader ], [ %indvars.iv.next91.i.epil, %.lr.ph63.us.i.epil ] ; 2 uses
  %epil.iter395 = phi i64 [ 0, %.lr.ph63.us.i.epil.preheader ], [ %epil.iter395.next, %.lr.ph63.us.i.epil ]
  %i.oa = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.ob = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.oc = mul i64 %i.ob, %indvars.iv90.i.epil
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oc
  call void @llvm.memset.p0.i64(ptr align 1 %i.od, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i.epil = add nuw nsw i64 %indvars.iv90.i.epil, 1
  %epil.iter395.next = add i64 %epil.iter395, 1   ; 2 uses
  %epil.iter395.cmp.not = icmp eq i64 %epil.iter395.next, %xtraiter394
  br i1 %epil.iter395.cmp.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil, !llvm.loop !80

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit: ; preds = %._crit_edge64.split.i, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.i.epil, %.lr.ph67.i, %.noexc167
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #14
  %i.oe = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.bq unwind label %bb.bg

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit
  %i.of = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.br unwind label %bb.bg

bb.br:                                            ; preds = %bb.bq
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %bb.br
end_hunk_1
