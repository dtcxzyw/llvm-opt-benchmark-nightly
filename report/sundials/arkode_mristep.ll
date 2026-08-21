inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_Predict:bb.a
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
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef %1) #14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ %i.g, %bb.d ], [ -34, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -44, 1) i32 @mriStep_RKCoeffs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !127  ; 4 uses
  %i.d = icmp sle i32 %1, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond = and i1 %i.e, %i.d
  %i.f = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.f, %or.cond
  %i.g = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.g, %or.cond3
  br i1 %or.cond5, label %.preheader71, label %.loopexit72

.preheader71:                                     ; preds = %bb.b
  %i.h = zext nneg i32 %i.c to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.i, i1 false), !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.i, i1 false), !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !151  ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph82, label %.loopexit72

.lr.ph82:                                         ; preds = %.preheader71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !226  ; 3 uses
  %.not = icmp eq ptr %i.n, null
  %i.o = icmp samesign ugt i32 %i.c, 1            ; 2 uses
  %i.p = zext nneg i32 %1 to i64                  ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !227  ; 4 uses
  %.not66 = icmp eq ptr %i.r, null                ; 2 uses
  %i.s = add i32 %i.c, -1                         ; 4 uses
  %i.t = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s) ; 6 uses
  br i1 %.not, label %.lr.ph82.split.us, label %.lr.ph82.split

.lr.ph82.split.us:                                ; preds = %.lr.ph82
  br i1 %.not66, label %.loopexit72, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph82.split.us
  %i.u = add nuw i32 %i.t, 1                      ; 2 uses
  %wide.trip.count155 = zext nneg i32 %i.k to i64
  %wide.trip.count150 = zext i32 %i.u to i64      ; 2 uses
  %xtraiter193 = and i64 %wide.trip.count150, 1
  %i.v = icmp eq i32 %i.s, 0
  %unroll_iter196 = and i64 %wide.trip.count150, 4294967294
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i32 %i.u to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv152 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next153, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next153 to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fdiv double 1.000000e+00, %i.x           ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv152 ; 3 uses
  br i1 %i.v, label %.epil.preheader192, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.f
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.1, %bb.f ], [ 0, %.preheader.us ] ; 4 uses
  %niter197 = phi i64 [ %niter197.next.1, %bb.f ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !80 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.us.new
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv146
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !92
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !92
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.y, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.us.new
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next147
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.p
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !230
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next147
  %i.at = load double, ptr %i.as, align 8, !tbaa !92
  %i.au = zext nneg i32 %i.an to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !92
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.y, double %i.aw)
  store double %i.ax, ptr %i.av, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %..loopexit_crit_edge.us.unr-lcssa, label %.preheader.us.new

..loopexit_crit_edge.us.unr-lcssa:                ; preds = %bb.f
  br i1 %lcmp.mod194.not, label %..loopexit_crit_edge.us, label %.epil.preheader192

.epil.preheader192:                               ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv146.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next147.1, %..loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.g, label %..loopexit_crit_edge.us

bb.g:                                             ; preds = %.epil.preheader192
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.p
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !230
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv146.epil.init
  %i.bf = load double, ptr %i.be, align 8, !tbaa !92
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !92
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.y, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !92
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.epil.preheader192, %bb.g, %..loopexit_crit_edge.us.unr-lcssa
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit72, label %.preheader.us

.lr.ph82.split:                                   ; preds = %.lr.ph82
  br i1 %.not66, label %.lr.ph82.split.split.us, label %.lr.ph82.split.split

.lr.ph82.split.split.us:                          ; preds = %.lr.ph82.split
  br i1 %i.o, label %.preheader69.us.preheader, label %.loopexit72

.preheader69.us.preheader:                        ; preds = %.lr.ph82.split.split.us
  %i.bk = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %wide.trip.count144 = zext nneg i32 %i.k to i64
  %wide.trip.count139 = zext nneg i32 %i.bk to i64 ; 2 uses
  %xtraiter187 = and i64 %wide.trip.count139, 1
  %i.bl = icmp ult i32 %i.t, 2
  %unroll_iter190 = and i64 %wide.trip.count139, 2147483646
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod189 = trunc i32 %i.bk to i1
  br label %.preheader69.us

