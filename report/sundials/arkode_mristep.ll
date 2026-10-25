Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mriStep_Predict:bb.a
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98   ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph82, label %.loopexit72

.lr.ph82:                                         ; preds = %.preheader71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154  ; 3 uses
  %.not = icmp eq ptr %i.n, null
  %i.o = icmp samesign ugt i32 %i.c, 1            ; 2 uses
  %i.p = zext nneg i32 %1 to i64                  ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155  ; 4 uses
  %.not66 = icmp eq ptr %i.r, null                ; 2 uses
  %i.s = add i32 %i.c, -1                         ; 3 uses
  %i.t = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s) ; 8 uses
  br i1 %.not, label %.lr.ph82.split.us, label %.lr.ph82.split

.lr.ph82.split.us:                                ; preds = %.lr.ph82
  br i1 %.not66, label %.loopexit72, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph82.split.us
  %i.u = add nuw i32 %i.t, 1                      ; 2 uses
  %wide.trip.count150 = zext nneg i32 %i.k to i64
  %wide.trip.count145 = zext i32 %i.u to i64      ; 2 uses
  %xtraiter188 = and i64 %wide.trip.count145, 1
  %i.v = icmp eq i32 %i.s, 0
  %unroll_iter191 = and i64 %wide.trip.count145, 4294967294
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod190 = trunc i32 %i.u to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv147 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next148, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next148 to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fdiv double 1.000000e+00, %i.x           ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv147 ; 3 uses
  br i1 %i.v, label %.epil.preheader187, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.f
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %bb.f ], [ 0, %.preheader.us ] ; 4 uses
  %niter192 = phi i64 [ %niter192.next.1, %bb.f ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv142
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.us.new
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !158
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv142
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !47
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !47
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.y, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.us.new
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next143
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.p
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !158
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next143
  %i.at = load double, ptr %i.as, align 8, !tbaa !47
  %i.au = zext nneg i32 %i.an to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !47
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.y, double %i.aw)
  store double %i.ax, ptr %i.av, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %niter192.next.1 = add i64 %niter192, 2         ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %..loopexit_crit_edge.us.unr-lcssa, label %.preheader.us.new

..loopexit_crit_edge.us.unr-lcssa:                ; preds = %bb.f
  br i1 %lcmp.mod189.not, label %..loopexit_crit_edge.us, label %.epil.preheader187

.epil.preheader187:                               ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv142.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next143.1, %..loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv142.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.g, label %..loopexit_crit_edge.us

bb.g:                                             ; preds = %.epil.preheader187
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.p
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv142.epil.init
  %i.bf = load double, ptr %i.be, align 8, !tbaa !47
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !47
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.y, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !47
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.epil.preheader187, %bb.g, %..loopexit_crit_edge.us.unr-lcssa
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit72, label %.preheader.us

.lr.ph82.split:                                   ; preds = %.lr.ph82
  br i1 %.not66, label %.lr.ph82.split.split.us, label %.lr.ph82.split.split

.lr.ph82.split.split.us:                          ; preds = %.lr.ph82.split
  br i1 %i.o, label %.preheader69.us.preheader, label %.loopexit72

.preheader69.us.preheader:                        ; preds = %.lr.ph82.split.split.us
  %wide.trip.count140 = zext nneg i32 %i.k to i64
  %wide.trip.count135 = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter182 = and i64 %wide.trip.count135, 1
  %i.bk = icmp eq i32 %i.t, 1
  %unroll_iter185 = and i64 %wide.trip.count135, 2147483646
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  %lcmp.mod184 = trunc i32 %i.t to i1
  br label %.preheader69.us

.preheader69.us:                                  ; preds = %.preheader69.us.preheader, %..loopexit70_crit_edge.us
  %indvars.iv137 = phi i64 [ 0, %.preheader69.us.preheader ], [ %indvars.iv.next138, %..loopexit70_crit_edge.us ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv.next138 to i32
  %i.bm = uitofp nneg i32 %i.bl to double
  %i.bn = fdiv double 1.000000e+00, %i.bm         ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv137 ; 3 uses
  br i1 %i.bk, label %.epil.preheader181, label %.preheader69.us.new

.preheader69.us.new:                              ; preds = %.preheader69.us, %bb.k
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.1, %bb.k ], [ 0, %.preheader69.us ] ; 4 uses
  %niter186 = phi i64 [ %niter186.next.1, %bb.k ], [ 0, %.preheader69.us ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv132
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader69.us.new
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.p
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !158
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv132
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !47
  %i.bx = zext nneg i32 %i.bq to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bx ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !47
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bn, double %i.bz)
  store double %i.ca, ptr %i.by, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader69.us.new
  %indvars.iv.next133 = or disjoint i64 %indvars.iv132, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next133
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !35 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.p
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !158
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next133
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !47
  %i.cj = zext nneg i32 %i.cc to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !47
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.bn, double %i.cl)
  store double %i.cm, ptr %i.ck, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %..loopexit70_crit_edge.us.unr-lcssa, label %.preheader69.us.new

