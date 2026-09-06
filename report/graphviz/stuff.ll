Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stuff?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@diffeq_model:bb.a
bb.a:
  %i.a = alloca [10 x double], align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %i.c) #23 ; 0 uses
  tail call void @start_timer() #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.preheader83.preheader, label %._crit_edge102

.preheader83.preheader:                           ; preds = %bb.c
  %wide.trip.count127 = zext nneg i32 %1 to i64   ; 3 uses
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.preheader, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next125, %._crit_edge ] ; 7 uses
  %.not116 = icmp eq i64 %indvars.iv124, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader83
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv124
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv124
  br label %bb.d

.preheader81.lr.ph:                               ; preds = %._crit_edge
  %i.n = load i16, ptr @Ndim, align 2, !tbaa !65  ; 2 uses
  %.not117 = icmp eq i16 %i.n, 0
  %.pre157 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 6 uses
  br i1 %.not117, label %.preheader80, label %.preheader81.lr.ph.split

.preheader81.lr.ph.split:                         ; preds = %.preheader81.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.pre157, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 9 uses
  %i.q = zext i16 %i.n to i64
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 9 uses
  %xtraiter = and i64 %wide.trip.count127, 7      ; 3 uses
  %i.s = icmp ult i32 %1, 8
  br i1 %i.s, label %.preheader81.epil.preheader, label %.preheader81.lr.ph.split.new

.preheader81.lr.ph.split.new:                     ; preds = %.preheader81.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count127, 2147483640
  br label %.preheader81

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !18 ; 2 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = fdiv double 1.000000e+00, %i.w           ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv124
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = tail call ptr @agedge(ptr noundef %0, ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not79 = icmp eq ptr %i.af, null
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !118
  %i.ak = fmul double %i.x, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv124
  store double %.0, ptr %i.an, align 8, !tbaa !18
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store double %.0, ptr %i.ap, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv124
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.f, %.preheader83
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader81.lr.ph, label %.preheader83, !llvm.loop !106

.preheader81:                                     ; preds = %.preheader81, %.preheader81.lr.ph.split.new
  %indvars.iv132 = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %indvars.iv.next133.7, %.preheader81 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %niter.next.7, %.preheader81 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.r, i1 false), !tbaa !18
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.r, i1 false), !tbaa !18
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader80.loopexit.unr-lcssa, label %.preheader81, !llvm.loop !107

.preheader80.loopexit.unr-lcssa:                  ; preds = %.preheader81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader80, label %.preheader81.epil.preheader

.preheader81.epil.preheader:                      ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.lr.ph.split
  %indvars.iv132.epil.init = phi i64 [ 0, %.preheader81.lr.ph.split ], [ %indvars.iv.next133.7, %.preheader80.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.preheader81.epil

.preheader81.epil:                                ; preds = %.preheader81.epil, %.preheader81.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.preheader81.epil.preheader ], [ %indvars.iv.next133.epil, %.preheader81.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader81.epil.preheader ], [ %epil.iter.next, %.preheader81.epil ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv132.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.r, i1 false), !tbaa !18
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader80, label %.preheader81.epil, !llvm.loop !108

.preheader80:                                     ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.epil, %.preheader81.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre157, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !54 ; 2 uses
  %.not7798 = icmp eq ptr %i.br, null
  br i1 %.not7798, label %._crit_edge102, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader80
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre157, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre157, i64 200
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre157, i64 224
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre157, i64 216
  %wide.trip.count147 = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge94.us
  %indvars.iv154 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next155, %._crit_edge94.us ] ; 6 uses
  %i.bw = phi ptr [ %i.br, %.preheader.lr.ph ], [ %i.ex, %._crit_edge94.us ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i16, ptr @Ndim, align 2
  %.fr = freeze i16 %i.by                         ; 6 uses
  %.not.i.us = icmp eq i16 %.fr, 0
  %wide.trip.count.i.us = zext i16 %.fr to i64    ; 5 uses
  br i1 %.not.i.us, label %._crit_edge94.us, label %.lr.ph93.split.us.us.preheader

.lr.ph93.split.us.us.preheader:                   ; preds = %.preheader.us
  %wide.trip.count142 = zext i16 %.fr to i64
  %i.bz = shl nuw nsw i64 %wide.trip.count.i.us, 3 ; 2 uses
  %xtraiter188 = and i64 %wide.trip.count.i.us, 1
  %i.ca = icmp eq i16 %.fr, 1
  %unroll_iter193 = and i64 %wide.trip.count.i.us, 65534
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod192 = trunc i16 %.fr to i1
  %min.iters.check = icmp eq i16 %.fr, 1
  %n.vec = and i64 %wide.trip.count.i.us, 65534   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.us
  br label %.lr.ph93.split.us.us

.lr.ph93.split.us.us:                             ; preds = %.lr.ph93.split.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv144 = phi i64 [ 0, %.lr.ph93.split.us.us.preheader ], [ %indvars.iv.next145, %..loopexit_crit_edge.us.us ] ; 7 uses
  %i.cb = shl nuw nsw i64 %indvars.iv144, 3
  %i.cc = add nuw i64 %i.cb, 8                    ; 2 uses
  %i.cd = icmp eq i64 %indvars.iv154, %indvars.iv144
  br i1 %i.cd, label %..loopexit_crit_edge.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %.lr.ph93.split.us.us
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 176
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 176
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !75 ; 3 uses
  br i1 %i.ca, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 5 uses
  %.016.i.us.us = phi double [ %i.da, %.lr.ph.i.us.us ], [ 0.000000e+00, %.lr.ph.i.us.us.preheader ]
  %niter194 = phi i64 [ %niter194.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.us
  %i.co = load double, ptr %i.cn, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.us.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18
  %i.cr = fsub double %i.co, %i.cq                ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us
  store double %i.cr, ptr %i.cs, align 16, !tbaa !18
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %.016.i.us.us)
  %indvars.iv.next.i.us.us = or disjoint i64 %indvars.iv.i.us.us, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.us.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next.i.us.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = fsub double %i.cv, %i.cx                ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us
  store double %i.cy, ptr %i.cz, align 8, !tbaa !18
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %i.ct) ; 3 uses
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %niter194.next.1 = add i64 %niter194, 2         ; 2 uses
  %niter194.ncmp.1 = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1, label %distvec.exit.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !1