.preheader69.us:                                  ; preds = %.preheader69.us.preheader, %..loopexit70_crit_edge.us
  %indvars.iv141 = phi i64 [ 0, %.preheader69.us.preheader ], [ %indvars.iv.next142, %..loopexit70_crit_edge.us ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv.next142 to i32
  %i.bn = uitofp nneg i32 %i.bm to double
  %i.bo = fdiv double 1.000000e+00, %i.bn         ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv141 ; 3 uses
  br i1 %i.bl, label %.epil.preheader186, label %.preheader69.us.new

.preheader69.us.new:                              ; preds = %.preheader69.us, %bb.k
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %bb.k ], [ 0, %.preheader69.us ] ; 4 uses
  %niter191 = phi i64 [ %niter191.next.1, %bb.k ], [ 0, %.preheader69.us ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv135
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !80 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader69.us.new
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !228
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.p
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !230
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv135
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !92
  %i.by = zext nneg i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.by ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !92
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bo, double %i.ca)
  store double %i.cb, ptr %i.bz, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader69.us.new
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next136
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !80 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !228
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.p
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !230
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next136
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !92
  %i.ck = zext nneg i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !92
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.bo, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter191.next.1 = add i64 %niter191, 2         ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %..loopexit70_crit_edge.us.unr-lcssa, label %.preheader69.us.new

..loopexit70_crit_edge.us.unr-lcssa:              ; preds = %bb.k
  br i1 %lcmp.mod188.not, label %..loopexit70_crit_edge.us, label %.epil.preheader186

.epil.preheader186:                               ; preds = %..loopexit70_crit_edge.us.unr-lcssa, %.preheader69.us
  %indvars.iv135.epil.init = phi i64 [ 0, %.preheader69.us ], [ %indvars.iv.next136.1, %..loopexit70_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv135.epil.init
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !80 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.l, label %..loopexit70_crit_edge.us

bb.l:                                             ; preds = %.epil.preheader186
  %i.cr = load ptr, ptr %i.bp, align 8, !tbaa !228
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.p
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !230
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv135.epil.init
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !92
  %i.cw = zext nneg i32 %i.cp to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cw ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !92
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.bo, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !92
  br label %..loopexit70_crit_edge.us

..loopexit70_crit_edge.us:                        ; preds = %.epil.preheader186, %bb.l, %..loopexit70_crit_edge.us.unr-lcssa
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit72, label %.preheader69.us

.lr.ph82.split.split:                             ; preds = %.lr.ph82.split
  br i1 %i.o, label %.preheader69.us84.preheader, label %.preheader69.preheader

.preheader69.us84.preheader:                      ; preds = %.lr.ph82.split.split
  %i.da = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.db = add nuw i32 %i.t, 1                     ; 2 uses
  %wide.trip.count122 = zext nneg i32 %i.k to i64
  %wide.trip.count111 = zext nneg i32 %i.da to i64 ; 2 uses
  %wide.trip.count117 = zext i32 %i.db to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count111, 1
  %i.dc = icmp ult i32 %i.t, 2
  %unroll_iter = and i64 %wide.trip.count111, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = trunc i32 %i.da to i1
  %xtraiter181 = and i64 %wide.trip.count117, 1
  %i.dd = icmp eq i32 %i.s, 0
  %unroll_iter184 = and i64 %wide.trip.count117, 4294967294
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod183 = trunc i32 %i.db to i1
  br label %.preheader69.us84

.preheader69.us84:                                ; preds = %.preheader69.us84.preheader, %..loopexit_crit_edge.us94
  %indvars.iv119 = phi i64 [ 0, %.preheader69.us84.preheader ], [ %indvars.iv.next120, %..loopexit_crit_edge.us94 ] ; 3 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next120 to i32
  %i.df = uitofp nneg i32 %i.de to double
  %i.dg = fdiv double 1.000000e+00, %i.df         ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv119 ; 3 uses
  br i1 %i.dc, label %.epil.preheader, label %.preheader69.us84.new

.preheader69.us84.new:                            ; preds = %.preheader69.us84, %bb.p
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.1, %bb.p ], [ 0, %.preheader69.us84 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.p ], [ 0, %.preheader69.us84 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !80 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader69.us84.new
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !228
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.p
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !230
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv107
  %i.dp = load double, ptr %i.do, align 8, !tbaa !92
  %i.dq = zext nneg i32 %i.dj to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dq ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !92
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dg, double %i.ds)
  store double %i.dt, ptr %i.dr, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader69.us84.new
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next108
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !80 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !228
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.p
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !230
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next108
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !92
  %i.ec = zext nneg i32 %i.dv to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ec ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !92
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.dg, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !92
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next108.1 = add nuw nsw i64 %indvars.iv107, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit70_crit_edge.us92.unr-lcssa, label %.preheader69.us84.new

