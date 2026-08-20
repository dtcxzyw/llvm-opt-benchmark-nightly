inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_StageERKNoFast:bb.a
bb.h:                                             ; preds = %.lr.ph.split.split
  %i.bk = load double, ptr %i.u, align 8, !tbaa !191
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.bm = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !92
  %i.bp = fmul double %i.bk, %i.bo
  %i.bq = sext i32 %.063 to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bq
  store double %i.bp, ptr %i.br, align 8, !tbaa !92
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !164
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bq
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !164
  %i.bw = add nsw i32 %.063, 1
  %i.bx = load double, ptr %i.u, align 8, !tbaa !191
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.bz = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !92
  %i.cc = fmul double %i.bx, %i.cb
  %i.cd = sext i32 %i.bw to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cd
  store double %i.cc, ptr %i.ce, align 8, !tbaa !92
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !148
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cd
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !164
  %i.cj = add nsw i32 %.063, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split, %bb.h
  %.2 = phi i32 [ %i.cj, %bb.h ], [ %.063, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count78
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split

._crit_edge:                                      ; preds = %bb.i, %bb.g, %bb.e, %.lr.ph.split.us, %bb.b
  %.0.lcssa = phi i32 [ 1, %bb.b ], [ %.1.us66, %bb.g ], [ %.2.us, %bb.e ], [ 1, %.lr.ph.split.us ], [ %.2, %bb.i ]
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !178
  %i.cl = tail call i32 @N_VLinearCombination(i32 noundef %.0.lcssa, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o, ptr noundef %i.ck) #14
  %.not58 = icmp eq i32 %i.cl, 0
  %.61 = select i1 %.not58, i32 0, i32 -28
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  %.052 = phi i32 [ %i.i, %bb.a ], [ %.61, %._crit_edge ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define i32 @mriStep_StageDIRKNoFast(ptr noundef %0, ptr nofree noundef captures(none) initializes((320, 324)) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = icmp eq i32 %2, %i.b
  %i.d = sext i1 %i.c to i32
  %i.e = add nsw i32 %2, %i.d                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i32 %i.e, ptr %i.f, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.i = tail call i32 @mriStep_Predict(ptr noundef %0, i32 noundef %i.e, ptr noundef %i.h) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !242  ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !177
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.q = tail call i32 %i.k(double noundef %i.m, ptr noundef %i.n, ptr noundef %i.p) #14 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !141
  %i.aa = tail call i32 @mriStep_RKCoeffs(ptr noundef %i.t, i32 noundef %2, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z) ; 2 uses
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 @mriStep_StageSetup(ptr noundef %0) ; 2 uses
  %.not39 = icmp eq i32 %i.ab, 0
  br i1 %.not39, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %3, align 4, !tbaa !80
  %i.ad = tail call i32 @mriStep_Nls(ptr noundef %0, i32 noundef %i.ac) #14 ; 2 uses
  store i32 %i.ad, ptr %3, align 4, !tbaa !80
  %.not40 = icmp eq i32 %i.ad, 0
  %. = select i1 %.not40, i32 0, i32 5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.ab, %bb.f ], [ %i.i, %bb.a ], [ -42, %bb.c ], [ 5, %bb.d ], [ %i.aa, %bb.e ], [ %., %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @mriStep_StageDIRKFast(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 3829, ptr noundef nonnull @__func__.mriStep_StageDIRKFast, ptr noundef nonnull @.str, ptr noundef nonnull @.str.94) #14
  ret i32 -44
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -21, -22) i32 @mriStep_Predict(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 4131, ptr noundef nonnull @__func__.mriStep_Predict, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.h = load i32, ptr %i.g, align 8, !tbaa !154
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 4140, ptr noundef nonnull @__func__.mriStep_Predict, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95) #14
  br label %bb.v

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.o = load i32, ptr %i.n, align 4, !tbaa !286
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %2) #14
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190  ; 10 uses
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.z = load double, ptr %i.y, align 8, !tbaa !191 ; 2 uses
  %i.aa = fmul double %i.x, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !287
  %i.ad = fdiv double %i.aa, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !154
  switch i32 %i.af, label %._crit_edge.thread [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.h
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader103
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi125 = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.am, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !92
  %wide.load126 = load <2 x double>, ptr %i.ai, align 8, !tbaa !92
  %i.aj = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.ak = fcmp une <2 x double> %wide.load126, zeroinitializer
  %i.al = select <2 x i1> %i.aj, <2 x i32> %vec.ind, <2 x i32> %vec.phi ; 2 uses
  %i.am = select <2 x i1> %i.ak, <2 x i32> %step.add, <2 x i32> %vec.phi125 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.al, <2 x i32> %i.am)
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %rdx.minmax) ; 2 uses
  %.not127 = icmp eq i32 %i.ao, -2147483648
  %i.ap = select i1 %.not127, i32 -1, i32 %i.ao   ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader128

.lr.ph.preheader128:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085105.ph = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @arkPredict_MaximumOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #14 ; 2 uses
  %.not102 = icmp eq i32 %i.aq, -22
  br i1 %.not102, label %._crit_edge.thread, label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call i32 @arkPredict_VariableOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #14 ; 2 uses
  %.not101 = icmp eq i32 %i.ar, -22
  br i1 %.not101, label %._crit_edge.thread, label %bb.v

