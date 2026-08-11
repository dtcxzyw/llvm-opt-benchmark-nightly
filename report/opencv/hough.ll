inline.NumInlined: 2523
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd

declare void @_ZN2cv6dilateERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_6Point_IiEEiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !295 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26, !inline_history !295
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #22, !inline_history !295
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !290
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !393
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_L15HoughCirclesAltERKNS0_3MatERSt6vectorINS0_15EstimatedCircleESaIS9_EEddddddE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [100 x %"struct.cv::CircleData"], align 16 ; 11 uses
  %3 = alloca [10 x %"struct.cv::CircleData"], align 16 ; 17 uses
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !289   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i.i.i = phi i64 [ 0, %bb.a ], [ %.add.i.i.i.4, %bb.b ] ; 6 uses
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i ; 3 uses
  store double 0.000000e+00, ptr %.ptr.i.i.i, align 8, !tbaa !394
  %i.b = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !396
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !397
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i ; 3 uses
  %.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double 0.000000e+00, ptr %.ptr.i.i.i.1, align 8, !tbaa !394
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !396
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !397
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i ; 3 uses
  %.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double 0.000000e+00, ptr %.ptr.i.i.i.2, align 8, !tbaa !394
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !396
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !397
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i ; 3 uses
  %.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double 0.000000e+00, ptr %.ptr.i.i.i.3, align 8, !tbaa !394
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i32 0, ptr %i.k, align 8, !tbaa !396
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 0, ptr %i.l, align 8, !tbaa !397
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i ; 3 uses
  %.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store double 0.000000e+00, ptr %.ptr.i.i.i.4, align 8, !tbaa !394
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i32 0, ptr %i.n, align 8, !tbaa !396
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store i64 0, ptr %i.o, align 8, !tbaa !397
  %.add.i.i.i.4 = add nuw nsw i64 %.idx.i.i.i, 120 ; 2 uses
  %i.p = icmp eq i64 %.add.i.i.i.4, 2400
  br i1 %i.p, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store double 0.000000e+00, ptr %3, align 16, !tbaa !394
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !396
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i64 0, ptr %i.aa, align 8, !tbaa !397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ab = load i32, ptr %1, align 4, !tbaa !166   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !181
  %i.ae = icmp slt i32 %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph492.i.i.i, label %"_ZSt10__invoke_rIvRZN2cvL15HoughCirclesAltERKNS0_3MatERSt6vectorINS0_15EstimatedCircleESaIS5_EEddddddE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.lr.ph492.i.i.i:                                  ; preds = %bb.c
  %i.af = mul i32 %i.ab, 10
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.al = sext i32 %i.af to i64
  %i.am = mul i32 %i.ab, -10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge483.i.i.i, %.lr.ph492.i.i.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %._crit_edge483.i.i.i ], [ %i.am, %.lr.ph492.i.i.i ] ; 2 uses
  %indvars.iv544.i.i.i = phi i64 [ %indvars.iv.next545.i.i.i, %._crit_edge483.i.i.i ], [ %i.al, %.lr.ph492.i.i.i ] ; 3 uses
  %.sroa.0385.0489.i.i.i = phi ptr [ %.sroa.0385.4.i.i.i, %._crit_edge483.i.i.i ], [ null, %.lr.ph492.i.i.i ] ; 3 uses
  %.sroa.10.0488.i.i.i = phi ptr [ %.sroa.10.4.i.i.i, %._crit_edge483.i.i.i ], [ null, %.lr.ph492.i.i.i ] ; 2 uses
  %.sroa.17.0487.i.i.i = phi ptr [ %.sroa.17.4.i.i.i, %._crit_edge483.i.i.i ], [ null, %.lr.ph492.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.val, align 8, !tbaa !398, !nonnull !337, !align !338
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !227
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !400, !nonnull !337, !align !338 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !146 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv544.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = trunc nsw i64 %indvars.iv544.i.i.i to i32
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader415.preheader.i.i.i, label %.critedge.i.i.i

.preheader415.preheader.i.i.i:                    ; preds = %bb.d
  %i.bc = add i32 %indvars.iv.i.i, %i.ay
  %smin.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 10)
  %i.bd = zext nneg i32 %smin.i.i to i64          ; 3 uses
  br label %.preheader415.i.i.i

