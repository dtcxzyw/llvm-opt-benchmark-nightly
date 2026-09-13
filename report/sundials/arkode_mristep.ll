Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
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
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %i.cb = sext i32 %.186107.epil.init to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !47
  %i.ce = fcmp ogt double %i.ca, %i.cd
  %i.cf = fcmp une double %i.ca, 0.000000e+00
  %or.cond.epil = and i1 %i.cf, %i.ce
  br i1 %or.cond.epil, label %bb.q, label %._crit_edge109

bb.q:                                             ; preds = %.epil.preheader
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !85
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv112.epil.init
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = trunc nuw nsw i64 %indvars.iv112.epil.init to i32
  %spec.select.epil = select i1 %i.cj, i32 %.186107.epil.init, i32 %i.ck
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.epil.preheader, %bb.q, %._crit_edge109.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge109.unr-lcssa ], [ %.186107.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.q ]
  %i.cl = sext i32 %.2.lcssa to i64               ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !47
  %i.co = fmul double %i.z, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !63
  %.not97 = icmp eq i32 %i.cq, 0
  br i1 %.not97, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge109
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !95
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cl
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !107
  store ptr %i.cz, ptr %i.m, align 8, !tbaa !107
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge109
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %._crit_edge109 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !90
  %.not98 = icmp eq i32 %i.db, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = zext nneg i32 %.0 to i64                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dc
  store double 1.000000e+00, ptr %i.dd, align 8, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !85
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.cl
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !107
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dc
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !107
  %i.do = add nuw nsw i32 %.0, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %i.do, %bb.t ], [ %.0, %bb.s ]
  %i.dp = tail call i32 @arkPredict_Bootstrap(ptr noundef %0, double noundef %i.co, double noundef %i.aa, i32 noundef %.1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %2) #14 ; 2 uses
  %.not99 = icmp eq i32 %i.dp, -22
  br i1 %.not99, label %._crit_edge.thread, label %bb.v

._crit_edge.thread:                               ; preds = %.preheader103, %bb.u, %._crit_edge, %bb.k, %bb.j, %bb.i, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !163
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 %i.e(ptr noundef nonnull %0, double noundef %1, double noundef %2, ptr noundef %3) #14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !106
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef %1) #14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !106
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76   ; 4 uses
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %3, i8 0, i64 %i.i, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.i, i1 false), !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98   ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph82, label %.loopexit72

.lr.ph82:                                         ; preds = %.preheader71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154  ; 3 uses
  %.not = icmp eq ptr %i.n, null
  %i.o = icmp samesign ugt i32 %i.c, 1            ; 2 uses
  %i.p = zext nneg i32 %1 to i64                  ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155  ; 4 uses
  %.not66 = icmp eq ptr %i.r, null                ; 2 uses
  %i.s = add i32 %i.c, -1                         ; 6 uses
  %i.t = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s) ; 4 uses
  br i1 %.not, label %.lr.ph82.split.us, label %.lr.ph82.split

.lr.ph82.split.us:                                ; preds = %.lr.ph82
  br i1 %.not66, label %.loopexit72, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph82.split.us
  %i.u = add nuw i32 %i.t, 1                      ; 2 uses
  %wide.trip.count155 = zext nneg i32 %i.k to i64
  %wide.trip.count150 = zext i32 %i.u to i64      ; 2 uses
  %xtraiter194 = and i64 %wide.trip.count150, 1
  %i.v = icmp eq i32 %i.s, 0
  %unroll_iter197 = and i64 %wide.trip.count150, 4294967294
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod196 = trunc i32 %i.u to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv152 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next153, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next153 to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fdiv double 1.000000e+00, %i.x           ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv152 ; 3 uses
  br i1 %i.v, label %.epil.preheader193, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.f
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.1, %bb.f ], [ 0, %.preheader.us ] ; 4 uses
  %niter198 = phi i64 [ %niter198.next.1, %bb.f ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.us.new
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !158
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv146
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !47
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !47
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.y, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.us.new
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next147
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.p
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !158
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next147
  %i.at = load double, ptr %i.as, align 8, !tbaa !47
  %i.au = zext nneg i32 %i.an to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !47
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.y, double %i.aw)
  store double %i.ax, ptr %i.av, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %..loopexit_crit_edge.us.unr-lcssa, label %.preheader.us.new

..loopexit_crit_edge.us.unr-lcssa:                ; preds = %bb.f
  br i1 %lcmp.mod195.not, label %..loopexit_crit_edge.us, label %.epil.preheader193