..loopexit70_crit_edge.us.unr-lcssa:              ; preds = %bb.k
  br i1 %lcmp.mod183.not, label %..loopexit70_crit_edge.us, label %.epil.preheader181

.epil.preheader181:                               ; preds = %..loopexit70_crit_edge.us.unr-lcssa, %.preheader69.us
  %indvars.iv132.epil.init = phi i64 [ 0, %.preheader69.us ], [ %indvars.iv.next133.1, %..loopexit70_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv132.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, -1
  br i1 %i.cp, label %bb.l, label %..loopexit70_crit_edge.us

bb.l:                                             ; preds = %.epil.preheader181
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !158
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv132.epil.init
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !47
  %i.cv = zext nneg i32 %i.co to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !47
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.bn, double %i.cx)
  store double %i.cy, ptr %i.cw, align 8, !tbaa !47
  br label %..loopexit70_crit_edge.us

..loopexit70_crit_edge.us:                        ; preds = %.epil.preheader181, %bb.l, %..loopexit70_crit_edge.us.unr-lcssa
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %.loopexit72, label %.preheader69.us

.lr.ph82.split.split:                             ; preds = %.lr.ph82.split
  %wide.trip.count120 = zext nneg i32 %i.k to i64 ; 2 uses
  br i1 %i.o, label %.preheader69.us84.preheader, label %.preheader69.preheader

.preheader69.preheader:                           ; preds = %.lr.ph82.split.split
  %5 = load i32, ptr %2, align 4, !tbaa !35       ; 2 uses
  %6 = icmp sgt i32 %5, -1
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %7 ; 2 uses
  br label %.preheader69

.preheader69.us84.preheader:                      ; preds = %.lr.ph82.split.split
  %i.cz = add nuw i32 %i.t, 1                     ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.t to i64 ; 2 uses
  %wide.trip.count115 = zext i32 %i.cz to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count110, 1
  %i.da = icmp eq i32 %i.t, 1
  %unroll_iter = and i64 %wide.trip.count110, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod174 = trunc i32 %i.t to i1
  %xtraiter176 = and i64 %wide.trip.count115, 1
  %i.db = icmp eq i32 %i.s, 0
  %unroll_iter179 = and i64 %wide.trip.count115, 4294967294
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %lcmp.mod178 = trunc i32 %i.cz to i1
  br label %.preheader69.us84

.preheader69.us84:                                ; preds = %.preheader69.us84.preheader, %..loopexit_crit_edge.us93
  %indvars.iv117 = phi i64 [ 0, %.preheader69.us84.preheader ], [ %indvars.iv.next118, %..loopexit_crit_edge.us93 ] ; 3 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next118 to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fdiv double 1.000000e+00, %i.dd         ; 6 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv117 ; 3 uses
  br i1 %i.da, label %.epil.preheader, label %.preheader69.us84.new

.preheader69.us84.new:                            ; preds = %.preheader69.us84, %bb.p
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.1, %bb.p ], [ 0, %.preheader69.us84 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.p ], [ 0, %.preheader69.us84 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !35 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader69.us84.new
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.p
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !158
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv107
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !47
  %i.do = zext nneg i32 %i.dh to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !47
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.de, double %i.dq)
  store double %i.dr, ptr %i.dp, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader69.us84.new
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next108
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !35 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.p
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !158
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next108
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !47
  %i.ea = zext nneg i32 %i.dt to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !47
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.de, double %i.ec)
  store double %i.ed, ptr %i.eb, align 8, !tbaa !47
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
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv107.epil.init
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !35 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %bb.q, label %..loopexit70_crit_edge.us88

bb.q:                                             ; preds = %.epil.preheader
  %i.eh = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.p
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !158
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv107.epil.init
  %i.el = load double, ptr %i.ek, align 8, !tbaa !47
  %i.em = zext nneg i32 %i.ef to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.em ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !47
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.el, double %i.de, double %i.eo)
  store double %i.ep, ptr %i.en, align 8, !tbaa !47
  br label %..loopexit70_crit_edge.us88

..loopexit70_crit_edge.us88:                      ; preds = %.epil.preheader, %bb.q, %..loopexit70_crit_edge.us88.unr-lcssa
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv117 ; 3 uses
  br i1 %i.db, label %.epil.preheader175, label %..loopexit70_crit_edge.us88.new