.preheader417.i.i.i:                              ; preds = %.preheader415.i.i.i
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !401, !nonnull !337, !align !402
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph455.i.i.i, label %.lr.ph482.i.i.i.preheader

.lr.ph482.i.i.i.preheader:                        ; preds = %._crit_edge456.i.i.i, %.preheader417.i.i.i
  br label %.lr.ph482.i.i.i

.preheader415.i.i.i:                              ; preds = %.preheader415.i.i.i, %.preheader415.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader415.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.preheader415.i.i.i ] ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 240
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i ; 12 uses
  store double 0.000000e+00, ptr %i.bh, align 16, !tbaa !152
  %.sroa.4377.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %.sroa.4377.0..sroa_idx.i.i.i, align 8, !tbaa !32
  %.sroa.5379.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.5379.0..sroa_idx.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %.sroa.5379.0..sroa_idx.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %.sroa.5379.0..sroa_idx.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %.sroa.5379.0..sroa_idx.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %.sroa.5379.0..sroa_idx.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %.sroa.5379.0..sroa_idx.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %.sroa.5379.0..sroa_idx.7.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  %.sroa.5379.0..sroa_idx.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %.sroa.5379.0..sroa_idx.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  store i64 0, ptr %.sroa.5379.0..sroa_idx.9.i.i.i, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.i.i.i ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.sroa.5379.0..sroa_idx.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5379.0..sroa_idx.1.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.sroa.5379.0..sroa_idx.2.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5379.0..sroa_idx.3.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.sroa.5379.0..sroa_idx.4.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5379.0..sroa_idx.5.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.sroa.5379.0..sroa_idx.6.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5379.0..sroa_idx.7.i.i.i, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.sroa.5379.0..sroa_idx.8.i.i.i, i8 0, i64 20, i1 false)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !152
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5375.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 0, ptr %.sroa.5375.0..sroa_idx.i.i.i, align 8, !tbaa !29
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !396
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store i32 -2, ptr %i.bj, align 4, !tbaa !32
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bd
  br i1 %exitcond.not.i.i, label %.preheader417.i.i.i, label %.preheader415.i.i.i, !llvm.loop !403

.lr.ph455.i.i.i:                                  ; preds = %.preheader417.i.i.i, %._crit_edge456.i.i.i
  %indvars.iv525.i.i.i = phi i64 [ %indvars.iv.next526.i.i.i, %._crit_edge456.i.i.i ], [ 0, %.preheader417.i.i.i ] ; 7 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv525.i.i.i ; 4 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !33 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !33 ; 4 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bs)
  %i.bu = fcmp oeq float %i.bl, 0.000000e+00
  %i.bv = fcmp oeq float %i.bn, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = fcmp oeq float %i.bp, 0.000000e+00
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.bw, i1 false
  %i.bx = fcmp oeq float %i.br, 0.000000e+00
  %spec.select.i.i.i = select i1 %or.cond3.i.i.i, i1 %i.bx, i1 false ; 2 uses
  %i.by = fpext float %i.bt to double
  %i.bz = trunc nuw nsw i64 %indvars.iv525.i.i.i to i32
  br label %bb.e

._crit_edge456.i.i.i:                             ; preds = %bb.af
  %indvars.iv.next526.i.i.i = add nuw nsw i64 %indvars.iv525.i.i.i, 1 ; 2 uses
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !401, !nonnull !337, !align !402
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next526.i.i.i, %i.cc
  br i1 %i.cd, label %.lr.ph455.i.i.i, label %.lr.ph482.i.i.i.preheader, !llvm.loop !404

