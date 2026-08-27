Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPfENKUlT_E_clItEEDaS5_:bb.a
  br i1 %i.y, label %bb.e, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.e:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !885, !nonnull !146, !align !335
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call noundef i32 @_ZNK7xgboost16GHistIndexMatrix9GetGindexEmm(ptr noundef nonnull align 8 dereferenceable(225) %.pre18, i64 noundef %i.aa, i64 noundef %indvars.iv)
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !877, !nonnull !146, !align !335
  %i.ad = sext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load float, ptr %i.af, align 4, !tbaa !64
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ah = phi ptr [ %.pre, %._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge ], [ %.pre18, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit ]
  %i.ai = getelementptr [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !744
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !879
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80
  %i.ap = add i32 %i.ao, %i.ak                    ; 2 uses
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !878, !nonnull !146, !align !335
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !879
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !80
  %i.au = icmp eq i32 %i.ap, %i.at
  br i1 %i.au, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !877, !nonnull !146, !align !335
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59
  %i.ax = sext i32 %i.ap to i64
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !64
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit: ; preds = %bb.f, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %bb.e
  %.0 = phi float [ %i.ag, %bb.e ], [ %i.ba, %bb.f ], [ -inf, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ]
  %i.bb = trunc nuw i64 %indvars.iv to i32
  %i.bc = tail call noundef float @_ZNK7xgboost11CatAccessorclIfjEET_S2_T0_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, float noundef %.0, i32 noundef %i.bb)
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !886, !nonnull !146, !align !335
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %i.bc, ptr %i.bf, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !881, !nonnull !146, !align !333
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !80
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !888
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPfENKUlT_E_clIjEEDaS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !868    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !881, !nonnull !146, !align !333
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !399, !nonnull !146, !align !335 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !882
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !883, !nonnull !146, !align !335
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !884
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit ] ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8, !tbaa !47 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.u, label %._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge, label %bb.c

._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !399
  br label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %.sroa.0.0.copyload, %indvars.iv
  br i1 %i.v, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !352
  %i.y = icmp eq i8 %i.x, 1
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !399 ; 2 uses
  br i1 %i.y, label %bb.e, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.e:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !885, !nonnull !146, !align !335
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call noundef i32 @_ZNK7xgboost16GHistIndexMatrix9GetGindexEmm(ptr noundef nonnull align 8 dereferenceable(225) %.pre18, i64 noundef %i.aa, i64 noundef %indvars.iv)
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !877, !nonnull !146, !align !335
  %i.ad = sext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load float, ptr %i.af, align 4, !tbaa !64
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ah = phi ptr [ %.pre, %._ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread_crit_edge ], [ %.pre18, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit ]
  %i.ai = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !879
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80
  %i.ao = add i32 %i.an, %i.aj                    ; 2 uses
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !878, !nonnull !146, !align !335
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !879
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !80
  %i.at = icmp eq i32 %i.ao, %i.as
  br i1 %i.at, label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !877, !nonnull !146, !align !335
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.aw = sext i32 %i.ao to i64
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !64
  br label %_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit

_ZN7xgboost6common13HistogramCuts20NumericBinLowerBoundERKSt6vectorIjSaIjEERKS2_IfSaIfEEji.exit: ; preds = %bb.f, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %bb.e
  %.0 = phi float [ %i.ag, %bb.e ], [ %i.az, %bb.f ], [ -inf, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  %i.bb = tail call noundef float @_ZNK7xgboost11CatAccessorclIfjEET_S2_T0_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, float noundef %.0, i32 noundef %i.ba)
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !886, !nonnull !146, !align !335
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.bb, ptr %i.be, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !881, !nonnull !146, !align !333
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !889
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !80     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !63

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !180
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !80
  store i32 %i.s, ptr %i.d, align 4, !tbaa !80
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !180
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !63

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !80
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !80
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !80
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !890

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !891

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !80
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !892

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !80
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !893

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !180
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !63

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !180
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !80
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !180
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !80
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !80
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !894

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !895

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !80
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !80
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !896

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !897

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !63

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !80
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !80
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !63

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !80
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !80
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #34
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !181
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !180
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !347
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout", align 8 ; 9 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  %.not36.i = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  br i1 %.not36.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader33.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.g = icmp ult i64 %3, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.k