..loopexit70_crit_edge.us88.new:                  ; preds = %..loopexit70_crit_edge.us88, %bb.u
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.1, %bb.u ], [ 0, %..loopexit70_crit_edge.us88 ] ; 4 uses
  %niter180 = phi i64 [ %niter180.next.1, %bb.u ], [ 0, %..loopexit70_crit_edge.us88 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv112
  %i.es = load i32, ptr %i.er, align 4, !tbaa !35 ; 2 uses
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %..loopexit70_crit_edge.us88.new
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !157
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.p
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv112
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !47
  %i.ez = zext nneg i32 %i.es to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !47
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.de, double %i.fb)
  store double %i.fc, ptr %i.fa, align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %..loopexit70_crit_edge.us88.new
  %indvars.iv.next113 = or disjoint i64 %indvars.iv112, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next113
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !35 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !157
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.p
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !158
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next113
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !47
  %i.fl = zext nneg i32 %i.fe to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fl ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !47
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.de, double %i.fn)
  store double %i.fo, ptr %i.fm, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %..loopexit_crit_edge.us93.unr-lcssa, label %..loopexit70_crit_edge.us88.new

..loopexit_crit_edge.us93.unr-lcssa:              ; preds = %bb.u
  br i1 %lcmp.mod177.not, label %..loopexit_crit_edge.us93, label %.epil.preheader175

.epil.preheader175:                               ; preds = %..loopexit_crit_edge.us93.unr-lcssa, %..loopexit70_crit_edge.us88
  %indvars.iv112.epil.init = phi i64 [ 0, %..loopexit70_crit_edge.us88 ], [ %indvars.iv.next113.1, %..loopexit_crit_edge.us93.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv112.epil.init
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !35 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  br i1 %i.fr, label %bb.v, label %..loopexit_crit_edge.us93

bb.v:                                             ; preds = %.epil.preheader175
  %i.fs = load ptr, ptr %i.eq, align 8, !tbaa !157
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.p
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !158
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv112.epil.init
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !47
  %i.fx = zext nneg i32 %i.fq to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !47
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.de, double %i.fz)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !47
  br label %..loopexit_crit_edge.us93

..loopexit_crit_edge.us93:                        ; preds = %.epil.preheader175, %bb.v, %..loopexit_crit_edge.us93.unr-lcssa
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.loopexit72, label %.preheader69.us84

.preheader69:                                     ; preds = %.preheader69.preheader, %..loopexit_crit_edge
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %..loopexit_crit_edge ], [ 0, %.preheader69.preheader ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 3 uses
  br i1 %6, label %bb.w, label %..loopexit_crit_edge

bb.w:                                             ; preds = %.preheader69
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv102
  %10 = trunc nuw nsw i64 %indvars.iv.next103 to i32
  %11 = uitofp nneg i32 %10 to double
  %12 = fdiv double 1.000000e+00, %11
  %13 = load ptr, ptr %9, align 8, !tbaa !157
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.p
  %15 = load ptr, ptr %14, align 8, !tbaa !158
  %16 = load double, ptr %15, align 8, !tbaa !47
  %i.gb = load double, ptr %8, align 8, !tbaa !47
  %i.gc = tail call double @llvm.fmuladd.f64(double %16, double %12, double %i.gb)
  store double %i.gc, ptr %8, align 8, !tbaa !47
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.w, %.preheader69
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count120
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
  %i.bl = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !47
  %i.bo = fmul double %i.bj, %i.bn
  %i.bp = sext i32 %.071.us72 to i64              ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bp
  store double %i.bo, ptr %i.bq, align 8, !tbaa !47
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bl
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !107
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bp
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !107
  %i.bv = add nsw i32 %.071.us72, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.split.us
  %.1.us74 = phi i32 [ %i.bv, %bb.i ], [ %.071.us72, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph.split ] ; 2 uses
  %.071 = phi i32 [ %.2, %bb.l ], [ 2, %.lr.ph.split ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !35 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.bz = load double, ptr %i.j, align 8, !tbaa !133
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.cb = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !47
  %i.ce = fmul double %i.bz, %i.cd
  %i.cf = sext i32 %.071 to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cf
  store double %i.ce, ptr %i.cg, align 8, !tbaa !47
  %i.ch = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !107
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cf
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !107
  %i.cl = add nsw i32 %.071, 1
  %i.cm = load double, ptr %i.j, align 8, !tbaa !133
  %i.cn = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !47
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = sext i32 %i.cl to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cr
  store double %i.cq, ptr %i.cs, align 8, !tbaa !47
  %i.ct = load ptr, ptr %i.aq, align 8, !tbaa !95
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !107
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cr
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !107
  %i.cx = add nsw i32 %.071, 2
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split, %bb.k
  %.2 = phi i32 [ %i.cx, %bb.k ], [ %.071, %.lr.ph.split.split ] ; 2 uses
end_hunk_0