.epil.preheader193:                               ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv146.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next147.1, %..loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.g, label %..loopexit_crit_edge.us

bb.g:                                             ; preds = %.epil.preheader193
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.p
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv146.epil.init
  %i.bf = load double, ptr %i.be, align 8, !tbaa !47
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !47
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.y, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !47
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.epil.preheader193, %bb.g, %..loopexit_crit_edge.us.unr-lcssa
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
  %i.bl = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s)
  %xtraiter188 = and i64 %wide.trip.count139, 1
  %i.bm = icmp ult i32 %i.bl, 2
  %unroll_iter191 = and i64 %wide.trip.count139, 2147483646
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod190 = trunc i32 %i.bk to i1
  br label %.preheader69.us

.preheader69.us:                                  ; preds = %.preheader69.us.preheader, %..loopexit70_crit_edge.us
  %indvars.iv141 = phi i64 [ 0, %.preheader69.us.preheader ], [ %indvars.iv.next142, %..loopexit70_crit_edge.us ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 3 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv.next142 to i32
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fdiv double 1.000000e+00, %i.bo         ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv141 ; 3 uses
  br i1 %i.bm, label %.epil.preheader186, label %.preheader69.us.new

.preheader69.us.new:                              ; preds = %.preheader69.us, %bb.k
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %bb.k ], [ 0, %.preheader69.us ] ; 4 uses
  %niter192 = phi i64 [ %niter192.next.1, %bb.k ], [ 0, %.preheader69.us ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv135
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !35 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader69.us.new
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !157
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.p
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv135
  %i.by = load double, ptr %i.bx, align 8, !tbaa !47
  %i.bz = zext nneg i32 %i.bs to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !47
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bp, double %i.cb)
  store double %i.cc, ptr %i.ca, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader69.us.new
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next136
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.bq, align 8, !tbaa !157
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.p
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !158
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next136
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !47
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cl ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !47
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.bp, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter192.next.1 = add i64 %niter192, 2         ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %..loopexit70_crit_edge.us.unr-lcssa, label %.preheader69.us.new

..loopexit70_crit_edge.us.unr-lcssa:              ; preds = %bb.k
  br i1 %lcmp.mod189.not, label %..loopexit70_crit_edge.us, label %.epil.preheader186

.epil.preheader186:                               ; preds = %..loopexit70_crit_edge.us.unr-lcssa, %.preheader69.us
  %indvars.iv135.epil.init = phi i64 [ 0, %.preheader69.us ], [ %indvars.iv.next136.1, %..loopexit70_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv135.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !35 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.l, label %..loopexit70_crit_edge.us

bb.l:                                             ; preds = %.epil.preheader186
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !157
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.p
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !158
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv135.epil.init
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !47
  %i.cx = zext nneg i32 %i.cq to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cx ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !47
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.bp, double %i.cz)
  store double %i.da, ptr %i.cy, align 8, !tbaa !47
  br label %..loopexit70_crit_edge.us

..loopexit70_crit_edge.us:                        ; preds = %.epil.preheader186, %bb.l, %..loopexit70_crit_edge.us.unr-lcssa
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit72, label %.preheader69.us

.lr.ph82.split.split:                             ; preds = %.lr.ph82.split
  br i1 %i.o, label %.preheader69.us84.preheader, label %.preheader69.preheader

.preheader69.us84.preheader:                      ; preds = %.lr.ph82.split.split
  %i.db = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.dc = add nuw i32 %i.t, 1                     ; 2 uses
  %wide.trip.count122 = zext nneg i32 %i.k to i64
  %wide.trip.count111 = zext nneg i32 %i.db to i64 ; 2 uses
  %wide.trip.count117 = zext i32 %i.dc to i64     ; 2 uses
  %i.dd = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s)
  %xtraiter = and i64 %wide.trip.count111, 1
  %i.de = icmp ult i32 %i.dd, 2
  %unroll_iter = and i64 %wide.trip.count111, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = trunc i32 %i.db to i1
  %xtraiter181 = and i64 %wide.trip.count117, 1
  %5 = icmp eq i32 %i.s, 0
  %unroll_iter184 = and i64 %wide.trip.count117, 4294967294
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod183 = trunc i32 %i.dc to i1
  br label %.preheader69.us84

