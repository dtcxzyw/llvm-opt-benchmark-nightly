Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@score_calc_a:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count122 = zext nneg i32 %i.c to i64
  %wide.trip.count117 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph97.us

.lr.ph97.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next120, %.loopexit.us ] ; 3 uses
  %indvars.iv112 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next113, %.loopexit.us ] ; 2 uses
  %.0103.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.be, %.loopexit.us ]
  %.077102.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %.loopexit.us ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph97.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us.us ], [ %indvars.iv112, %.lr.ph97.us ] ; 3 uses
  %.195.us.us = phi float [ %i.be, %._crit_edge.us.us ], [ %.0103.us, %.lr.ph97.us ]
  %.17894.us.us = phi i32 [ %i.bg, %._crit_edge.us.us ], [ %.077102.us, %.lr.ph97.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.n = load double, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.291.us.us = phi float [ %i.be, %bb.b ], [ %.195.us.us, %.lr.ph.us.us ]
  %.27990.us.us = phi i32 [ %i.bg, %bb.b ], [ %.17894.us.us, %.lr.ph.us.us ]
  %.08089.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.08188.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14    ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 7 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14    ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.08188.us.us, 1                 ; 4 uses
  %i.aa = select i1 %i.t, i32 %i.z, i32 0
  %i.ab = xor i32 %.08089.us.us, 1                ; 3 uses
  %i.ac = select i1 %i.t, i32 0, i32 %.08188.us.us
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.08188.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.ab
  %i.ag = mul nuw nsw i32 %i.aa, %.08089.us.us
  %i.ah = select i1 %i.t, i32 %.08188.us.us, i32 0 ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, %i.ab
  %i.aj = add nuw nsw i32 %i.ab, %.08089.us.us
  %i.ak = mul nuw nsw i32 %i.ac, %i.aj
  %i.al = add nuw nsw i32 %i.z, %i.ah
  %i.am = mul nuw nsw i32 %i.al, %.08089.us.us
  %i.an = add nuw nsw i32 %i.ak, %i.ag
  %i.ao = add nuw nsw i32 %i.an, %i.ai
  %i.ap = select i1 %i.x, i32 %i.ao, i32 %i.am
  %i.aq = add nuw nsw i32 %i.ap, %i.af
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fpext nnan ninf float %i.ar to double
  %i.at = fmul nnan double %i.as, 5.000000e-01
  %i.au = fmul double %i.at, %i.h
  %i.av = fpext float %.291.us.us to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.av)
  %i.ax = fptrunc double %i.aw to float
  %i.ay = sext i8 %i.s to i64
  %i.az = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ay
  %i.ba = sext i8 %i.w to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !13
  %i.bd = sitofp i32 %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.q, float %i.ax) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bf = zext i1 %mulbool.us.us to i32
  %i.bg = add nsw i32 %.27990.us.us, %i.bf        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !408

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !409

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge.loopexit, label %.lr.ph97.us, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bh = sitofp i32 %i.bg to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.077.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bi = fdiv float %.0.lcssa, %.077.lcssa
  %i.bj = fpext float %i.bi to double
  %i.bk = load i32, ptr @scoremtx, align 4, !tbaa !13
  %.not = icmp eq i32 %i.bk, 0
  %i.bl = uitofp i1 %.not to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 4.000000e+02, double %i.bj)
  %i.bn = fptrunc double %i.bm to float
  ret float %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_s(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.c to i64
  %wide.trip.count99 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph79.us

.lr.ph79.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv101 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next102, %.loopexit.us ] ; 3 uses
  %indvars.iv94 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %.085.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.au, %.loopexit.us ]
  %.06184.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.aw, %.loopexit.us ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv101
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ %indvars.iv94, %.lr.ph79.us ] ; 3 uses
  %.177.us.us = phi float [ %i.au, %._crit_edge.us.us ], [ %.085.us, %.lr.ph79.us ]
  %.16276.us.us = phi i32 [ %i.aw, %._crit_edge.us.us ], [ %.06184.us, %.lr.ph79.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.n = load double, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.273.us.us = phi float [ %i.au, %bb.b ], [ %.177.us.us, %.lr.ph.us.us ]
  %.26372.us.us = phi i32 [ %i.aw, %bb.b ], [ %.16276.us.us, %.lr.ph.us.us ]
  %.06471.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.06570.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14    ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 5 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14    ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.06570.us.us, 1                 ; 3 uses
  %i.aa = xor i32 %.06471.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.t, i32 0, i32 %.06570.us.us
  %i.ac = mul nuw nsw i32 %i.ab, %i.aa
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.06570.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ag = mul nuw nsw i32 %i.z, %.06471.us.us
  %i.ah = select i1 %i.x, i32 %i.ac, i32 %i.ag
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %3 = uitofp nneg i32 %i.ai to double
  %i.aj = fmul nnan double %3, 5.000000e-01
  %i.ak = fmul double %i.aj, %i.h
  %i.al = fpext float %.273.us.us to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.n, double %i.al)
  %i.an = fptrunc double %i.am to float
  %i.ao = sext i8 %i.s to i64
  %i.ap = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ao
  %i.aq = sext i8 %i.w to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = sitofp i32 %i.as to float
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.q, float %i.an) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.av = zext i1 %mulbool.us.us to i32
  %i.aw = add nsw i32 %.26372.us.us, %i.av        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !411

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !412

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge.loopexit, label %.lr.ph79.us, !llvm.loop !413

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ax = sitofp i32 %i.aw to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ax, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.au, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.ay = fdiv float %.0.lcssa, %.061.lcssa
  %i.az = fadd float %i.ay, 4.000000e+02
  ret float %i.az
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc_for_score_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count97 = zext nneg i32 %i.c to i64
  %wide.trip.count92 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88, %.loopexit.us ] ; 2 uses
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.ao, %.loopexit.us ]
  %.05677.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.ao, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15771.us.us = phi i32 [ %i.aq, %._crit_edge.us.us ], [ %.05677.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.ao, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25867.us.us = phi i32 [ %i.aq, %bb.b ], [ %.15771.us.us, %.preheader.us.us ]
  %.05966.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06065.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 5 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 4 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06065.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.05966.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06065.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06065.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.05966.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %2 = uitofp nneg i32 %i.ad to double
  %i.ae = fmul nnan double %2, 5.000000e-01
  %i.af = fpext float %.268.us.us to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.h, double %i.af)
  %i.ah = fptrunc double %i.ag to float
  %i.ai = sext i8 %i.n to i64
  %i.aj = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ai
  %i.ak = sext i8 %i.r to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = sitofp i32 %i.am to float
  %i.ao = fadd float %i.an, %i.ah                 ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.o, %i.s
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ap = zext i1 %mulbool.us.us to i32
  %i.aq = add nsw i32 %.25867.us.us, %i.ap        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !414

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !415

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !416

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ar = fpext float %i.ao to double
  %i.as = sitofp i32 %i.aq to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.056.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.as, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.at = fdiv double %.0.lcssa, %.056.lcssa
  %i.au = fadd double %i.at, 4.000000e+02
  ret double %i.au
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore___(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.a
  %i.d = trunc i64 %.fr to i32
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double
  br i1 %i.e, label %.lr.ph72.split.us.preheader, label %._crit_edge

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  %i.j = zext i32 %2 to i64
  %wide.trip.count81 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.split.us.preheader ], [ %indvars.iv.next79, %..loopexit_crit_edge.us ] ; 3 uses
  %.071.us = phi float [ 0.000000e+00, %.lr.ph72.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.k = icmp eq i64 %indvars.iv78, %i.j
  br i1 %i.k, label %..loopexit_crit_edge.us, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.az, %bb.b ]
  %.05764.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 3 uses
  %.05863.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14    ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 5 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 5 uses
  %i.s = zext i1 %i.r to i32
  %i.t = xor i32 %.05863.us, 1                    ; 3 uses
  %i.u = select i1 %i.n, i32 %i.t, i32 0
  %i.v = xor i32 %.05764.us, 1                    ; 2 uses
  %i.w = select i1 %i.n, i32 0, i32 %.05863.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.n, i32 %i.t, i32 %.05863.us
  %i.z = select i1 %i.n, i32 0, i32 %i.t          ; 2 uses
  %.v.us = select i1 %i.r, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us, %i.v
  %i.ab = mul nuw nsw i32 %i.z, %.05764.us
  %i.ac = select i1 %i.r, i32 0, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = mul nuw nsw i32 %i.u, %.05764.us
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = select i1 %i.r, double 0.000000e+00, double %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.ae)
  %i.aj = uitofp nneg i32 %i.x to double
  %i.ak = select i1 %i.r, double %i.aj, double 0.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 2.000000e+00, double %i.ai)
  %i.am = fptosi double %i.al to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fpext nnan ninf float %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = fpext float %.166.us to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.i, double %i.aq)
  %i.as = fptrunc double %i.ar to float
  %i.at = sext i8 %i.m to i64
  %i.au = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.at
  %i.av = sext i8 %i.q to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fadd float %i.ay, %i.as                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !417

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.az, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !418

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.bd = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bd, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.c to i64
  %wide.trip.count89 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.ao, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.ao, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.ao, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.05865.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.05964.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 4 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 3 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.05964.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.05865.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.05964.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.05964.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.05865.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %2 = uitofp nneg i32 %i.ad to double
  %i.ae = fmul nnan double %2, 5.000000e-01
  %i.af = fpext float %.267.us.us to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.h, double %i.af)
  %i.ah = fptrunc double %i.ag to float
  %i.ai = sext i8 %i.n to i64
  %i.aj = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ai
  %i.ak = sext i8 %i.r to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = sitofp i32 %i.am to float
  %i.ao = fadd float %i.an, %i.ah                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !419

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !420

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !421

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ap = fpext float %i.ao to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ap, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @DSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add nsw i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count108 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph84.us