..loopexit70_crit_edge.us92.new:                  ; preds = %..loopexit70_crit_edge.us92, %bb.t
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %bb.t ], [ 0, %..loopexit70_crit_edge.us92 ] ; 4 uses
  %niter185 = phi i64 [ %niter185.next.1, %bb.t ], [ 0, %..loopexit70_crit_edge.us92 ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !80 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.q, label %bb.r

bb.q:                                             ; preds = %..loopexit70_crit_edge.us92.new
  %i.ej = load ptr, ptr %i.fq, align 8, !tbaa !228
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.p
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !230
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv113
  %i.en = load double, ptr %i.em, align 8, !tbaa !92
  %i.eo = zext nneg i32 %i.eh to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !92
  %i.er = tail call double @llvm.fmuladd.f64(double %i.en, double %i.dg, double %i.eq)
  store double %i.er, ptr %i.ep, align 8, !tbaa !92
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %..loopexit70_crit_edge.us92.new
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next114
  %i.et = load i32, ptr %i.es, align 4, !tbaa !80 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ev = load ptr, ptr %i.fq, align 8, !tbaa !228
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.p
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !230
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next114
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !92
  %i.fa = zext nneg i32 %i.et to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !92
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.dg, double %i.fc)
  store double %i.fd, ptr %i.fb, align 8, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %..loopexit_crit_edge.us94.unr-lcssa, label %..loopexit70_crit_edge.us92.new

..loopexit70_crit_edge.us92.unr-lcssa:            ; preds = %bb.p
  br i1 %lcmp.mod.not, label %..loopexit70_crit_edge.us92, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit70_crit_edge.us92.unr-lcssa, %.preheader69.us84
  %indvars.iv107.epil.init = phi i64 [ 0, %.preheader69.us84 ], [ %indvars.iv.next108.1, %..loopexit70_crit_edge.us92.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107.epil.init
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !80 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.u, label %..loopexit70_crit_edge.us92

bb.u:                                             ; preds = %.epil.preheader
  %i.fh = load ptr, ptr %i.dh, align 8, !tbaa !228
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.p
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !230
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv107.epil.init
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !92
  %i.fm = zext nneg i32 %i.ff to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fm ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !92
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.dg, double %i.fo)
  store double %i.fp, ptr %i.fn, align 8, !tbaa !92
  br label %..loopexit70_crit_edge.us92

..loopexit70_crit_edge.us92:                      ; preds = %.epil.preheader, %bb.u, %..loopexit70_crit_edge.us92.unr-lcssa
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv119 ; 3 uses
  br i1 %i.dd, label %.epil.preheader180, label %..loopexit70_crit_edge.us92.new

..loopexit_crit_edge.us94.unr-lcssa:              ; preds = %bb.t
  br i1 %lcmp.mod182.not, label %..loopexit_crit_edge.us94, label %.epil.preheader180

.epil.preheader180:                               ; preds = %..loopexit_crit_edge.us94.unr-lcssa, %..loopexit70_crit_edge.us92
  %indvars.iv113.epil.init = phi i64 [ 0, %..loopexit70_crit_edge.us92 ], [ %indvars.iv.next114.1, %..loopexit_crit_edge.us94.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113.epil.init
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !80 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, -1
  br i1 %i.ft, label %bb.v, label %..loopexit_crit_edge.us94

bb.v:                                             ; preds = %.epil.preheader180
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !228
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.p
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !230
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv113.epil.init
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !92
  %i.fz = zext nneg i32 %i.fs to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fz ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !92
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.dg, double %i.gb)
  store double %i.gc, ptr %i.ga, align 8, !tbaa !92
  br label %..loopexit_crit_edge.us94

..loopexit_crit_edge.us94:                        ; preds = %.epil.preheader180, %bb.v, %..loopexit_crit_edge.us94.unr-lcssa
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.loopexit72, label %.preheader69.us84

.preheader69.preheader:                           ; preds = %.lr.ph82.split.split
  %wide.trip.count105 = zext nneg i32 %i.k to i64
  %i.gd = load i32, ptr %2, align 4, !tbaa !80    ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  %i.gf = zext nneg i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gf ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.preheader69

.preheader69:                                     ; preds = %.preheader69.preheader, %..loopexit_crit_edge
  %indvars.iv102 = phi i64 [ 0, %.preheader69.preheader ], [ %indvars.iv.next103, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 3 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv.next103 to i32
  %i.gj = uitofp nneg i32 %i.gi to double
  %i.gk = fdiv double 1.000000e+00, %i.gj         ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv102 ; 2 uses
  br i1 %i.ge, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader69
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !228
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.p
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !230
  %i.gp = load double, ptr %i.go, align 8, !tbaa !92
  %i.gq = load double, ptr %i.gg, align 8, !tbaa !92
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gk, double %i.gq)
  store double %i.gr, ptr %i.gg, align 8, !tbaa !92
  br label %bb.x

bb.x:                                             ; preds = %.preheader69, %bb.w
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.y
end_hunk_0