.preheader33.i:                                   ; preds = %bb.b, %bb.j
  %.03134.i = phi i64 [ %i.as, %bb.j ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03134.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03134.i, %1
  br i1 %exitcond.not.i, label %bb.c, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.c:                                             ; preds = %.preheader33.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader33.i
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03134.i
  %i.k = sext i32 %i.i to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !64 ; 6 uses
  %i.r = fcmp uno float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 %i.k
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %i.u = icmp eq i8 %i.t, 0
  br label %bb.j

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !130
  %i.y = fcmp olt float %i.q, 0.000000e+00
  %i.z = fcmp oge float %i.q, f0x4B800000
  %i.aa = or i1 %i.y, %i.z
  br i1 %i.aa, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i, label %bb.g, !prof !179

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !tbaa !47
  %i.ab = fptoui float %i.q to i64
  %i.ac = lshr i64 %i.ab, 5
  %.not.i.i.i = icmp ult i64 %i.ac, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fptosi float %i.q to i32                ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = lshr i64 %i.ae, 5
  %i.ag = and i32 %i.ad, 31
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80
  %i.aj = lshr exact i32 -2147483648, %i.ag
  %i.ak = and i32 %i.ai, %i.aj
  %.not5.i.i.i = icmp eq i32 %i.ak, 0
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

bb.i:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.am = load float, ptr %i.al, align 4, !tbaa !64
  %i.an = fcmp olt float %i.q, %i.am
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i1 [ %i.an, %bb.i ], [ true, %bb.f ], [ %.not5.i.i.i, %bb.h ], [ true, %bb.g ]
  %i.ao = xor i1 %.0.i.i, true
  br label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i, %bb.d
  %.not.i = phi i1 [ %i.u, %bb.d ], [ %i.ao, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i ]
  %i.ap = shl nuw nsw i32 %i.i, 1
  %i.aq = zext i1 %.not.i to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.h, align 4, !tbaa !80
  %i.as = add nuw i64 %.03134.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.as, %3
  br i1 %exitcond38.not.i, label %.lr.ph.i, label %.preheader33.i, !llvm.loop !898

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.new
  %.035.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bq, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.k ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !80
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !80
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !80
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !80
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !80
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !80
  %i.bq = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !899

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !80
  %i.bw = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.l, !llvm.loop !900

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.331", align 8 ; 5 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.325", align 8 ; 5 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(96) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi3ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(216) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !825
  %i.c = sext i32 %4 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !826
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = sext i32 %3 to i64                       ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  store float +qnan, ptr %i.o, align 4, !tbaa !64
  %i.p = shl nsw i32 %3, 1
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.q
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !850
  %.lobit = lshr i32 %i.t, 31
  %i.u = trunc nuw nsw i32 %.lobit to i8
  %i.v = sext i32 %3 to i64                       ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !26
  %.sroa.02.0.copyload = load i64, ptr %2, align 8, !tbaa !47 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  %i.x = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.x, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.d

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 0, ptr %i.z, align 1, !tbaa !26
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i32 %4 to i64                      ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.02.0.copyload, %i.aa
  br i1 %i.ab, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.e, !prof !63

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !352
  %i.ae = icmp eq i8 %i.ad, 1                     ; 2 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.v
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !26
  br i1 %i.ae, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !851
  %i.al = icmp ugt i64 %i.ak, %i.c
  br i1 %i.al, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43: ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi6ENS_4tree14ScalarTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !851
  %i.al = icmp ugt i64 %i.ak, %i.c
  br i1 %i.al, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !852
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.c ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !853 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !855 ; 3 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %.split.i, label %bb.h

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !771 ; 2 uses
  %.not8.i = icmp ugt i64 %i.ap, %i.at
  br i1 %.not8.i, label %bb.i, label %bb.j, !prof !179

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43
  %i.au = add i64 %i.ar, %i.ap
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !771
  %.not.i = icmp ugt i64 %i.au, %i.av
  br i1 %.not.i, label %bb.i, label %bb.k, !prof !179

bb.i:                                             ; preds = %bb.h, %.split.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %.split.i
  %i.aw = sub nuw i64 %i.at, %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ax = phi i64 [ %i.aw, %bb.j ], [ %i.ar, %bb.h ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load ptr, ptr %.in.i, align 8, !tbaa !772 ; 2 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = icmp eq i64 %i.ax, 0
  %i.bb = or i1 %i.ba, %i.az
  br i1 %i.bb, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.v ; 2 uses
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  br label %bb.m

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !825
  %i.bg = getelementptr inbounds [20 x i8], ptr %i.bf, i64 %i.c ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !850
  %i.bj = and i32 %i.bi, 2147483647
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.v
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1388 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.v
  store float %i.bn, ptr %i.bp, align 4, !tbaa !64
  %i.bq = shl nsw i32 %3, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !826
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr [4 x i8], ptr %i.bo, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  store i32 %i.bs, ptr %i.bv, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !828 ; 2 uses
  %.not42 = icmp eq i32 %i.bx, -1
  br i1 %.not42, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.b
  %.sink51 = phi ptr [ %i.r, %bb.b ], [ %i.bu, %bb.m ]
  %.sink = phi i32 [ %4, %bb.b ], [ %i.bx, %bb.m ]
  %i.by = getelementptr i8, ptr %.sink51, i64 8
  store i32 %.sink, ptr %i.by, align 4, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.355", align 4 ; 14 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !80
  store i8 0, ptr %6, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850  ; 2 uses
  %.lobit.i.i = lshr i32 %i.j, 31
  %i.k = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.k, ptr %6, align 4, !tbaa !26
  %i.l = and i32 %i.j, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.o, ptr %i.p, align 4, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.e, ptr %i.q, align 4, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !828  ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink.i.i, ptr %i.t, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %bb.d, %.sink.split.i.i
  %.not36.i = icmp eq i64 %3, 0
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not36.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader33.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.x = icmp ult i64 %3, 4
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.i

.preheader33.i:                                   ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, %bb.h
  %.03134.i = phi i64 [ %i.as, %bb.h ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03134.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !80   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03134.i, %1
  br i1 %exitcond.not.i, label %bb.e, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.e:                                             ; preds = %.preheader33.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader33.i
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03134.i
  %i.ab = sext i32 %i.z to i64                    ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !80
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = fcmp uno float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ab
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = icmp eq i8 %i.ak, 0
  br label %bb.h

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ab
  %i.an = load float, ptr %i.am, align 4, !tbaa !64
  %i.ao = fcmp uge float %i.ah, %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i = phi i1 [ %i.al, %bb.f ], [ %i.ao, %bb.g ]
  %i.ap = shl nuw nsw i32 %i.z, 1
  %i.aq = zext i1 %.not.i to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.y, align 4, !tbaa !80
  %i.as = add nuw i64 %.03134.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.as, %3
  br i1 %exitcond38.not.i, label %.lr.ph.i, label %.preheader33.i, !llvm.loop !918

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %.035.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bq, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !80
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !80
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !80
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !80
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !80
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !80
  %i.bq = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !919

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !80
  %i.bw = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.j, !llvm.loop !920

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.356", align 4 ; 29 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split.i.i, label %bb.c

.sink.split.i.i:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.g, align 4, !tbaa !80
  store i8 0, ptr %6, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850  ; 2 uses
  %.lobit.i = lshr i32 %i.j, 31
  %i.k = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.k, ptr %6, align 4, !tbaa !26
  %i.l = and i32 %i.j, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.o, ptr %i.p, align 4, !tbaa !64
  %i.q = sext i32 %i.e to i64
  %i.r = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !826  ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float +qnan, ptr %i.x, align 4, !tbaa !64
  br label %.sink.split.i32.i

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !850  ; 2 uses
  %.lobit.i30.i = lshr i32 %i.z, 31
  %i.aa = trunc nuw nsw i32 %.lobit.i30.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !26
  %i.ac = and i32 %i.z, 2147483647
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.af, ptr %i.ag, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !828 ; 2 uses
  %.not.i31.i = icmp eq i32 %i.aj, -1
  br i1 %.not.i31.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit35.i, label %.sink.split.i32.i

.sink.split.i32.i:                                ; preds = %bb.e, %bb.d
  %.sink.i34.i = phi i32 [ %i.e, %bb.d ], [ %i.aj, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %.sink.i34.i, ptr %i.ak, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit35.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit35.i: ; preds = %.sink.split.i32.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !828 ; 3 uses
  %.not.i12 = icmp eq i32 %i.am, -1
  br i1 %.not.i12, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit35.i
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !826 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !850 ; 2 uses
  %.lobit.i36.i = lshr i32 %i.at, 31
  %i.au = trunc nuw nsw i32 %.lobit.i36.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.au, ptr %i.av, align 2, !tbaa !26
  %i.aw = and i32 %i.at, 2147483647
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.az, ptr %i.ba, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !828 ; 2 uses
  %.not.i37.i = icmp eq i32 %i.bd, -1
  br i1 %.not.i37.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split: ; preds = %bb.f, %.sink.split.i.i
  %.sink.i40.sink.i.ph = phi i32 [ 0, %.sink.split.i.i ], [ %i.am, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.be, align 4, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 0, ptr %i.bf, align 2, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float +qnan, ptr %i.bg, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, %bb.g
  %.sink.i40.sink.i = phi i32 [ %i.bd, %bb.g ], [ %.sink.i40.sink.i.ph, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split ]
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.sink.i40.sink.i, ptr %i.bh, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit35.i, %bb.g, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i
  %.not38.i = icmp eq i64 %3, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  br i1 %.not38.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.lr.ph.preheader.i

.lr.ph36.i:                                       ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bl = icmp ult i64 %3, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph36.i.new

.lr.ph36.i.new:                                   ; preds = %.lr.ph36.i
  %unroll_iter = and i64 %3, -4
  br label %bb.n

._crit_edge.i:                                    ; preds = %bb.m, %bb.j
  %.03133.1.i = phi i64 [ %i.ch, %bb.j ], [ 0, %bb.m ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03133.1.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !80 ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03133.1.i
  %i.bp = sext i32 %i.bn to i64
  %i.bq = add nsw i64 %i.bp, 1                    ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !64 ; 2 uses
  %i.bx = fcmp uno float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %sext.1.i = shl nuw nsw i64 %i.bq, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %sext.1.i
  %i.bz = load float, ptr %i.by, align 4, !tbaa !64
  %i.ca = fcmp uge float %i.bw, %i.bz
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 %i.bq
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  %i.cd = icmp eq i8 %i.cc, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.1.i = phi i1 [ %i.cd, %bb.i ], [ %i.ca, %bb.h ]
  %i.ce = shl nsw i32 %i.bn, 1
  %i.cf = zext i1 %.not.1.i to i32
  %i.cg = or disjoint i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %i.bm, align 4, !tbaa !80
  %i.ch = add nuw i64 %.03133.1.i, 1              ; 2 uses
  %exitcond40.1.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond40.1.not.i, label %.lr.ph36.i, label %._crit_edge.i, !llvm.loop !921

.lr.ph.preheader.i:                               ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, %bb.m
  %.03133.i = phi i64 [ %i.dd, %bb.m ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03133.i ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !80 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03133.i, %1
  br i1 %exitcond.not.i, label %.loopexit.i, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.preheader.i
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03133.i
  %i.cl = sext i32 %i.cj to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !80
  %i.co = zext i32 %i.cn to i64
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !64 ; 2 uses
  %i.cs = fcmp uno float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 %i.cl
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %i.cv = icmp eq i8 %i.cu, 0
  br label %bb.m

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.cw = shl nuw nsw i64 %i.cl, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !64
  %i.cz = fcmp uge float %i.cr, %i.cy
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not.i = phi i1 [ %i.cv, %bb.k ], [ %i.cz, %bb.l ]
  %i.da = shl nuw nsw i32 %i.cj, 1
  %i.db = zext i1 %.not.i to i32
  %i.dc = or disjoint i32 %i.da, %i.db
  store i32 %i.dc, ptr %i.ci, align 4, !tbaa !80
  %i.dd = add nuw i64 %.03133.i, 1                ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.dd, %3
  br i1 %exitcond40.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !921

bb.n:                                             ; preds = %bb.n, %.lr.ph36.i.new
  %.035.i = phi i64 [ 0, %.lr.ph36.i.new ], [ %i.eb, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph36.i.new ], [ %niter.next.3, %bb.n ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !80
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !80
  store i32 %i.di, ptr %i.de, align 4, !tbaa !80
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !80
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !80
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !80
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !80
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !80
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !80
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !80
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !80
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !80
  %i.eb = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !922

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph36.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph36.i ], [ %i.eb, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.eh, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !80
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !80
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !80
  %i.eh = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.o, !llvm.loop !923

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.o, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.358", align 4 ; 4 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.357", align 4 ; 11 uses
  %i.a = icmp slt i32 %5, 4
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !80
  store i8 0, ptr %7, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850  ; 2 uses
  %.lobit.i.i = lshr i32 %i.j, 31
  %i.k = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.k, ptr %7, align 4, !tbaa !26
  %i.l = and i32 %i.j, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.o, ptr %i.p, align 4, !tbaa !64
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(100) %7, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 1, i32 noundef %i.e)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !825
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !828  ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink30.i.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ]
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(100) %7, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 2, i32 noundef %.sink30.i.i)
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %bb.d, %.sink.split.i.i
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 4 dereferenceable(100) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.a
  %i.t = icmp eq i32 %5, 4
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi4ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(204) %6, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi4ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 4 dereferenceable(204) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi5ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.g, %bb.f, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 4 dereferenceable(100) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not38 = icmp eq i64 %3, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %.not38, label %._crit_edge37, label %.lr.ph.preheader

.lr.ph36:                                         ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.d = icmp ult i64 %3, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %3, -4
  br label %bb.l

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.03133.1 = phi i64 [ %i.aa, %bb.d ], [ 0, %bb.j ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03133.1 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80   ; 2 uses
  %exitcond.1.not = icmp eq i64 %.03133.1, %1
  br i1 %exitcond.1.not, label %.loopexit, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.1, !prof !179

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.1: ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03133.1
  %i.h = sext i32 %i.f to i64
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load float, ptr %i.n, align 4, !tbaa !64 ; 2 uses
  %i.p = fcmp uno float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.1
  %sext.1 = shl i64 %i.i, 32
  %i.q = ashr exact i64 %sext.1, 30
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !64
  %i.t = fcmp uge float %i.o, %i.s
  br label %bb.d

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
end_hunk_2
begin_hunk_3_@_ZN7xgboost9predictor5multi18PredValueByOneTreeILb0ELb1ELb1EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif:bb.a
  %ident.check75 = icmp ne i64 %i.bx, 1
  %i.co = or i1 %ident.check, %ident.check75
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.co
  br i1 %or.cond, label %.lr.ph.split.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.cp = add i64 %i.cj, %i.by
  %i.cq = shl i64 %i.cp, 2
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.cq
  %i.cr = add i64 %i.cb, %i.by
  %i.cs = shl i64 %i.cr, 2
  %scevgep76 = getelementptr i8, ptr %i.cc, i64 %i.cs
  %bound0 = icmp ult ptr %i.cm, %scevgep76
  %bound1 = icmp ult ptr %i.cg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <4 x float>, ptr %i.ct, align 4, !tbaa !64, !alias.scope !971
  %wide.load77 = load <4 x float>, ptr %i.cu, align 4, !tbaa !64, !alias.scope !971
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load78 = load <4 x float>, ptr %i.cv, align 4, !tbaa !64, !alias.scope !974, !noalias !971
  %wide.load79 = load <4 x float>, ptr %i.cw, align 4, !tbaa !64, !alias.scope !974, !noalias !971
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load78)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load77, <4 x float> %broadcast.splat, <4 x float> %wide.load79)
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !64, !alias.scope !974, !noalias !971
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !64, !alias.scope !974, !noalias !971
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !976

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader80

.lr.ph.split.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %storemerge52.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge52.ph, 1
  %xtraiter = and i64 %i.by, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader80
  %i.da = mul i64 %storemerge52.ph, %i.bx
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !64
  %i.dd = mul i64 %storemerge52.ph, %i.l
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !64
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dc, float %8, float %i.df)
  store float %i.dg, ptr %i.de, align 4, !tbaa !64
  %i.dh = or disjoint i64 %storemerge52.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader80
  %storemerge52.unr = phi i64 [ %storemerge52.ph, %.lr.ph.split.preheader80 ], [ %i.dh, %.lr.ph.split.prol ]
  %i.di = icmp eq i64 %i.by, %.neg
  br i1 %i.di, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.dj = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond60.not = icmp eq i64 %i.dj, %4
  br i1 %exitcond60.not, label %._crit_edge56, label %bb.b, !llvm.loop !977

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge52 = phi i64 [ %i.dz, %.lr.ph.split ], [ %storemerge52.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.dk = mul i64 %storemerge52, %i.bx
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !64
  %i.dn = mul i64 %storemerge52, %i.l
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !64
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %8, float %i.dp)
  store float %i.dq, ptr %i.do, align 4, !tbaa !64
  %i.dr = add nuw i64 %storemerge52, 1            ; 2 uses
  %i.ds = mul i64 %i.dr, %i.bx
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !64
  %i.dv = mul i64 %i.dr, %i.l
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !64
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %8, float %i.dx)
  store float %i.dy, ptr %i.dw, align 4, !tbaa !64
  %i.dz = add nuw i64 %storemerge52, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dz, %i.by
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !978
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.365", align 8 ; 9 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  %.not36.i = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  br i1 %.not36.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader33.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.g = icmp ult i64 %3, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.k

.preheader33.i:                                   ; preds = %bb.b, %bb.j
  %.03134.i = phi i64 [ %i.as, %bb.j ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03134.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03134.i, %1
  br i1 %exitcond.not.i, label %bb.c, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.c:                                             ; preds = %.preheader33.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader33.i
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03134.i
  %i.k = sext i32 %i.i to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !64 ; 6 uses
  %i.r = fcmp uno float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 %i.k
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %i.u = icmp eq i8 %i.t, 0
  br label %bb.j

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !130
  %i.y = fcmp olt float %i.q, 0.000000e+00
  %i.z = fcmp oge float %i.q, f0x4B800000
  %i.aa = or i1 %i.y, %i.z
  br i1 %i.aa, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i, label %bb.g, !prof !179

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !tbaa !47
  %i.ab = fptoui float %i.q to i64
  %i.ac = lshr i64 %i.ab, 5
  %.not.i.i.i = icmp ult i64 %i.ac, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fptosi float %i.q to i32                ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = lshr i64 %i.ae, 5
  %i.ag = and i32 %i.ad, 31
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80
  %i.aj = lshr exact i32 -2147483648, %i.ag
  %i.ak = and i32 %i.ai, %i.aj
  %.not5.i.i.i = icmp eq i32 %i.ak, 0
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

bb.i:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.am = load float, ptr %i.al, align 4, !tbaa !64
  %i.an = fcmp olt float %i.q, %i.am
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i1 [ %i.an, %bb.i ], [ true, %bb.f ], [ %.not5.i.i.i, %bb.h ], [ true, %bb.g ]
  %i.ao = xor i1 %.0.i.i, true
  br label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i, %bb.d
  %.not.i = phi i1 [ %i.u, %bb.d ], [ %i.ao, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i ]
  %i.ap = shl nuw nsw i32 %i.i, 1
  %i.aq = zext i1 %.not.i to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.h, align 4, !tbaa !80
  %i.as = add nuw i64 %.03134.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.as, %3
  br i1 %exitcond38.not.i, label %.lr.ph.i, label %.preheader33.i, !llvm.loop !979

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.new
  %.035.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bq, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.k ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !80
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !80
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !80
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !80
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !80
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !80
  %i.bq = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !980

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !80
  %i.bw = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.l, !llvm.loop !981

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.367", align 8 ; 5 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.366", align 8 ; 5 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(96) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(216) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi1ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.c = sext i32 %4 to i64                       ; 8 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.h
  store float +qnan, ptr %i.n, align 4, !tbaa !64
  %i.o = shl nsw i32 %3, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %i.p
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !937
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.c
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  %i.v = icmp ne i8 %i.u, 0
  %i.w = zext i1 %i.v to i8
  %i.x = sext i32 %3 to i64                       ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1, !tbaa !26
  %.sroa.02.0.copyload = load i64, ptr %2, align 8, !tbaa !47 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  %i.z = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.z, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.d

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store i8 0, ptr %i.ab, align 1, !tbaa !26
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i32 %4 to i64                      ; 2 uses
  %i.ad = icmp ugt i64 %.sroa.02.0.copyload, %i.ac
  br i1 %i.ad, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.e, !prof !63

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !352
  %i.ag = icmp eq i8 %i.af, 1                     ; 2 uses
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.x
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !26
  br i1 %i.ag, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !851
  %i.an = icmp ugt i64 %i.am, %i.c
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !852
end_hunk_3
begin_hunk_4_@_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii:bb.a

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !852
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.c ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !853 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !855 ; 3 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %.split.i, label %bb.h

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !771 ; 2 uses
  %.not8.i = icmp ugt i64 %i.ar, %i.av
  br i1 %.not8.i, label %bb.i, label %bb.j, !prof !179

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit43
  %i.aw = add i64 %i.at, %i.ar
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !771
  %.not.i = icmp ugt i64 %i.aw, %i.ax
  br i1 %.not.i, label %bb.i, label %bb.k, !prof !179

bb.i:                                             ; preds = %bb.h, %.split.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %.split.i
  %i.ay = sub nuw i64 %i.av, %i.ar
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.az = phi i64 [ %i.ay, %bb.j ], [ %i.at, %bb.h ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load ptr, ptr %.in.i, align 8, !tbaa !772 ; 2 uses
  %i.bb = icmp ne ptr %i.ba, null
  %i.bc = icmp eq i64 %i.az, 0
  %i.bd = or i1 %i.bc, %i.bb
  br i1 %i.bd, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.k
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ar
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.x ; 2 uses
  store i64 %i.az, ptr %i.bg, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  br label %bb.m

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !936
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.c
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.x
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !938
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.c
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1388 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.x
  store float %i.bq, ptr %i.bs, align 4, !tbaa !64
  %i.bt = shl nsw i32 %3, 1
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.c
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !80
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr [4 x i8], ptr %i.br, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  store i32 %i.bw, ptr %i.bz, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !830
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.c
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !80 ; 2 uses
  %.not42 = icmp eq i32 %i.cd, -1
  br i1 %.not42, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.b
  %.sink51 = phi ptr [ %i.q, %bb.b ], [ %i.by, %bb.m ]
  %.sink = phi i32 [ %4, %bb.b ], [ %i.cd, %bb.m ]
  %i.ce = getelementptr i8, ptr %.sink51, i64 8
  store i32 %.sink, ptr %i.ce, align 4, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.373", align 4 ; 14 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !829
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !80
  store i8 0, ptr %6, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float +qnan, ptr %i.g, align 4, !tbaa !64
  br label %.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !937
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = icmp ne i8 %i.j, 0
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %6, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !936
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !938
  %i.s = load float, ptr %i.r, align 4, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.d, ptr %i.u, align 4, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !830
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, -1
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ %i.x, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink.i.i, ptr %i.y, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %bb.d, %.sink.split.i.i
  %.not36.i = icmp eq i64 %3, 0
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not36.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader33.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.ac = icmp ult i64 %3, 4
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.i

.preheader33.i:                                   ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, %bb.h
  %.03134.i = phi i64 [ %i.ax, %bb.h ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03134.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !80 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03134.i, %1
  br i1 %exitcond.not.i, label %bb.e, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.e:                                             ; preds = %.preheader33.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader33.i
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03134.i
  %i.ag = sext i32 %i.ae to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load float, ptr %i.al, align 4, !tbaa !64 ; 2 uses
  %i.an = fcmp uno float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 %i.ag
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.aq = icmp eq i8 %i.ap, 0
  br label %bb.h

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ag
  %i.as = load float, ptr %i.ar, align 4, !tbaa !64
  %i.at = fcmp uge float %i.am, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i = phi i1 [ %i.aq, %bb.f ], [ %i.at, %bb.g ]
  %i.au = shl nuw nsw i32 %i.ae, 1
  %i.av = zext i1 %.not.i to i32
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.ad, align 4, !tbaa !80
  %i.ax = add nuw i64 %.03134.i, 1                ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.ax, %3
  br i1 %exitcond38.not.i, label %.lr.ph.i, label %.preheader33.i, !llvm.loop !998

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %.035.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bv, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.i ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !80
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !80
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !80
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !80
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !80
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !80
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !80
  %i.bv = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !999

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bv, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !80
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !80
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !80
  %i.cb = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.j, !llvm.loop !1000

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.374", align 4 ; 8 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  %.not38.i = icmp eq i64 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  br i1 %.not38.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.lr.ph.preheader.i

.lr.ph36.i:                                       ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.e = icmp ult i64 %3, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph36.i.new

.lr.ph36.i.new:                                   ; preds = %.lr.ph36.i
  %unroll_iter = and i64 %3, -4
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.e
  %.03133.1.i = phi i64 [ %i.aa, %bb.e ], [ 0, %bb.h ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03133.1.i ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !80   ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03133.1.i
  %i.i = sext i32 %i.g to i64
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !80
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load float, ptr %i.o, align 4, !tbaa !64 ; 2 uses
  %i.q = fcmp uno float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %sext.1.i = shl nuw nsw i64 %i.j, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %sext.1.i
  %i.s = load float, ptr %i.r, align 4, !tbaa !64
  %i.t = fcmp uge float %i.p, %i.s
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 %i.j
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = icmp eq i8 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.1.i = phi i1 [ %i.w, %bb.d ], [ %i.t, %bb.c ]
  %i.x = shl nsw i32 %i.g, 1
  %i.y = zext i1 %.not.1.i to i32
  %i.z = or disjoint i32 %i.x, %i.y
  store i32 %i.z, ptr %i.f, align 4, !tbaa !80
  %i.aa = add nuw i64 %.03133.1.i, 1              ; 2 uses
  %exitcond40.1.not.i = icmp eq i64 %i.aa, %3
  br i1 %exitcond40.1.not.i, label %.lr.ph36.i, label %._crit_edge.i, !llvm.loop !1001

.lr.ph.preheader.i:                               ; preds = %bb.b, %bb.h
  %.03133.i = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03133.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.03133.i, %1
  br i1 %exitcond.not.i, label %.loopexit.i, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.preheader.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03133.i
  %i.ae = sext i32 %i.ac to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !80
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !64 ; 2 uses
  %i.al = fcmp uno float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 %i.ae
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = icmp eq i8 %i.an, 0
  br label %bb.h

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ap = shl nuw nsw i64 %i.ae, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !64
  %i.as = fcmp uge float %i.ak, %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i = phi i1 [ %i.ao, %bb.f ], [ %i.as, %bb.g ]
  %i.at = shl nuw nsw i32 %i.ac, 1
  %i.au = zext i1 %.not.i to i32
  %i.av = or disjoint i32 %i.at, %i.au
  store i32 %i.av, ptr %i.ab, align 4, !tbaa !80
  %i.aw = add nuw i64 %.03133.i, 1                ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.aw, %3
  br i1 %exitcond40.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !1001

bb.i:                                             ; preds = %bb.i, %.lr.ph36.i.new
  %.035.i = phi i64 [ 0, %.lr.ph36.i.new ], [ %i.bu, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph36.i.new ], [ %niter.next.3, %bb.i ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !80
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !80
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !80
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !80
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !80
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !80
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !80
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !80
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !80
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !80
  %i.bu = add nuw i64 %.035.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !1002

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph36.i
  %.035.i.epil.init = phi i64 [ 0, %.lr.ph36.i ], [ %i.bu, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.035.i.epil = phi i64 [ %.035.i.epil.init, %.epil.preheader ], [ %i.ca, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.035.i.epil ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !80
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !80
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !80
  %i.ca = add nuw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.j, !llvm.loop !1003

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.376", align 4 ; 4 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.375", align 4 ; 11 uses
  %i.a = icmp slt i32 %5, 4
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !829
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !80
  store i8 0, ptr %7, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float +qnan, ptr %i.g, align 4, !tbaa !64
  br label %.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !937
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = icmp ne i8 %i.j, 0
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %7, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !936
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !938
  %i.s = load float, ptr %i.r, align 4, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.s, ptr %i.t, align 4, !tbaa !64
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(100) %7, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 1, i32 noundef %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !830
  %i.w = load i32, ptr %i.v, align 4, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink30.i.i = phi i32 [ 0, %bb.c ], [ %i.w, %bb.d ]
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(100) %7, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 2, i32 noundef %.sink30.i.i)
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %bb.d, %.sink.split.i.i
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 4 dereferenceable(100) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %5, 4
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(204) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 4 dereferenceable(204) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi5ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb1ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.g, %bb.f, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi3ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.c = sext i32 %4 to i64                       ; 12 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = sext i32 %3 to i64                       ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  store float +qnan, ptr %i.l, align 4, !tbaa !64
  %i.m = shl nsw i32 %3, 1
  %i.n = add nsw i32 %i.m, 2                      ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.c
  %i.q = load i32, ptr %i.p, align 4, !tbaa !80
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %i.n to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  store i8 0, ptr %i.u, align 2, !tbaa !26
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  store float +qnan, ptr %i.v, align 4, !tbaa !64
  %i.w = shl nsw i32 %i.n, 1
  %i.x = sext i32 %i.w to i64
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !937
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.c
end_hunk_4
begin_hunk_5_@_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi4EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii:bb.a
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = zext i1 %i.cp to i8
  %i.cr = sext i32 %i.by to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !26
  %i.ct = load ptr, ptr %i.bl, align 8, !tbaa !936
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cc
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !80
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cr
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !80
  %i.cx = load ptr, ptr %i.br, align 8, !tbaa !938
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cc
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cr
  store float %i.cz, ptr %i.da, align 4, !tbaa !64
  %i.db = shl nsw i32 %i.by, 1
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.cc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !80
  %i.df = sext i32 %i.db to i64                   ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.bv, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !830 ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cc
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !80 ; 2 uses
  %.not.i30 = icmp eq i32 %i.dl, -1
  br i1 %.not.i30, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit34, label %.sink.split.i31

.sink.split.i31:                                  ; preds = %bb.g, %bb.f
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.dj, %bb.g ]
  %i.dm = phi i64 [ %i.cl, %bb.f ], [ %i.df, %bb.g ]
  %.sink.i33 = phi i32 [ %i.cb, %bb.f ], [ %i.dl, %bb.g ]
  %i.dn = getelementptr [4 x i8], ptr %i.bv, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store i32 %.sink.i33, ptr %i.do, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit34

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit34: ; preds = %bb.g, %.sink.split.i31
  %i.dp = phi ptr [ %i.dj, %bb.g ], [ %.pre, %.sink.split.i31 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.c
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !80 ; 3 uses
  %.not = icmp eq i32 %i.ds, -1
  br i1 %.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit34
  %i.dt = add nsw i32 %i.bx, 2                    ; 4 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.dv = sext i32 %i.ds to i64                   ; 6 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !80
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dz = sext i32 %i.dt to i64                   ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dz
  store i32 0, ptr %i.ea, align 4, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz
  store i8 0, ptr %i.eb, align 2, !tbaa !26
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dz
  store float +qnan, ptr %i.ec, align 4, !tbaa !64
  %i.ed = shl nsw i32 %i.dt, 1
  %i.ee = sext i32 %i.ed to i64
  br label %.sink.split.i36

bb.j:                                             ; preds = %bb.h
  %i.ef = load ptr, ptr %i.bd, align 8, !tbaa !937
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dv
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !26
  %i.ei = icmp ne i8 %i.eh, 0
  %i.ej = zext i1 %i.ei to i8
  %i.ek = sext i32 %i.dt to i64                   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %i.ek
  store i8 %i.ej, ptr %i.el, align 2, !tbaa !26
  %i.em = load ptr, ptr %i.bl, align 8, !tbaa !936
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.dv
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !80
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ek
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !80
  %i.eq = load ptr, ptr %i.br, align 8, !tbaa !938
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dv
  %i.es = load float, ptr %i.er, align 4, !tbaa !64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ek
  store float %i.es, ptr %i.et, align 4, !tbaa !64
  %i.eu = shl nsw i32 %i.dt, 1
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dv
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !80
  %i.ey = sext i32 %i.eu to i64                   ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.bv, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i32 %i.ex, ptr %i.fa, align 4, !tbaa !80
  %i.fb = load ptr, ptr %i.dq, align 8, !tbaa !830
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.dv
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !80 ; 2 uses
  %.not.i35 = icmp eq i32 %i.fd, -1
  br i1 %.not.i35, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %.sink.split.i36

.sink.split.i36:                                  ; preds = %bb.j, %bb.i
  %i.fe = phi i64 [ %i.ee, %bb.i ], [ %i.ey, %bb.j ]
  %.sink.i38 = phi i32 [ %i.ds, %bb.i ], [ %i.fd, %bb.j ]
  %i.ff = getelementptr [4 x i8], ptr %i.bv, i64 %i.fe
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split: ; preds = %.sink.split.i, %.sink.split.i36
  %.sink44 = phi ptr [ %i.ff, %.sink.split.i36 ], [ %i.bc, %.sink.split.i ]
  %.sink.i38.sink = phi i32 [ %.sink.i38, %.sink.split.i36 ], [ %.sink.i, %.sink.split.i ]
  %i.fg = getelementptr i8, ptr %.sink44, i64 8
  store i32 %.sink.i38.sink, ptr %i.fg, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split, %bb.j, %bb.d, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb1ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0ELb0ELb1EEEvRKNS_4tree14ScalarTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiiif(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef %1, i64 %2, ptr %3, i64 noundef %4, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, float noundef %9) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.xgboost::predictor::ArrayTreeLayout.390", align 4 ; 11 uses
  %i.a = icmp slt i32 %7, 2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850
  %i.k = and i32 %i.j, 2147483647
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.e, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !828  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, -1
  br i1 %.not.i.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i32 [ 0, %bb.c ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.sink.i.i.i, ptr %i.s, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %.sink.split.i.i.i, %bb.d
  %.not.i.i = icmp eq i64 %4, 0
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i, label %.preheader28.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 5 uses
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.w = icmp ult i64 %4, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %4, -4
  br label %bb.f

.preheader28.i.i:                                 ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i
  %.02729.i.i = phi i64 [ %i.an, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 4 uses
  %exitcond.not.i.i = icmp eq i64 %.02729.i.i, %2
  br i1 %exitcond.not.i.i, label %bb.e, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i, !prof !179

bb.e:                                             ; preds = %.preheader28.i.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i: ; preds = %.preheader28.i.i
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02729.i.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80   ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.02729.i.i
  %i.aa = sext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load float, ptr %i.af, align 4, !tbaa !64
  %i.ah = shl nuw nsw i32 %i.y, 1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aa
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64
  %i.ak = fcmp uge float %i.ag, %i.aj
  %i.al = zext i1 %i.ak to i32
  %i.am = or disjoint i32 %i.ah, %i.al
  store i32 %i.am, ptr %i.x, align 4, !tbaa !80
  %i.an = add nuw i64 %.02729.i.i, 1              ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.an, %4
  br i1 %exitcond32.not.i.i, label %.lr.ph.i.i, label %.preheader28.i.i, !llvm.loop !1016

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bl, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.030.i.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !80
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !80
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.030.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !80
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !80
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.030.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !80
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !80
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.030.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !80
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !80
  %i.bl = add nuw i64 %.030.i.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1017

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.030.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bl, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.030.i.i.epil = phi i64 [ %.030.i.i.epil.init, %.epil.preheader ], [ %i.br, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.030.i.i.epil ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !80
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !80
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !80
  %i.br = add nuw i64 %.030.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i, label %bb.g, !llvm.loop !1018

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i.loopexit.unr-lcssa, %bb.g, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %2, ptr %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.i, %bb.h
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i64, ptr %5, align 8
  %i.bu = sext i32 %8 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = mul i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %invariant.gep = getelementptr [4 x i8], ptr %i.bz, i64 %i.bx
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit, %_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.023 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80
  store i32 0, ptr %i.ca, align 4, !tbaa !80
  %exitcond.not = icmp eq i64 %.023, %2
  br i1 %exitcond.not, label %bb.j, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit, !prof !179

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit: ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.023 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !462, !range !145, !noundef !146
  %i.cf = trunc nuw i8 %i.ce to i1
  %.val.i = load ptr, ptr %i.bs, align 8          ; 4 uses
  %.val10.i = load ptr, ptr %i.cc, align 8        ; 2 uses
  %i.cg = sext i32 %i.cb to i64                   ; 3 uses
  %i.ch = getelementptr inbounds [20 x i8], ptr %.val.i, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !826 ; 3 uses
  %i.ck = icmp eq i32 %i.cj, -1                   ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit
  br i1 %i.ck, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.k, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i
  %i.cl = phi i32 [ %i.de, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i ], [ %i.cj, %bb.k ]
  %i.cm = phi ptr [ %i.dc, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i ], [ %i.ch, %bb.k ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !850 ; 2 uses
  %i.cp = and i32 %i.co, 2147483647
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !64 ; 2 uses
  %i.ct = fcmp uno float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i18
  %i.cu = icmp slt i32 %i.co, 0
  %.in.v.i.i.i.i = select i1 %i.cu, i64 4, i64 8
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.in.v.i.i.i.i
  %i.cv = load i32, ptr %.in.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !26
  %i.cy = fcmp uge float %i.cs, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cl, %i.cz
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i32 [ %i.cv, %bb.l ], [ %i.da, %bb.m ]
  %i.db = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.dc = getelementptr inbounds [20 x i8], ptr %.val.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !826 ; 2 uses
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i.i18, !llvm.loop !859

bb.n:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit
  br i1 %i.ck, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.n, %.lr.ph.i13.i
  %i.dg = phi i32 [ %i.dw, %.lr.ph.i13.i ], [ %i.cj, %bb.n ]
  %i.dh = phi ptr [ %i.du, %.lr.ph.i13.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !850
  %i.dk = and i32 %i.dj, 2147483647
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dp = load float, ptr %i.do, align 4, !tbaa !26
  %i.dq = fcmp uge float %i.dn, %i.dp
  %i.dr = zext i1 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dg, %i.dr
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [20 x i8], ptr %.val.i, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !826 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i13.i, !llvm.loop !860

_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit: ; preds = %.lr.ph.i13.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i, %bb.k, %bb.n
  %.pre-phi.i = phi i64 [ %i.db, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i ], [ %i.cg, %bb.n ], [ %i.cg, %bb.k ], [ %i.dt, %.lr.ph.i13.i ]
  %i.dy = getelementptr inbounds [20 x i8], ptr %.val.i, i64 %.pre-phi.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !26
  %i.eb = add i64 %.023, %1
  %i.ec = mul i64 %i.bt, %i.eb
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ec ; 2 uses
  %i.ed = load float, ptr %gep, align 4, !tbaa !64
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %9, float %i.ed)
  store float %i.ee, ptr %gep, align 4, !tbaa !64
  %i.ef = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond26.not = icmp eq i64 %i.ef, %4
  br i1 %exitcond26.not, label %._crit_edge, label %bb.i, !llvm.loop !1019
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi1ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.384", align 8 ; 8 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  %.not.i = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  br i1 %.not.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader28.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.g = icmp ult i64 %3, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.h

.preheader28.i:                                   ; preds = %bb.b, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i
  %.02729.i = phi i64 [ %i.ao, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02729.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %.02729.i, %1
  br i1 %exitcond.not.i, label %bb.c, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.c:                                             ; preds = %.preheader28.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader28.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80   ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02729.i
  %i.k = sext i32 %i.i to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !64 ; 5 uses
  %i.r = shl nuw nsw i32 %i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !130
  %i.v = fcmp olt float %i.q, 0.000000e+00
  %i.w = fcmp oge float %i.q, f0x4B800000
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i, label %bb.e, !prof !179

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !tbaa !47
  %i.y = fptoui float %i.q to i64
  %i.z = lshr i64 %i.y, 5
  %.not.i.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = fptosi float %i.q to i32                ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = and i32 %i.aa, 31
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = lshr exact i32 -2147483648, %i.ad
  %i.ah = and i32 %i.af, %i.ag
  %.not5.i.i.i = icmp eq i32 %i.ah, 0
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64
  %i.ak = fcmp olt float %i.q, %i.aj
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i

_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE11GetDecisionEfi.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i1 [ %i.ak, %bb.g ], [ true, %bb.d ], [ %.not5.i.i.i, %bb.f ], [ true, %bb.e ]
  %i.al = xor i1 %.0.i.i, true
  %i.am = zext i1 %i.al to i32
  %i.an = or disjoint i32 %i.r, %i.am
  store i32 %i.an, ptr %i.h, align 4, !tbaa !80
  %i.ao = add nuw i64 %.02729.i, 1                ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.ao, %3
  br i1 %exitcond32.not.i, label %.lr.ph.i, label %.preheader28.i, !llvm.loop !1020

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.030.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !80
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !80
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  store i32 %i.az, ptr %i.av, align 4, !tbaa !80
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !80
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !80
  %i.bm = add nuw i64 %.030.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1021

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.030.i.epil = phi i64 [ %.030.i.epil.init, %.epil.preheader ], [ %i.bs, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i.epil ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !80
  %i.bs = add nuw i64 %.030.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.i, !llvm.loop !1022

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.386", align 8 ; 5 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.385", align 8 ; 5 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(96) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi3ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(208) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi4ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !825
  %i.c = sext i32 %4 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !826
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = sext i32 %3 to i64                       ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  store float +qnan, ptr %i.n, align 4, !tbaa !64
  %i.o = shl nsw i32 %3, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %i.p
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i64, ptr %2, align 8, !tbaa !47 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  %i.r = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.r, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.d

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = sext i32 %3 to i64                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !26
  br label %bb.m

end_hunk_5
begin_hunk_6_@_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi6ENS_4tree14ScalarTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii:bb.a
  %i.aw = icmp eq i64 %i.at, 0
  %i.ax = or i1 %i.aw, %i.av
  br i1 %i.ax, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.al
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ac ; 2 uses
  store i64 %i.at, ptr %i.ba, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  br label %bb.m

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.bb = phi i64 [ %i.t, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ], [ %i.ac, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit ], [ %i.ac, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit ] ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !825
  %i.bd = getelementptr inbounds [20 x i8], ptr %i.bc, i64 %i.c ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !850
  %i.bg = and i32 %i.bf, 2147483647
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bb
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1324 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bb
  store float %i.bk, ptr %i.bm, align 4, !tbaa !64
  %i.bn = shl nsw i32 %3, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !826
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr [4 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i32 %i.bp, ptr %i.bs, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !828 ; 2 uses
  %.not38 = icmp eq i32 %i.bu, -1
  br i1 %.not38, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.b
  %.sink47 = phi ptr [ %i.q, %bb.b ], [ %i.br, %bb.m ]
  %.sink = phi i32 [ %4, %bb.b ], [ %i.bu, %bb.m ]
  %i.bv = getelementptr i8, ptr %.sink47, i64 8
  store i32 %.sink, ptr %i.bv, align 4, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi2ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.391", align 4 ; 21 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split.i.i, label %bb.c

.sink.split.i.i:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850
  %i.k = and i32 %i.j, 2147483647
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !826  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.u, align 4, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float +qnan, ptr %i.v, align 4, !tbaa !64
  br label %.sink.split.i27.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !850
  %i.y = and i32 %i.x, 2147483647
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.ab, ptr %i.ac, align 4, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.s, ptr %i.ad, align 4, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !828 ; 2 uses
  %.not.i26.i = icmp eq i32 %i.af, -1
  br i1 %.not.i26.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i, label %.sink.split.i27.i

.sink.split.i27.i:                                ; preds = %bb.e, %bb.d
  %.sink.i29.i = phi i32 [ %i.e, %bb.d ], [ %i.af, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.sink.i29.i, ptr %i.ag, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i: ; preds = %.sink.split.i27.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !828 ; 3 uses
  %.not.i12 = icmp eq i32 %i.ai, -1
  br i1 %.not.i12, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !826 ; 2 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !850
  %i.aq = and i32 %i.ap, 2147483647
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.at, ptr %i.au, align 4, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.am, ptr %i.av, align 4, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !828 ; 2 uses
  %.not.i31.i = icmp eq i32 %i.ax, -1
  br i1 %.not.i31.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split: ; preds = %bb.f, %.sink.split.i.i
  %.sink.i34.sink.i.ph = phi i32 [ 0, %.sink.split.i.i ], [ %i.ai, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float +qnan, ptr %i.az, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, %bb.g
  %.sink.i34.sink.i = phi i32 [ %i.ax, %bb.g ], [ %.sink.i34.sink.i.ph, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.sink.i34.sink.i, ptr %i.ba, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i, %bb.g, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i
  %.not.i = icmp eq i64 %3, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %.not.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.lr.ph.preheader.i

.lr.ph31.i:                                       ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.be = icmp ult i64 %3, 4
  br i1 %i.be, label %.epil.preheader, label %.lr.ph31.i.new

.lr.ph31.i.new:                                   ; preds = %.lr.ph31.i
  %unroll_iter = and i64 %3, -4
  br label %bb.h

._crit_edge.i:                                    ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, %._crit_edge.i
  %.02728.1.i = phi i64 [ %i.bw, %._crit_edge.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02728.1.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80 ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02728.1.i
  %i.bi = sext i32 %i.bg to i64
  %i.bj = add nsw i64 %i.bi, 1                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !64
  %i.bq = shl nsw i32 %i.bg, 1
  %sext.1.i = shl nuw nsw i64 %i.bj, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 %sext.1.i
  %i.bs = load float, ptr %i.br, align 4, !tbaa !64
  %i.bt = fcmp uge float %i.bp, %i.bs
  %i.bu = zext i1 %i.bt to i32
  %i.bv = or disjoint i32 %i.bq, %i.bu
  store i32 %i.bv, ptr %i.bf, align 4, !tbaa !80
  %i.bw = add nuw i64 %.02728.1.i, 1              ; 2 uses
  %exitcond34.1.not.i = icmp eq i64 %i.bw, %3
  br i1 %exitcond34.1.not.i, label %.lr.ph31.i, label %._crit_edge.i, !llvm.loop !1038

.lr.ph.preheader.i:                               ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %.02728.i = phi i64 [ %i.co, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.02728.i, %1
  br i1 %exitcond.not.i, label %.loopexit.i, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.preheader.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02728.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !80 ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02728.i
  %i.ca = sext i32 %i.by to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !80
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !59
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ch = shl nuw nsw i32 %i.by, 1
  %i.ci = shl nuw nsw i64 %i.ca, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !64
  %i.cl = fcmp uge float %i.cg, %i.ck
  %i.cm = zext i1 %i.cl to i32
  %i.cn = or disjoint i32 %i.ch, %i.cm
  store i32 %i.cn, ptr %i.bx, align 4, !tbaa !80
  %i.co = add nuw i64 %.02728.i, 1                ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.co, %3
  br i1 %exitcond34.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !1038

bb.h:                                             ; preds = %bb.h, %.lr.ph31.i.new
  %.030.i = phi i64 [ 0, %.lr.ph31.i.new ], [ %i.dm, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph31.i.new ], [ %niter.next.3, %bb.h ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !80
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !80
  store i32 %i.ct, ptr %i.cp, align 4, !tbaa !80
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !80
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !80
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !80
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !80
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !80
  store i32 %i.df, ptr %i.db, align 4, !tbaa !80
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !80
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !80
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !80
  %i.dm = add nuw i64 %.030.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1039

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph31.i
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph31.i ], [ %i.dm, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.030.i.epil = phi i64 [ %.030.i.epil.init, %.epil.preheader ], [ %i.ds, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i.epil ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !80
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !80
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !80
  %i.ds = add nuw i64 %.030.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.i, !llvm.loop !1040

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.i, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree14ScalarTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi3ENS_4tree14ScalarTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.393", align 4 ; 4 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.392", align 4 ; 39 uses
  %i.a = icmp slt i32 %5, 4
  br i1 %i.a, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !825  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !826  ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split.i.i.thread, label %bb.c

.sink.split.i.i.thread:                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float +qnan, ptr %i.h, align 4, !tbaa !64
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !850
  %i.k = and i32 %i.j, 2147483647
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !826  ; 3 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.u, align 4, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float +qnan, ptr %i.v, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i22.sink.split

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !850
  %i.y = and i32 %i.x, 2147483647
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float %i.ab, ptr %i.ac, align 4, !tbaa !64
  %i.ad = sext i32 %i.s to i64
  %i.ae = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !826 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ai, align 4, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float +qnan, ptr %i.aj, align 4, !tbaa !64
  br label %.sink.split.i27.i15

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !850
  %i.am = and i32 %i.al, 2147483647
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.am, ptr %i.an, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.ap, ptr %i.aq, align 4, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 %i.ag, ptr %i.ar, align 4, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !828 ; 2 uses
  %.not.i26.i14 = icmp eq i32 %i.at, -1
  br i1 %.not.i26.i14, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i17, label %.sink.split.i27.i15

.sink.split.i27.i15:                              ; preds = %bb.g, %bb.f
  %.sink.i29.i16 = phi i32 [ %i.s, %bb.f ], [ %i.at, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %.sink.i29.i16, ptr %i.au, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i17

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i17: ; preds = %.sink.split.i27.i15, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !828 ; 3 uses
  %.not.i18 = icmp eq i32 %i.aw, -1
  br i1 %.not.i18, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit28, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i17
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !826 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree14ScalarTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i22.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !850
  %i.be = and i32 %i.bd, 2147483647
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bh, ptr %i.bi, align 4, !tbaa !64
end_hunk_6
begin_hunk_7_@_ZN7xgboost9predictor5multi18PredValueByOneTreeILb0ELb0ELb1EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif:bb.a
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !47, !noalias !1073
  %i.bv = sext i32 %i.bt to i64
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !1073 ; 4 uses
  %i.by = load i64, ptr %i.h, align 8, !tbaa !47, !noalias !1073 ; 9 uses
  %i.bz = load i64, ptr %i.i, align 8, !tbaa !947, !noalias !1073 ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 0, i64 %i.bw       ; 4 uses
  %.not8.i.i.i = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not8.i.i.i, label %bb.h, label %bb.i, !prof !179

bb.h:                                             ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1073
  unreachable

bb.i:                                             ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  %i.cc = load ptr, ptr %.in.i.i.i30, align 8, !tbaa !948, !noalias !1073 ; 3 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = icmp eq i64 %i.bz, %i.cb
  %.fr = freeze i1 %i.ce                          ; 2 uses
  %i.cf = or i1 %.fr, %i.cd
  br i1 %i.cf, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #35, !noalias !1073
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit: ; preds = %bb.i
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cb ; 5 uses
  %i.ch = add i64 %.053, %1
  %i.ci = mul i64 %i.j, %i.ch
  %i.cj = select i1 %i.o, i64 0, i64 %i.ci        ; 4 uses
  %.not8.i.i = icmp ugt i64 %i.cj, %i.n
  br i1 %.not8.i.i, label %bb.k, label %bb.l, !prof !179

bb.k:                                             ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1076
  unreachable

bb.l:                                             ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  %i.ck = icmp eq i64 %i.n, %i.cj
  %i.cl = or i1 %i.ck, %i.q
  br i1 %i.cl, label %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.m, !prof !63

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt9terminatev() #35, !noalias !1076
  unreachable

_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.l
  %i.cm = getelementptr [4 x i8], ptr %i.p, i64 %i.cj ; 5 uses
  %i.cn = icmp eq i64 %i.by, 0
  %.not4951 = select i1 %.fr, i1 true, i1 %i.cn
  br i1 %.not4951, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %min.iters.check = icmp ult i64 %i.by, 8
  %ident.check75 = icmp ne i64 %i.bx, 1
  %i.co = or i1 %ident.check, %ident.check75
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.co
  br i1 %or.cond, label %.lr.ph.split.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.cp = add i64 %i.cj, %i.by
  %i.cq = shl i64 %i.cp, 2
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.cq
  %i.cr = add i64 %i.cb, %i.by
  %i.cs = shl i64 %i.cr, 2
  %scevgep76 = getelementptr i8, ptr %i.cc, i64 %i.cs
  %bound0 = icmp ult ptr %i.cm, %scevgep76
  %bound1 = icmp ult ptr %i.cg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <4 x float>, ptr %i.ct, align 4, !tbaa !64, !alias.scope !1079
  %wide.load77 = load <4 x float>, ptr %i.cu, align 4, !tbaa !64, !alias.scope !1079
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load78 = load <4 x float>, ptr %i.cv, align 4, !tbaa !64, !alias.scope !1082, !noalias !1079
  %wide.load79 = load <4 x float>, ptr %i.cw, align 4, !tbaa !64, !alias.scope !1082, !noalias !1079
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load78)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load77, <4 x float> %broadcast.splat, <4 x float> %wide.load79)
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !64, !alias.scope !1082, !noalias !1079
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !64, !alias.scope !1082, !noalias !1079
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader80

.lr.ph.split.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %storemerge52.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge52.ph, 1
  %xtraiter = and i64 %i.by, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader80
  %i.da = mul i64 %storemerge52.ph, %i.bx
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !64
  %i.dd = mul i64 %storemerge52.ph, %i.l
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !64
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dc, float %8, float %i.df)
  store float %i.dg, ptr %i.de, align 4, !tbaa !64
  %i.dh = or disjoint i64 %storemerge52.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader80
  %storemerge52.unr = phi i64 [ %storemerge52.ph, %.lr.ph.split.preheader80 ], [ %i.dh, %.lr.ph.split.prol ]
  %i.di = icmp eq i64 %i.by, %.neg
  br i1 %i.di, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.dj = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond60.not = icmp eq i64 %i.dj, %4
  br i1 %exitcond60.not, label %._crit_edge56, label %bb.b, !llvm.loop !1085

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge52 = phi i64 [ %i.dz, %.lr.ph.split ], [ %storemerge52.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.dk = mul i64 %storemerge52, %i.bx
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !64
  %i.dn = mul i64 %storemerge52, %i.l
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !64
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %8, float %i.dp)
  store float %i.dq, ptr %i.do, align 4, !tbaa !64
  %i.dr = add nuw i64 %storemerge52, 1            ; 2 uses
  %i.ds = mul i64 %i.dr, %i.bx
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !64
  %i.dv = mul i64 %i.dr, %i.l
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !64
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %8, float %i.dx)
  store float %i.dy, ptr %i.dw, align 4, !tbaa !64
  %i.dz = add nuw i64 %storemerge52, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dz, %i.by
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1086
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.396", align 8 ; 8 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  %.not.i = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  br i1 %.not.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader28.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.g = icmp ult i64 %3, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.h

.preheader28.i:                                   ; preds = %bb.b, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i
  %.02729.i = phi i64 [ %i.ao, %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02729.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %.02729.i, %1
  br i1 %exitcond.not.i, label %bb.c, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.c:                                             ; preds = %.preheader28.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader28.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80   ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02729.i
  %i.k = sext i32 %i.i to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !64 ; 5 uses
  %i.r = shl nuw nsw i32 %i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !130
  %i.v = fcmp olt float %i.q, 0.000000e+00
  %i.w = fcmp oge float %i.q, f0x4B800000
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i, label %bb.e, !prof !179

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !tbaa !47
  %i.y = fptoui float %i.q to i64
  %i.z = lshr i64 %i.y, 5
  %.not.i.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = fptosi float %i.q to i32                ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = and i32 %i.aa, 31
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = lshr exact i32 -2147483648, %i.ad
  %i.ah = and i32 %i.af, %i.ag
  %.not5.i.i.i = icmp eq i32 %i.ah, 0
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64
  %i.ak = fcmp olt float %i.q, %i.aj
  br label %_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i

_ZNK7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE11GetDecisionEfi.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i1 [ %i.ak, %bb.g ], [ true, %bb.d ], [ %.not5.i.i.i, %bb.f ], [ true, %bb.e ]
  %i.al = xor i1 %.0.i.i, true
  %i.am = zext i1 %i.al to i32
  %i.an = or disjoint i32 %i.r, %i.am
  store i32 %i.an, ptr %i.h, align 4, !tbaa !80
  %i.ao = add nuw i64 %.02729.i, 1                ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.ao, %3
  br i1 %exitcond32.not.i, label %.lr.ph.i, label %.preheader28.i, !llvm.loop !1087

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.030.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !80
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !80
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  store i32 %i.az, ptr %i.av, align 4, !tbaa !80
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !80
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !80
  %i.bm = add nuw i64 %.030.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1088

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.030.i.epil = phi i64 [ %.030.i.epil.init, %.epil.preheader ], [ %i.bs, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i.epil ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !80
  %i.bs = add nuw i64 %.030.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.i, !llvm.loop !1089

_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.398", align 8 ; 5 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.397", align 8 ; 5 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(96) %7, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef 0, i32 noundef 0)
  call void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi(ptr noundef nonnull align 8 dereferenceable(208) %6, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi4ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit

_ZN7xgboost9predictor16ProcessArrayTreeILb1ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi1ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.c = sext i32 %4 to i64                       ; 7 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = sext i32 %3 to i64                       ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  store float +qnan, ptr %i.m, align 4, !tbaa !64
  %i.n = shl nsw i32 %3, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i64, ptr %2, align 8, !tbaa !47 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !58
  %i.q = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.d

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !26
  br label %bb.m

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN7xgboost9predictor15ArrayTreeLayoutILb1ELb0ELi6ENS_4tree19MultiTargetTreeViewEE8PopulateILi5EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii:bb.a
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !352
  %i.y = icmp eq i8 %i.x, 1                       ; 2 uses
  %i.z = zext i1 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = sext i32 %3 to i64                      ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !26
  br i1 %i.y, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !851
  %i.ag = icmp ugt i64 %i.af, %i.c
  br i1 %i.ag, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit39, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit39: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !852
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.c ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !853 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855 ; 3 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %.split.i, label %bb.h

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit39
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !771 ; 2 uses
  %.not8.i = icmp ugt i64 %i.ak, %i.ao
  br i1 %.not8.i, label %bb.i, label %bb.j, !prof !179

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit39
  %i.ap = add i64 %i.am, %i.ak
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !771
  %.not.i = icmp ugt i64 %i.ap, %i.aq
  br i1 %.not.i, label %bb.i, label %bb.k, !prof !179

bb.i:                                             ; preds = %bb.h, %.split.i
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %.split.i
  %i.ar = sub nuw i64 %i.ao, %i.ak
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.as = phi i64 [ %i.ar, %bb.j ], [ %i.am, %bb.h ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load ptr, ptr %.in.i, align 8, !tbaa !772 ; 2 uses
  %i.au = icmp ne ptr %i.at, null
  %i.av = icmp eq i64 %i.as, 0
  %i.aw = or i1 %i.av, %i.au
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.ab ; 2 uses
  store i64 %i.as, ptr %i.az, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  br label %bb.m

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.ba = phi i64 [ %i.s, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ], [ %i.ab, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit ], [ %i.ab, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !936
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.c
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ba
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !938
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.c
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1324 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ba
  store float %i.bk, ptr %i.bm, align 4, !tbaa !64
  %i.bn = shl nsw i32 %3, 1
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !829
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.c
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !80
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr [4 x i8], ptr %i.bl, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  store i32 %i.bq, ptr %i.bt, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !830
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.c
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !80 ; 2 uses
  %.not38 = icmp eq i32 %i.bx, -1
  br i1 %.not38, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.b
  %.sink47 = phi ptr [ %i.p, %bb.b ], [ %i.bs, %bb.m ]
  %.sink = phi i32 [ %4, %bb.b ], [ %i.bx, %bb.m ]
  %i.by = getelementptr i8, ptr %.sink47, i64 8
  store i32 %.sink, ptr %i.by, align 4, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.402", align 4 ; 11 uses
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !829
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float +qnan, ptr %i.g, align 4, !tbaa !64
  br label %.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !936
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !938
  %i.n = load float, ptr %i.m, align 4, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.d, ptr %i.p, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink.i.i, ptr %i.t, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %bb.d, %.sink.split.i.i
  %.not.i = icmp eq i64 %3, 0
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.preheader28.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.x = icmp ult i64 %3, 4
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -4
  br label %bb.f

.preheader28.i:                                   ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %.02729.i = phi i64 [ %i.ao, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.02729.i, %1
  br i1 %exitcond.not.i, label %bb.e, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

bb.e:                                             ; preds = %.preheader28.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.preheader28.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02729.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !80   ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02729.i
  %i.ab = sext i32 %i.z to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !80
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !64
  %i.ai = shl nuw nsw i32 %i.z, 1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ab
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !64
  %i.al = fcmp uge float %i.ah, %i.ak
  %i.am = zext i1 %i.al to i32
  %i.an = or disjoint i32 %i.ai, %i.am
  store i32 %i.an, ptr %i.y, align 4, !tbaa !80
  %i.ao = add nuw i64 %.02729.i, 1                ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.ao, %3
  br i1 %exitcond32.not.i, label %.lr.ph.i, label %.preheader28.i, !llvm.loop !1105

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.030.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !80
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !80
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  store i32 %i.az, ptr %i.av, align 4, !tbaa !80
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !80
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !80
  %i.bm = add nuw i64 %.030.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1106

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.030.i.epil = phi i64 [ %.030.i.epil.init, %.epil.preheader ], [ %i.bs, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i.epil ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !80
  %i.bs = add nuw i64 %.030.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.g, !llvm.loop !1107

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.g, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEEC2ERKS3_RKNS_7RegTree22CategoricalSplitMatrixE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi1ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.403", align 4 ; 21 uses
  %i.a = icmp slt i32 %5, 3
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !829  ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.sink.split.i.i, label %bb.c

.sink.split.i.i:                                  ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float +qnan, ptr %i.g, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !936  ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !938  ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = sext i32 %i.d to i64                     ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float +qnan, ptr %i.u, align 4, !tbaa !64
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !830
  br label %.sink.split.i27.i

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p
  %i.w = load i32, ptr %i.v, align 4, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.w, ptr %i.x, align 4, !tbaa !80
  %i.y = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  %i.z = load float, ptr %i.y, align 4, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.z, ptr %i.aa, align 4, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.r, ptr %i.ab, align 4, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !830 ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.p
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80 ; 2 uses
  %.not.i26.i = icmp eq i32 %i.af, -1
  br i1 %.not.i26.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i, label %.sink.split.i27.i

.sink.split.i27.i:                                ; preds = %bb.e, %bb.d
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.d ], [ %i.ad, %bb.e ]
  %.sink.i29.i = phi i32 [ %i.d, %bb.d ], [ %i.af, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.sink.i29.i, ptr %i.ag, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i: ; preds = %.sink.split.i27.i, %bb.e
  %i.ah = phi ptr [ %i.ad, %bb.e ], [ %.pre.i, %.sink.split.i27.i ] ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80 ; 3 uses
  %.not.i12 = icmp eq i32 %i.ai, -1
  br i1 %.not.i12, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !80 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !80
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aj
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.ar, ptr %i.as, align 4, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.al, ptr %i.at, align 4, !tbaa !80
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80 ; 2 uses
  %.not.i31.i = icmp eq i32 %i.av, -1
  br i1 %.not.i31.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split: ; preds = %bb.f, %.sink.split.i.i
  %.sink.i34.sink.i.ph = phi i32 [ 0, %.sink.split.i.i ], [ %i.ai, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float +qnan, ptr %i.ax, align 4, !tbaa !64
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split, %bb.g
  %.sink.i34.sink.i = phi i32 [ %i.av, %bb.g ], [ %.sink.i34.sink.i.ph, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i.sink.split ]
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.sink.i34.sink.i, ptr %i.ay, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i, %bb.g, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i
  %.not.i = icmp eq i64 %3, 0
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %.not.i, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.lr.ph.preheader.i

.lr.ph31.i:                                       ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 5 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bc = icmp ult i64 %3, 4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph31.i.new

.lr.ph31.i.new:                                   ; preds = %.lr.ph31.i
  %unroll_iter = and i64 %3, -4
  br label %bb.h

._crit_edge.i:                                    ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, %._crit_edge.i
  %.02728.1.i = phi i64 [ %i.bu, %._crit_edge.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02728.1.i ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80 ; 2 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02728.1.i
  %i.bg = sext i32 %i.be to i64
  %i.bh = add nsw i64 %i.bg, 1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !80
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !64
  %i.bo = shl nsw i32 %i.be, 1
  %sext.1.i = shl nuw nsw i64 %i.bh, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %sext.1.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !64
  %i.br = fcmp uge float %i.bn, %i.bq
  %i.bs = zext i1 %i.br to i32
  %i.bt = or disjoint i32 %i.bo, %i.bs
  store i32 %i.bt, ptr %i.bd, align 4, !tbaa !80
  %i.bu = add nuw i64 %.02728.1.i, 1              ; 2 uses
  %exitcond34.1.not.i = icmp eq i64 %i.bu, %3
  br i1 %exitcond34.1.not.i, label %.lr.ph31.i, label %._crit_edge.i, !llvm.loop !1108

.lr.ph.preheader.i:                               ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i
  %.02728.i = phi i64 [ %i.cm, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i ], [ 0, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.02728.i, %1
  br i1 %exitcond.not.i, label %.loopexit.i, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i, !prof !179

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.preheader.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02728.i ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !80 ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.02728.i
  %i.by = sext i32 %i.bw to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !80
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !64
  %i.cf = shl nuw nsw i32 %i.bw, 1
  %i.cg = shl nuw nsw i64 %i.by, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !64
  %i.cj = fcmp uge float %i.ce, %i.ci
  %i.ck = zext i1 %i.cj to i32
  %i.cl = or disjoint i32 %i.cf, %i.ck
  store i32 %i.cl, ptr %i.bv, align 4, !tbaa !80
  %i.cm = add nuw i64 %.02728.i, 1                ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.cm, %3
  br i1 %exitcond34.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !1108

bb.h:                                             ; preds = %bb.h, %.lr.ph31.i.new
  %.030.i = phi i64 [ 0, %.lr.ph31.i.new ], [ %i.dk, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph31.i.new ], [ %niter.next.3, %bb.h ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !80
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !80
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !80
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !80
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !80
  store i32 %i.cx, ptr %i.ct, align 4, !tbaa !80
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !80
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  store i32 %i.dd, ptr %i.cz, align 4, !tbaa !80
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !80
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !80
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !80
  %i.dk = add nuw i64 %.030.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1109

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %.lr.ph31.i
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph31.i ], [ %i.dk, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.030.i.epil = phi i64 [ %.030.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030.i.epil ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !80
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !80
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !80
  %i.dq = add nuw i64 %.030.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit, label %bb.i, !llvm.loop !1110

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit: ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit.loopexit.unr-lcssa, %bb.i, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE8PopulateILi0EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi2ENS_4tree19MultiTargetTreeViewEE7ProcessENS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor16ProcessArrayTreeILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEEEvRKT2_NS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmPii(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat {
bb.a:
  %6 = alloca %"class.xgboost::predictor::ArrayTreeLayout.405", align 4 ; 4 uses
  %7 = alloca %"class.xgboost::predictor::ArrayTreeLayout.404", align 4 ; 41 uses
  %i.a = icmp slt i32 %5, 4
  br i1 %i.a, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !829  ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.sink.split.i.i.thread, label %bb.c

.sink.split.i.i.thread:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float +qnan, ptr %i.g, align 4, !tbaa !64
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !936  ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !938  ; 4 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = sext i32 %i.d to i64                     ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80   ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float +qnan, ptr %i.u, align 4, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.v, align 4, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float +qnan, ptr %i.w, align 4, !tbaa !64
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !830
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit.sink.split.i23

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !80
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float %i.ab, ptr %i.ac, align 4, !tbaa !64
  %i.ad = sext i32 %i.r to i64                    ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ah, align 4, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float +qnan, ptr %i.ai, align 4, !tbaa !64
  %.phi.trans.insert.phi.trans.insert.i26 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.pre.i27 = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i26, align 8, !tbaa !830
  br label %.sink.split.i27.i15

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ad
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !80
  %i.am = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ad
  %i.an = load float, ptr %i.am, align 4, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.an, ptr %i.ao, align 4, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !830 ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ad
  %i.at = load i32, ptr %i.as, align 4, !tbaa !80 ; 2 uses
  %.not.i26.i14 = icmp eq i32 %i.at, -1
  br i1 %.not.i26.i14, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i18, label %.sink.split.i27.i15

.sink.split.i27.i15:                              ; preds = %bb.g, %bb.f
  %.pre.i16 = phi ptr [ %.pre.pre.i27, %bb.f ], [ %i.ar, %bb.g ]
  %.sink.i29.i17 = phi i32 [ %i.r, %bb.f ], [ %i.at, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %.sink.i29.i17, ptr %i.au, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i18

_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i18: ; preds = %.sink.split.i27.i15, %bb.g
  %i.av = phi ptr [ %i.ar, %bb.g ], [ %.pre.i16, %.sink.split.i27.i15 ] ; 6 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.p
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80 ; 3 uses
  %.not.i19 = icmp eq i32 %i.ax, -1
  br i1 %.not.i19, label %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi1EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit31, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost9predictor15ArrayTreeLayoutILb0ELb0ELi3ENS_4tree19MultiTargetTreeViewEE8PopulateILi2EEEvRKS3_RKNS_7RegTree22CategoricalSplitMatrixEii.exit30.i18
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.bc, align 4, !tbaa !80
end_hunk_8