bb.e:                                             ; preds = %bb.af, %.lr.ph455.i.i.i
  %indvars.iv522.i.i.i = phi i64 [ 0, %.lr.ph455.i.i.i ], [ %indvars.iv.next523.i.i.i, %bb.af ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv522.i.i.i
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !33 ; 3 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0
  %i.ch = fsub float %i.bl, %i.cg                 ; 3 uses
  %i.ci = extractelement <2 x float> %i.cf, i64 1
  %i.cj = fsub float %i.bn, %i.ci                 ; 3 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ck) ; 4 uses
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !405, !nonnull !337, !align !402
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !33
  %i.co = fcmp ogt float %i.cl, %i.cn
  br i1 %i.co, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.aj, align 8, !tbaa !406, !nonnull !337, !align !402
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !33
  %i.cr = fcmp olt float %i.cl, %i.cq
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !401, !nonnull !337, !align !402
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  %i.cu = add nsw i32 %i.ct, -1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv525.i.i.i, %i.cv
  br i1 %i.cw, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cx = fmul float %i.br, %i.cj
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bp, float %i.cx)
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = fmul double %i.cz, %i.cz
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !407, !nonnull !337, !align !338
  %i.dc = load double, ptr %i.db, align 8, !tbaa !152
  %i.dd = fmul double %i.dc, %i.by
  %i.de = fpext float %i.cl to double
  %i.df = fmul double %i.dd, %i.de
  %i.dg = fcmp olt double %i.da, %i.df
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !401, !nonnull !337, !align !402
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32
  %i.dj = add nsw i32 %i.di, -1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv525.i.i.i, %i.dk
  br i1 %i.dl, label %bb.af, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.cl)
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv522.i.i.i ; 4 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !394 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !396 ; 4 uses
  %i.dq = sitofp i32 %i.dp to double
  %i.dr = fdiv double %i.dn, %i.dq                ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv522.i.i.i ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !32 ; 2 uses
  store i32 %i.bz, ptr %i.ds, align 4, !tbaa !32
  %i.du = fpext float %sqrt.i.i.i to double       ; 3 uses
  %i.dv = fsub double %i.du, %i.dr
  %i.dw = tail call noundef double @llvm.fabs.f64(double %i.dv)
  %i.dx = fadd double %i.dr, 8.000000e+01
  %i.dy = fmul double %i.dx, 3.000000e-02
  %i.dz = fcmp olt double %i.dw, %i.dy
  br i1 %i.dz, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ea = add nsw i32 %i.dt, 1
  %i.eb = zext i32 %i.ea to i64
  %i.ec = icmp ne i64 %indvars.iv525.i.i.i, %i.eb
  %or.cond5.i.i.i = select i1 %i.ec, i1 true, i1 %spec.select.i.i.i
  br i1 %or.cond5.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ed = fadd double %i.dn, %i.du                ; 3 uses
  store double %i.ed, ptr %i.dm, align 8, !tbaa !394
  %i.ee = add nsw i32 %i.dp, 1                    ; 3 uses
  store i32 %i.ee, ptr %i.do, align 8, !tbaa !396
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = fdiv double %i.ed, %i.ef
  %i.eh = load ptr, ptr %i.ah, align 8, !tbaa !401, !nonnull !337, !align !402
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv525.i.i.i, %i.ek
  br i1 %i.el, label %bb.af, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.em = phi double [ %i.dn, %bb.k ], [ %i.ed, %bb.l ], [ %i.dn, %bb.j ] ; 2 uses
  %i.en = phi i32 [ %i.dp, %bb.k ], [ %i.ee, %bb.l ], [ %i.dp, %bb.j ] ; 6 uses
  %.0284.i.i.i = phi i32 [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.j ]
  %.0283.i.i.i = phi double [ %i.dr, %bb.k ], [ %i.eg, %bb.l ], [ %i.dr, %bb.j ] ; 4 uses
  %i.eo = icmp sgt i32 %i.en, 9
  br i1 %i.eo, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.ep = uitofp nneg i32 %i.en to double         ; 2 uses
  %i.eq = fmul double %.0283.i.i.i, 1.500000e-01
  %i.er = fcmp ugt double %i.eq, %i.ep
  br i1 %i.er, label %bb.ae, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.es = add nsw i32 %.0284.i.i.i, %i.dt
  %wide.trip.count.i.i.i = zext nneg i32 %i.en to i64
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.v
  %.idx571.i.i.i = mul nuw nsw i64 %indvars.iv522.i.i.i, 240
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %.idx571.i.i.i ; 3 uses
  %i.eu = fmul double %.0283.i.i.i, %.0283.i.i.i  ; 2 uses
  %i.ev = fmul double %i.eu, %i.ep
  %i.ew = fneg double %i.eu
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  br label %bb.w