.preheader69.us84:                                ; preds = %.preheader69.us84.preheader, %..loopexit_crit_edge.us93
  %indvars.iv119 = phi i64 [ 0, %.preheader69.us84.preheader ], [ %indvars.iv.next120, %..loopexit_crit_edge.us93 ] ; 3 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next120 to i32
  %i.dg = uitofp nneg i32 %i.df to double
  %i.dh = fdiv double 1.000000e+00, %i.dg         ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv119 ; 3 uses
  br i1 %i.de, label %.epil.preheader, label %.preheader69.us84.new

.preheader69.us84.new:                            ; preds = %.preheader69.us84, %bb.p
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.1, %bb.p ], [ 0, %.preheader69.us84 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.p ], [ 0, %.preheader69.us84 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !35 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader69.us84.new
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !157
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.p
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !158
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv107
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !47
  %i.dr = zext nneg i32 %i.dk to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !47
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dh, double %i.dt)
  store double %i.du, ptr %i.ds, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader69.us84.new
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next108
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !35 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !157
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.p
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !158
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next108
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !47
  %i.ed = zext nneg i32 %i.dw to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !47
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dh, double %i.ef)
  store double %i.eg, ptr %i.ee, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next108.1 = add nuw nsw i64 %indvars.iv107, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit70_crit_edge.us88.unr-lcssa, label %.preheader69.us84.new

..loopexit70_crit_edge.us88.unr-lcssa:            ; preds = %bb.p
  br i1 %lcmp.mod.not, label %..loopexit70_crit_edge.us88, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit70_crit_edge.us88.unr-lcssa, %.preheader69.us84
  %indvars.iv107.epil.init = phi i64 [ 0, %.preheader69.us84 ], [ %indvars.iv.next108.1, %..loopexit70_crit_edge.us88.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107.epil.init
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.q, label %..loopexit70_crit_edge.us88

bb.q:                                             ; preds = %.epil.preheader
  %i.ek = load ptr, ptr %i.di, align 8, !tbaa !157
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.p
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !158
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv107.epil.init
  %i.eo = load double, ptr %i.en, align 8, !tbaa !47
  %i.ep = zext nneg i32 %i.ei to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ep ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !47
  %i.es = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.dh, double %i.er)
  store double %i.es, ptr %i.eq, align 8, !tbaa !47
  br label %..loopexit70_crit_edge.us88

..loopexit70_crit_edge.us88:                      ; preds = %.epil.preheader, %bb.q, %..loopexit70_crit_edge.us88.unr-lcssa
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv119 ; 3 uses
  br i1 %5, label %.epil.preheader180, label %..loopexit70_crit_edge.us88.new

..loopexit70_crit_edge.us88.new:                  ; preds = %..loopexit70_crit_edge.us88, %bb.u
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %bb.u ], [ 0, %..loopexit70_crit_edge.us88 ] ; 4 uses
  %niter185 = phi i64 [ %niter185.next.1, %bb.u ], [ 0, %..loopexit70_crit_edge.us88 ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !35 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, -1
  br i1 %i.ew, label %bb.r, label %bb.s

bb.r:                                             ; preds = %..loopexit70_crit_edge.us88.new
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !157
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.p
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !158
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv113
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !47
  %i.fc = zext nneg i32 %i.ev to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !47
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.dh, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %..loopexit70_crit_edge.us88.new
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next114
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !35 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !157
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.p
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !158
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next114
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !47
  %i.fo = zext nneg i32 %i.fh to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fo ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !47
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.dh, double %i.fq)
  store double %i.fr, ptr %i.fp, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %..loopexit_crit_edge.us93.unr-lcssa, label %..loopexit70_crit_edge.us88.new

..loopexit_crit_edge.us93.unr-lcssa:              ; preds = %bb.u
  br i1 %lcmp.mod182.not, label %..loopexit_crit_edge.us93, label %.epil.preheader180

.epil.preheader180:                               ; preds = %..loopexit_crit_edge.us93.unr-lcssa, %..loopexit70_crit_edge.us88
  %indvars.iv113.epil.init = phi i64 [ 0, %..loopexit70_crit_edge.us88 ], [ %indvars.iv.next114.1, %..loopexit_crit_edge.us93.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !35 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.v, label %..loopexit_crit_edge.us93

bb.v:                                             ; preds = %.epil.preheader180
  %i.fv = load ptr, ptr %i.et, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.p
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !158
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv113.epil.init
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !47
  %i.ga = zext nneg i32 %i.ft to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ga ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !47
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.dh, double %i.gc)
  store double %i.gd, ptr %i.gb, align 8, !tbaa !47
  br label %..loopexit_crit_edge.us93