.lr.ph84.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next106, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.05287.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bw, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15382.us.us = phi double [ %i.bw, %._crit_edge75.us.us ], [ %.05287.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.072.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05471.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bu, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05471.us.us to i64            ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %.072.us.us, %i.y            ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05471.us.us, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us:                                     ; preds = %bb.d, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us.us ], [ %i.ad, %bb.d ] ; 3 uses
  %.263.us.us = phi double [ %i.ao, %.lr.ph.us.us ], [ %i.ab, %bb.d ]
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 180
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = sitofp i32 %i.am to double
  %i.ao = fadd double %.263.us.us, %i.an          ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, 45
  br i1 %i.ar, label %.lr.ph.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !422

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us
  %i.as = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %bb.d
  %.256.lcssa.us.us = phi i32 [ %.05471.us.us, %bb.d ], [ %i.as, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ab, %bb.d ], [ %i.ao, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.at = icmp sgt i32 %.256.lcssa.us.us, %i.f
  br i1 %i.at, label %._crit_edge75.us.us, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i8 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !13
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd double %.072.us.us, %i.ba
  %i.bc = fadd double %i.bb, %i.i                 ; 2 uses
  %i.bd = add nsw i32 %.05471.us.us, 1
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = icmp eq i8 %i.bg, 45
  br i1 %i.bh, label %.lr.ph67.us.us, label %._crit_edge68.us.us

.lr.ph67.us.us:                                   ; preds = %bb.f, %.lr.ph67.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph67.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.165.us.us = phi double [ %i.bo, %.lr.ph67.us.us ], [ %i.bc, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv97
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fadd double %.165.us.us, %i.bn          ; 2 uses
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next98
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = icmp eq i8 %i.bq, 45
  br i1 %i.br, label %.lr.ph67.us.us, label %._crit_edge68.us.us.loopexit, !llvm.loop !423

._crit_edge68.us.us.loopexit:                     ; preds = %.lr.ph67.us.us
  %i.bs = trunc nsw i64 %indvars.iv97 to i32
  br label %._crit_edge68.us.us

._crit_edge68.us.us:                              ; preds = %._crit_edge68.us.us.loopexit, %bb.f
  %.155.lcssa.us.us = phi i32 [ %.05471.us.us, %bb.f ], [ %i.bs, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.bc, %bb.f ], [ %i.bo, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %i.bt = icmp sgt i32 %.155.lcssa.us.us, %i.f
  br i1 %i.bt, label %._crit_edge75.us.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge68.us.us, %bb.e, %._crit_edge.us.us, %bb.c
  %.357.us.us = phi i32 [ %.05471.us.us, %bb.e ], [ %.155.lcssa.us.us, %._crit_edge68.us.us ], [ %.256.lcssa.us.us, %._crit_edge.us.us ], [ %.05471.us.us, %bb.c ]
  %.3.us.us = phi double [ %.072.us.us, %bb.e ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %i.bu = add nsw i32 %.357.us.us, 1              ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.c
  br i1 %i.bv, label %bb.b, label %._crit_edge75.us.us, !llvm.loop !424

._crit_edge75.us.us:                              ; preds = %bb.g, %._crit_edge68.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.3.us.us, %bb.g ]
  %i.bw = fadd double %.15382.us.us, %.4.us.us    ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph74.us.us, !llvm.loop !425

.loopexit.us:                                     ; preds = %._crit_edge75.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph84.us, !llvm.loop !426

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.052.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.bw, %.loopexit.us ]
  ret double %.052.lcssa
}

end_hunk_0