end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_:bb.a
  store float %i.am, ptr %.sroa.5.0..sroa_idx.i23, align 4
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx.i24, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.au = load <2 x float>, ptr %.sroa.010.023.i26, align 4, !tbaa !33
  store <2 x float> %i.au, ptr %3, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %.pn22.i27, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !33
  store float %i.aw, ptr %i.af, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn22.i27, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !209
  store i32 %i.ay, ptr %i.ag, align 4, !tbaa !209
  %i.az = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %.pn22.i27), !inline_history !424
  br i1 %i.az, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.i, %.lr.ph.i.i34
  %.sroa.0.09.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn22.i27, %bb.i ] ; 4 uses
  %.sroa.04.08.i.i36 = phi ptr [ %.sroa.0.09.i.i35, %.lr.ph.i.i34 ], [ %.sroa.010.023.i26, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.08.i.i36, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.09.i.i35, i64 16, i1 false)
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i35, i64 -16 ; 2 uses
  %i.ba = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i.i37), !inline_history !424
  br i1 %i.ba, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i29, !llvm.loop !213

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.i
  %.sroa.04.0.lcssa.i.i30 = phi ptr [ %.sroa.010.023.i26, %bb.i ], [ %.sroa.0.09.i.i35, %.lr.ph.i.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.0.lcssa.i.i30, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i38
  %.sroa.010.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i26, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.010.0.i31, %1
  %indvar.next.i33 = add i64 %indvar.i25, 1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit, label %bb.g, !llvm.loop !214

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11, %.preheader.i18, %bb.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 10 uses
  %i.i = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f), !inline_history !426
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.h), !inline_history !426
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load float, ptr %0, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  store float %i.k, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h), !inline_history !426
  %i.q = load float, ptr %0, align 4, !tbaa !33   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !209  ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  store float %i.q, ptr %i.h, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  store float %i.q, ptr %i.g, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

bb.g:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h), !inline_history !426
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load float, ptr %0, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  store float %i.w, ptr %i.g, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.h), !inline_history !426
  %i.ac = load float, ptr %0, align 4, !tbaa !33  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load <2 x float>, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !209 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  store float %i.ac, ptr %i.h, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  store float %i.ac, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %.sink49.i = phi ptr [ %i.g, %bb.h ], [ %i.f, %bb.k ], [ %i.h, %bb.j ], [ %i.f, %bb.c ], [ %i.g, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  %.sink.i = phi i32 [ %i.aa, %bb.h ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ], [ %i.o, %bb.c ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %i.ah = phi <2 x float> [ %i.y, %bb.h ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.m, %bb.c ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  %.sroa.4.0..sroa_idx.i.i32.i = getelementptr inbounds nuw i8, ptr %.sink49.i, i64 4
  store <2 x float> %i.ah, ptr %.sroa.4.0..sroa_idx.i.i32.i, align 4
  %.sroa.6.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %.sink49.i, i64 12
  store i32 %.sink.i, ptr %.sroa.6.0..sroa_idx.i.i34.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit
  %.sroa.09.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit ], [ %.sroa.09.1.i, %bb.o ]
  %.sroa.012.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_.exit ], [ %i.aj, %bb.o ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %bb.l ], [ %i.aj, %bb.m ] ; 8 uses
  %i.ai = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.012.1.i, ptr noundef nonnull align 4 dereferenceable(16) %0), !inline_history !427
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.m, label %.preheader.i, !llvm.loop !428