bb.k:                                             ; preds = %bb.h
  %i.as = tail call i32 @arkPredict_CutoffOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #14 ; 2 uses
  %.not100 = icmp eq i32 %i.as, -22
  br i1 %.not100, label %._crit_edge.thread, label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader128, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader128 ] ; 3 uses
  %.085105 = phi i32 [ %i.ax, %.lr.ph ], [ %.085105.ph, %.lr.ph.preheader128 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.au = load double, ptr %i.at, align 8, !tbaa !92
  %i.av = fcmp une double %i.au, 0.000000e+00
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = select i1 %i.av, i32 %i.aw, i32 %.085105 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !289

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.ap, %middle.block ], [ %i.ax, %.lr.ph ] ; 3 uses
  %i.ay = icmp eq i32 %.lcssa, -1
  br i1 %i.ay, label %._crit_edge.thread, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %wide.trip.count115 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count115, 1
  %i.ba = icmp eq i32 %1, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter = and i64 %wide.trip.count115, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph108.new
  %indvars.iv112 = phi i64 [ 0, %.lr.ph108.new ], [ %indvars.iv.next113.1, %bb.p ] ; 5 uses
  %.186107 = phi i32 [ %.lcssa, %.lr.ph108.new ], [ %.2.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph108.new ], [ %niter.next.1, %bb.p ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv112
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %i.bd = sext i32 %.186107 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !92
  %i.bg = fcmp ogt double %i.bc, %i.bf
  %i.bh = fcmp une double %i.bc, 0.000000e+00
  %or.cond = and i1 %i.bh, %i.bg
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv112
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = trunc nuw nsw i64 %indvars.iv112 to i32
  %spec.select = select i1 %i.bl, i32 %.186107, i32 %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %.186107, %bb.l ], [ %spec.select, %bb.m ] ; 3 uses
  %indvars.iv.next113 = or disjoint i64 %indvars.iv112, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next113
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !92 ; 2 uses
  %i.bp = sext i32 %.2 to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !92
  %i.bs = fcmp ogt double %i.bo, %i.br
  %i.bt = fcmp une double %i.bo, 0.000000e+00
  %or.cond.1 = and i1 %i.bt, %i.bs
  br i1 %or.cond.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !138
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next113
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !80
  %i.bx = icmp slt i32 %i.bw, 0
  %i.by = trunc nuw nsw i64 %indvars.iv.next113 to i32
  %spec.select.1 = select i1 %i.bx, i32 %.2, i32 %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.1 = phi i32 [ %.2, %bb.n ], [ %spec.select.1, %bb.o ] ; 3 uses
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge109.unr-lcssa, label %bb.l

._crit_edge109.unr-lcssa:                         ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge109, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge109.unr-lcssa, %.lr.ph108
  %indvars.iv112.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next113.1, %._crit_edge109.unr-lcssa ] ; 3 uses
  %.186107.epil.init = phi i32 [ %.lcssa, %.lr.ph108 ], [ %.2.1, %._crit_edge109.unr-lcssa ] ; 3 uses
  %lcmp.mod133 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv112.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !92 ; 2 uses
  %i.cb = sext i32 %.186107.epil.init to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !92
  %i.ce = fcmp ogt double %i.ca, %i.cd
  %i.cf = fcmp une double %i.ca, 0.000000e+00
  %or.cond.epil = and i1 %i.cf, %i.ce
  br i1 %or.cond.epil, label %bb.q, label %._crit_edge109

bb.q:                                             ; preds = %.epil.preheader
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !138
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv112.epil.init
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !80
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = trunc nuw nsw i64 %indvars.iv112.epil.init to i32
  %spec.select.epil = select i1 %i.cj, i32 %.186107.epil.init, i32 %i.ck
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.epil.preheader, %bb.q, %._crit_edge109.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge109.unr-lcssa ], [ %.186107.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.q ]
  %i.cl = sext i32 %.2.lcssa to i64               ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !92
  %i.co = fmul double %i.z, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !110
  %.not97 = icmp eq i32 %i.cq, 0
  br i1 %.not97, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge109
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !138
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cl
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !80
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !164
  store ptr %i.cz, ptr %i.m, align 8, !tbaa !164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge109
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %._crit_edge109 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !143
  %.not98 = icmp eq i32 %i.db, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = zext nneg i32 %.0 to i64                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dc
  store double 1.000000e+00, ptr %i.dd, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !149
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !138
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.cl
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !80
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !164
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dc
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !164
  %i.do = add nuw nsw i32 %.0, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %i.do, %bb.t ], [ %.0, %bb.s ]
  %i.dp = tail call i32 @arkPredict_Bootstrap(ptr noundef %0, double noundef %i.co, double noundef %i.aa, i32 noundef %.1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %2) #14 ; 2 uses
  %.not99 = icmp eq i32 %i.dp, -22
  br i1 %.not99, label %._crit_edge.thread, label %bb.v

._crit_edge.thread:                               ; preds = %.preheader103, %bb.u, %._crit_edge, %bb.k, %bb.j, %bb.i, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !241
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dr, ptr noundef %2) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k, %bb.j, %bb.i, %._crit_edge.thread, %bb.g, %bb.e, %bb.b
  %.089 = phi i32 [ -21, %bb.b ], [ -21, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge.thread ], [ %i.as, %bb.k ], [ %i.aq, %bb.i ], [ %i.ar, %bb.j ], [ %i.dp, %bb.u ]
  ret i32 %.089
}

declare i32 @mriStep_Nls(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @MRIStepCoupling_LoadTable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mriStepInnerStepper_Evolve(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 %i.e(ptr noundef nonnull %0, double noundef %1, double noundef %2, ptr noundef %3) #14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mriStepInnerStepper_GetAccumulatedError(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