..loopexit_crit_edge.us93:                        ; preds = %.epil.preheader180, %bb.v, %..loopexit_crit_edge.us93.unr-lcssa
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.loopexit72, label %.preheader69.us84

.preheader69.preheader:                           ; preds = %.lr.ph82.split.split
  %wide.trip.count105 = zext nneg i32 %i.k to i64
  %i.ge = load i32, ptr %2, align 4, !tbaa !35    ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gg ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 0
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.preheader69

.preheader69:                                     ; preds = %.preheader69.preheader, %..loopexit_crit_edge
  %indvars.iv102 = phi i64 [ 0, %.preheader69.preheader ], [ %indvars.iv.next103, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 3 uses
  %i.gj = trunc nuw nsw i64 %indvars.iv.next103 to i32
  %i.gk = uitofp nneg i32 %i.gj to double
  %i.gl = fdiv double 1.000000e+00, %i.gk         ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv102 ; 2 uses
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader69
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !157
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.p
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !158
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !47
  %i.gr = load double, ptr %i.gh, align 8, !tbaa !47
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gl, double %i.gr)
  store double %i.gs, ptr %i.gh, align 8, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %.preheader69, %bb.w
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gt = load i32, ptr %i.gi, align 4, !tbaa !35 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %bb.z, label %..loopexit_crit_edge

bb.z:                                             ; preds = %bb.y
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !157
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.p
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !158
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !47
  %i.ha = zext nneg i32 %i.gt to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ha ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !47
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gl, double %i.hc)
  store double %i.hd, ptr %i.hb, align 8, !tbaa !47
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.y, %bb.z, %bb.x
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit72, label %.preheader69

.loopexit72:                                      ; preds = %..loopexit_crit_edge, %..loopexit_crit_edge.us93, %..loopexit70_crit_edge.us, %..loopexit_crit_edge.us, %.lr.ph82.split.us, %.preheader71, %.lr.ph82.split.split.us, %bb.a, %bb.b
  %.057 = phi i32 [ -44, %bb.a ], [ -44, %bb.b ], [ 0, %.preheader71 ], [ 0, %.lr.ph82.split.split.us ], [ 0, %.lr.ph82.split.us ], [ 0, %..loopexit_crit_edge.us93 ], [ 0, %..loopexit_crit_edge.us ], [ 0, %..loopexit70_crit_edge.us ], [ 0, %..loopexit_crit_edge ]
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @mriStep_StageSetup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 4269, ptr noundef nonnull @__func__.mriStep_StageSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 5 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 4 uses
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !47
  %i.v = fmul double %i.k, %i.u                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store double %i.v, ptr %i.w, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.y = load i32, ptr %i.x, align 4, !tbaa !165
  %.not = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double %i.v, ptr %i.z, align 8, !tbaa !150
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = load double, ptr %i.z, align 8, !tbaa !150
  %i.ab = fdiv double %i.v, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = phi double [ %i.ab, %bb.e ], [ 1.000000e+00, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store double %i.ac, ptr %i.ad, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !120
  store ptr %i.af, ptr %i.i, align 8, !tbaa !107
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.g, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !147
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !107
  %i.aj = icmp sgt i32 %i.e, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !90
  %.not68 = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !63
  %.not69 = icmp eq i32 %i.ap, 0                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br i1 %.not68, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not69, label %._crit_edge, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %wide.trip.count91 = zext nneg i32 %i.e to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %bb.h
  %indvars.iv88 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next89, %bb.h ] ; 2 uses
  %.071.us = phi i32 [ 2, %.lr.ph.split.us.split.preheader ], [ %.2.us, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv88
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35 ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us.split
  %i.au = load double, ptr %i.j, align 8, !tbaa !133
  %i.av = zext nneg i32 %i.as to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !47
  %i.ay = fmul double %i.au, %i.ax
  %i.az = sext i32 %.071.us to i64                ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.az
  store double %i.ay, ptr %i.ba, align 8, !tbaa !47
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !107
  %i.be = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !107
  %i.bf = add nsw i32 %.071.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us.split
  %.2.us = phi i32 [ %i.bf, %bb.g ], [ %.071.us, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count86 = zext nneg i32 %i.e to i64  ; 2 uses
  br i1 %.not69, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.j
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.j ], [ 0, %.lr.ph.split ] ; 2 uses
  %.071.us72 = phi i32 [ %.1.us74, %bb.j ], [ 2, %.lr.ph.split ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv83
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.split.us
  %i.bj = load double, ptr %i.j, align 8, !tbaa !133
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !87
end_hunk_0