distvec.exit.us.us.unr-lcssa:                     ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod190.not, label %distvec.exit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.preheader
  %indvars.iv.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %indvars.iv.next.i.us.us.1, %distvec.exit.us.us.unr-lcssa ] ; 3 uses
  %.016.i.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.us.preheader ], [ %i.da, %distvec.exit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.us.epil.init
  %i.dc = load double, ptr %i.db, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.us.us.epil.init
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  %i.df = fsub double %i.dc, %i.de                ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.epil.init
  store double %i.df, ptr %i.dg, align 8, !tbaa !18
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.df, double %i.df, double %.016.i.us.us.epil.init)
  br label %distvec.exit.us.us

distvec.exit.us.us:                               ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa = phi double [ %i.da, %distvec.exit.us.us.unr-lcssa ], [ %i.dh, %.lr.ph.i.us.us.epil.preheader ]
  %i.di = tail call double @sqrt(double noundef %.lcssa) #22 ; 2 uses
  %i.dj = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv154
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv144 ; 4 uses
  %i.dn = load ptr, ptr %i.bt, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv154
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv144 ; 4 uses
  %i.dr = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv154
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !67
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv144
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !16 ; 6 uses
  %i.dw = load ptr, ptr %i.bv, align 8, !tbaa !66
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv154
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !16 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %distvec.exit.us.us
  %scevgep = getelementptr i8, ptr %i.dv, i64 %i.bz ; 3 uses
  %scevgep164 = getelementptr i8, ptr %i.dy, i64 %i.bz ; 3 uses
  %scevgep165 = getelementptr i8, ptr %i.dl, i64 %i.cc ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.dp, i64 %i.cc ; 2 uses
  %bound0 = icmp ult ptr %i.dv, %scevgep164
  %bound1 = icmp ult ptr %i.dy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0167 = icmp ult ptr %i.dv, %scevgep165
  %bound1168 = icmp ult ptr %i.dm, %scevgep
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx = or i1 %found.conflict, %found.conflict169
  %bound0170 = icmp ult ptr %i.dv, %scevgep166
  %bound1171 = icmp ult ptr %i.dq, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx, %found.conflict172
  %bound0174 = icmp ult ptr %i.dy, %scevgep165
  %bound1175 = icmp ult ptr %i.dm, %scevgep164
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %i.dy, %scevgep166
  %bound1179 = icmp ult ptr %i.dq, %scevgep164
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dz = load double, ptr %i.dm, align 8, !tbaa !18, !alias.scope !119
  %broadcast.splatinsert184 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat185 = shufflevector <2 x double> %broadcast.splatinsert184, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = load double, ptr %i.dq, align 8, !tbaa !18, !alias.scope !120
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %i.ea, i64 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.di, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load = load <2 x double>, ptr %i.eb, align 16, !tbaa !18 ; 2 uses
  %i.ec = fmul <2 x double> %wide.load, %broadcast.splat183
  %i.ed = fdiv <2 x double> %i.ec, %broadcast.splat
  %i.ee = fsub <2 x double> %wide.load, %i.ed
  %i.ef = fmul <2 x double> %broadcast.splat185, %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index
  store <2 x double> %i.ef, ptr %i.eg, align 8, !tbaa !18, !alias.scope !121, !noalias !122
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %wide.load186 = load <2 x double>, ptr %i.eh, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %i.ei = fadd <2 x double> %i.ef, %wide.load186
  store <2 x double> %i.ei, ptr %i.eh, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %distvec.exit.us.us, %middle.block
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %distvec.exit.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph ], [ %indvars.iv139.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ek = load double, ptr %i.dm, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv139
  %i.em = load double, ptr %i.el, align 8, !tbaa !18 ; 2 uses
  %i.en = load double, ptr %i.dq, align 8, !tbaa !18
  %i.eo = fmul double %i.em, %i.en
  %i.ep = fdiv double %i.eo, %i.di
  %i.eq = fsub double %i.em, %i.ep
  %i.er = fmul double %i.ek, %i.eq                ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv139
  store double %i.er, ptr %i.es, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv139 ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !18
  %i.ev = fadd double %i.er, %i.eu
  store double %i.ev, ptr %i.et, align 8, !tbaa !18
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !115

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block, %.lr.ph93.split.us.us
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge94.us, label %.lr.ph93.split.us.us, !llvm.loop !116

._crit_edge94.us:                                 ; preds = %..loopexit_crit_edge.us.us, %.preheader.us
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next155
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54 ; 2 uses
  %.not77.us = icmp eq ptr %i.ex, null
  br i1 %.not77.us, label %._crit_edge102, label %.preheader.us, !llvm.loop !117

._crit_edge102:                                   ; preds = %._crit_edge94.us, %bb.c, %.preheader80
  %i.ey = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not78 = icmp eq i8 %i.ey, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge102
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fa = tail call double @elapsed_sec() #22
  %i.fb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.8, double noundef %i.fa) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @start_timer() local_unnamed_addr #6

declare ptr @agedge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare double @elapsed_sec() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @solve_model(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 7 uses
  %i.b = alloca [10 x double], align 16           ; 12 uses
end_hunk_0