.preheader.i:                                     ; preds = %bb.m, %.preheader.i
  %.sroa.09.0.pn.i = phi ptr [ %.sroa.09.1.i, %.preheader.i ], [ %.sroa.09.0.i, %bb.m ] ; 3 uses
  %.sroa.09.1.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i, i64 -16 ; 6 uses
  %i.ak = tail call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.09.1.i), !inline_history !427
  br i1 %i.ak, label %.preheader.i, label %bb.n, !llvm.loop !429

bb.n:                                             ; preds = %.preheader.i
  %i.al = icmp ult ptr %.sroa.012.1.i, %.sroa.09.1.i
  br i1 %i.al, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_SG_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !209
  %i.aq = load <2 x float>, ptr %.sroa.012.1.i, align 4, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.012.1.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.09.1.i, i64 16, i1 false)
  store <2 x float> %i.aq, ptr %.sroa.09.1.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i, i64 -8
  store float %i.an, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i, i64 -4
  store i32 %i.ap, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  br label %bb.l, !llvm.loop !430

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_SG_T0_.exit: ; preds = %bb.n
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.cv::EstimatedCircle", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !33 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %i.j = load float, ptr %i.i, align 4, !tbaa !33 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !209  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.m, %i.a                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !289 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = add nsw i64 %i.o, -1
  %4 = lshr i64 %i.p, 1
  %i.q = icmp sgt i64 %i.o, 2
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.r = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.v), !inline_history !431
  %spec.select.i.i = select i1 %i.w, i64 %i.u, i64 %i.s ; 4 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %.036.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.z = icmp slt i64 %spec.select.i.i, %4
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !432

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aa = and i64 %i.n, 16
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ac = add nsw i64 %i.o, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i, %i.ad
  br i1 %i.ae, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false)
  store <2 x float> %i.h, ptr %3, align 8, !tbaa !33
  store float %i.j, ptr %i.e, align 8, !tbaa !33
  store i32 %i.l, ptr %i.f, align 4, !tbaa !209
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  store <2 x float> %i.h, ptr %3, align 8, !tbaa !33
  store float %i.j, ptr %i.e, align 8, !tbaa !33
  store i32 %i.l, ptr %i.f, align 4, !tbaa !209
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.018.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ag, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.018.i.i.i = phi i64 [ %.0919.i.i1011.i, %bb.e ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1011.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0919.i.i1011.i ; 2 uses
  %i.ak = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !433
  br i1 %i.ak, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds [16 x i8], ptr %0, i64 %.018.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false)
  %.not12.i = icmp eq i64 %.0919.i.i1011.i, 0
  br i1 %.not12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !434

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.am = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.an = icmp sgt i64 %i.n, 16
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !435

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.cv::EstimatedCircle", align 8 ; 7 uses
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
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.08 ; 3 uses
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !209
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !289 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = icmp slt i64 %.08, %i.i
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.y = shl i64 %.036.i, 1                       ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab
  %i.ad = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.ac), !inline_history !436
  %spec.select.i = select i1 %i.ad, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.036.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !432

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  store <2 x float> %i.s, ptr %3, align 8, !tbaa !33
  store float %i.u, ptr %i.m, align 8, !tbaa !33
  store i32 %i.w, ptr %i.n, align 4, !tbaa !209
  %i.ai = icmp sgt i64 %.1.i, %.08
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  %i.ak = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !437
  br i1 %i.ak, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.018.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.am = icmp sgt i64 %.0919.i.i, %.08
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit, !llvm.loop !434

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.08, 0
  %i.ao = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !438

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv15EstimatedCircleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #6 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.88", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i17 = freeze i64 %i.c                      ; 2 uses
  %i.d = icmp sgt i64 %.fr.i17, 64
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph29
  %i.f = icmp eq i64 %i.bj, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph29, !llvm.loop !439

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.fr.i20.lcssa = phi i64 [ %.fr.i17, %.lr.ph.preheader ], [ %.fr.i, %.lr.ph ] ; 2 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bk, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.g = lshr i64 %.fr.i20.lcssa, 2               ; 2 uses
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = and i64 %.fr.i20.lcssa, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_T0_SD_T1_T2_.exit.i.i, %.lr.ph._crit_edge
  %.09.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32   ; 3 uses
  %i.s = icmp slt i64 %.09.i.i, %i.k
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.b ] ; 2 uses
  %i.t = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_:bb.a
  %i.ct = phi i32 [ %i.cu, %.lr.ph.i.i26 ], [ %i.ck, %bb.l ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.l ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.l ]
  store i32 %i.ct, ptr %.sroa.05.09.i.i28, align 4, !tbaa !32
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %.sroa.0.0.i.i29, align 4, !tbaa !32 ; 3 uses
  %i.cv = load i32, ptr %i.br, align 4, !tbaa !32 ; 2 uses
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32 ; 2 uses
  %i.cz = icmp sgt i32 %i.cv, %i.cy
  %i.da = icmp eq i32 %i.cv, %i.cy
  %i.db = icmp slt i32 %i.bo, %i.cu
  %i.dc = and i1 %i.db, %i.da
  %i.dd = or i1 %i.cz, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !443

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i23 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.021.i20, %bb.l ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i32 %i.bo, ptr %.sink.i23, align 4, !tbaa !32
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 4 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_.exit, label %.lr.ph.i19, !llvm.loop !444

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN2cv12hough_cmp_gtEEEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEET_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !32   ; 6 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !32   ; 6 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32   ; 6 uses
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 6 uses
  %i.q = icmp sgt i32 %i.m, %i.p
  %i.r = icmp eq i32 %i.m, %i.p
  %i.s = icmp slt i32 %i.i, %i.j
  %i.t = and i1 %i.s, %i.r
  %i.u = or i1 %i.q, %i.t
  %i.v = load i32, ptr %i.h, align 4, !tbaa !32   ; 7 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32   ; 8 uses
  br i1 %i.u, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.z = icmp sgt i32 %i.p, %i.y
  %i.aa = icmp eq i32 %i.p, %i.y
  %i.ab = icmp slt i32 %i.j, %i.v
  %i.ac = and i1 %i.ab, %i.aa
  %i.ad = or i1 %i.z, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.j, ptr %0, align 4, !tbaa !32
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.d:                                             ; preds = %bb.b
  %i.af = icmp sgt i32 %i.m, %i.y
  %i.ag = icmp eq i32 %i.m, %i.y
  %i.ah = icmp slt i32 %i.i, %i.v
  %i.ai = and i1 %i.ah, %i.ag
  %i.aj = or i1 %i.af, %i.ai
  %i.ak = load i32, ptr %0, align 4, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %0, align 4, !tbaa !32
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.i, ptr %0, align 4, !tbaa !32
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.g:                                             ; preds = %bb.a
  %i.al = icmp sgt i32 %i.m, %i.y
  %i.am = icmp eq i32 %i.m, %i.y
  %i.an = icmp slt i32 %i.i, %i.v
  %i.ao = and i1 %i.an, %i.am
  %i.ap = or i1 %i.al, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.i, ptr %0, align 4, !tbaa !32
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp sgt i32 %i.p, %i.y
  %i.as = icmp eq i32 %i.p, %i.y
  %i.at = icmp slt i32 %i.j, %i.v
  %i.au = and i1 %i.at, %i.as
  %i.av = or i1 %i.ar, %i.au
  %i.aw = load i32, ptr %0, align 4, !tbaa !32    ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %0, align 4, !tbaa !32
  store i32 %i.aw, ptr %i.h, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.j, ptr %0, align 4, !tbaa !32
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader, %bb.n
  %.sroa.09.0.i = phi ptr [ %.sroa.09.1.i, %bb.n ], [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %.sroa.012.0.i = phi ptr [ %i.bk, %bb.n ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %i.ax = load i32, ptr %0, align 4, !tbaa !32    ; 3 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit ], [ %i.bk, %bb.l ] ; 5 uses
  %i.bb = load i32, ptr %.sroa.012.1.i, align 4, !tbaa !32 ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %i.ba
  %i.bg = icmp eq i32 %i.be, %i.ba
  %i.bh = icmp slt i32 %i.bb, %i.ax
  %i.bi = and i1 %i.bh, %i.bg
  %i.bj = or i1 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 4 ; 2 uses
  br i1 %i.bj, label %bb.l, label %.preheader.i, !llvm.loop !446

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.sroa.09.0.pn.i = phi ptr [ %.sroa.09.1.i, %.preheader.i ], [ %.sroa.09.0.i, %bb.l ]
  %.sroa.09.1.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i, i64 -4 ; 5 uses
  %i.bl = load i32, ptr %.sroa.09.1.i, align 4, !tbaa !32 ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32 ; 2 uses
  %i.bp = icmp sgt i32 %i.ba, %i.bo
  %i.bq = icmp eq i32 %i.ba, %i.bo
  %i.br = icmp slt i32 %i.ax, %i.bl
  %i.bs = and i1 %i.br, %i.bq
  %i.bt = or i1 %i.bp, %i.bs
  br i1 %i.bt, label %.preheader.i, label %bb.m, !llvm.loop !447

bb.m:                                             ; preds = %.preheader.i
  %i.bu = icmp ult ptr %.sroa.012.1.i, %.sroa.09.1.i
  br i1 %i.bu, label %bb.n, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEET_SC_SC_SC_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.bl, ptr %.sroa.012.1.i, align 4, !tbaa !32
  store i32 %i.bb, ptr %.sroa.09.1.i, align 4, !tbaa !32
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_SC_T0_.exit, !llvm.loop !448

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEET_SC_SC_SC_T0_.exit: ; preds = %bb.m
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !99 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.e, align 4, !tbaa !32
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !32   ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !32   ; 2 uses
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32   ; 2 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32   ; 2 uses
  %i.z = icmp sgt i32 %i.v, %i.y
  %i.aa = icmp eq i32 %i.v, %i.y
  %i.ab = icmp slt i32 %i.r, %i.s
  %i.ac = and i1 %i.ab, %i.aa
  %i.ad = or i1 %i.z, %i.ac
  %spec.select.i.i = select i1 %i.ad, i64 %i.p, i64 %i.n ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !32
  %i.ah = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !440

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ai = and i64 %i.i, 4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ak = add nsw i64 %i.j, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i, %i.al
  br i1 %i.am, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !32
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i7.i = phi i64 [ %i.ao, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.as = sext i32 %i.f to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i7.i, %.lr.ph.i.i.i ], [ %.0920.i.i89.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32 ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32 ; 2 uses
  %i.az = load i32, ptr %i.at, align 4, !tbaa !32 ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  %i.bb = icmp eq i32 %i.ay, %i.az
  %i.bc = icmp slt i32 %i.av, %i.f
  %i.bd = and i1 %i.bc, %i.bb
  %i.be = or i1 %i.ba, %i.bd
  br i1 %i.be, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.av, ptr %i.bf, align 4, !tbaa !32
  %.not10.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit, label %bb.e, !llvm.loop !441

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bg, align 4, !tbaa !32
  %i.bh = icmp sgt i64 %i.i, 4
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !449

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !10, i64 8, !11, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!14 = distinct !{!14, !"_ZNK2cv11_InputArray6getMatEi"}
!15 = !{!16, !5, i64 0}
!16 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !19, i64 64, !20, i64 72, !22, i64 128}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!19 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!20 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !21, i64 4, !5, i64 8, !6, i64 12}
!21 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!22 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!23 = !{!24, !17, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!16, !17, i64 24}
!29 = !{!26, !26, i64 0}
!30 = !{!16, !5, i64 12}
!31 = !{!16, !5, i64 8}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !6, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !36, !39, !38}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36, !38, !39}
!43 = distinct !{!43, !36, !39, !38}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = distinct !{!48, !36}
!49 = !{!50, !5, i64 0}
!50 = !{!"_ZTSN2cv11hough_indexE", !5, i64 0, !34, i64 4, !34, i64 8}
!51 = !{i64 0, i64 4, !32, i64 4, i64 4, !33, i64 8, i64 4, !33}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aIN2cv11hough_indexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aIN2cv11hough_indexES1_SaIS1_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aIN2cv11hough_indexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = !{!25, !17, i64 0}
!63 = !{!24, !26, i64 8}
!64 = !{!50, !34, i64 4}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!67 = distinct !{!67, !"_ZNK2cv11_InputArray6getMatEi"}
!68 = !{!16, !5, i64 4}
!69 = distinct !{!69, !36}
!70 = !{!71, !5, i64 8}
!71 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !72, i64 0, !5, i64 8}
!72 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!75 = distinct !{!75, !"_ZNK2cv11_InputArray6getMatEi"}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSN2cv7MatExprE", !78, i64 0, !5, i64 8, !16, i64 16, !16, i64 224, !16, i64 432, !79, i64 640, !79, i64 648, !80, i64 656}
!78 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!79 = !{!"double", !6, i64 0}
!80 = !{!"_ZTSN2cv7Scalar_IdEE", !81, i64 0}
!81 = !{!"_ZTSN2cv3VecIdLi4EEE", !82, i64 0}
!82 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!85 = distinct !{!85, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !7, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !90, i64 0, !26, i64 8, !6, i64 16}
!90 = !{!"p1 float", !10, i64 0}
!91 = !{!89, !26, i64 8}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = !{!100, !100, i64 0}
!100 = !{!"p1 int", !10, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!103 = distinct !{!103, !"_ZNK2cv11_InputArray6getMatEi"}
!104 = distinct !{!104, !36}
!105 = !{!106, !100, i64 16}
!106 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!107 = !{!106, !100, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!110 = distinct !{!110, !"_ZNK2cv11_InputArray6getMatEi"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!113 = distinct !{!113, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!116 = distinct !{!116, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !36, !38, !39}
!120 = distinct !{!120, !36, !38}
!121 = distinct !{!121, !36}
!122 = distinct !{!122, !36}
!123 = distinct !{!123, !36}
!124 = distinct !{!124, !36}
!125 = distinct !{!125, !36}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = distinct !{!128, !36}
!129 = !{!130, !131, i64 8}
!130 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!131 = !{!"p1 _ZTSN2cv3VecIiLi4EEE", !10, i64 0}
!132 = !{!130, !131, i64 16}
!133 = !{!130, !131, i64 0}
!134 = !{!16, !5, i64 16}
!135 = !{!131, !131, i64 0}
!136 = !{!16, !17, i64 32}
!137 = !{!16, !17, i64 40}
!138 = !{!16, !17, i64 48}
!139 = !{!9, !5, i64 0}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!142 = distinct !{!142, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!143 = !{!144, !145, i64 8}
!144 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!145 = !{!"p1 _ZTSN2cv6Point_IfEE", !10, i64 0}
!146 = !{!144, !145, i64 0}
!147 = !{!148, !34, i64 0}
!148 = !{!"_ZTSN2cv6Point_IfEE", !34, i64 0, !34, i64 4}
!149 = !{!148, !34, i64 4}
!150 = distinct !{!150, !36}
end_hunk_2
