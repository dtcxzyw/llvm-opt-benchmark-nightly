Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/linsol_qr?download=true
inline.NumInlined: 1335
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN6casadi9casadi_qrIdEEvPKxPKT_PS3_S2_S6_S2_S6_S6_S2_S2_:bb.a
  %.02728.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.gy, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.02728.i
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !88 ; 2 uses
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gk, double %.029.i)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.02728.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !88 ; 2 uses
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double %i.go, double %i.gl)
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.02728.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !88 ; 2 uses
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gs, double %i.gp)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.02728.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !88 ; 2 uses
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double %i.gt) ; 3 uses
  %i.gy = add nuw nsw i64 %.02728.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !176

_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.029.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.gx, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa ]
  %.02728.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.gy, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.029.i.epil = phi double [ %i.hb, %.lr.ph.i.epil ], [ %.029.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02728.i.epil = phi i64 [ %i.hc, %.lr.ph.i.epil ], [ %.02728.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.02728.i.epil
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !88 ; 2 uses
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.ha, double %.029.i.epil) ; 2 uses
  %i.hc = add nuw nsw i64 %.02728.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter173
  br i1 %epil.iter.cmp.not, label %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit, label %.lr.ph.i.epil, !llvm.loop !177

_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit:      ; preds = %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge133
  %.0.lcssa.i = phi double [ 0.000000e+00, %._crit_edge133 ], [ %i.gx, %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit.loopexit.unr-lcssa ], [ %i.hb, %.lr.ph.i.epil ] ; 3 uses
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.gc, double %.0.lcssa.i)
  %i.he = tail call double @sqrt(double noundef %i.hd) #27 ; 4 uses
  %i.hf = fcmp une double %.0.lcssa.i, 0.000000e+00 ; 2 uses
  %i.hg = fcmp ole double %i.gc, 0.000000e+00     ; 2 uses
  %i.hh = uitofp i1 %i.hg to double
  %i.hi = fsub double %i.gc, %i.he
  %i.hj = fneg double %.0.lcssa.i
  %i.hk = fadd double %i.gc, %i.he
  %i.hl = fdiv double %i.hj, %i.hk
  %i.hm = select i1 %i.hg, double %i.hi, double %i.hl
  %i.hn = select i1 %i.hf, double %i.hm, double 1.000000e+00 ; 2 uses
  store double %i.hn, ptr %i.fz, align 8, !tbaa !88
  %i.ho = fmul nnan double %i.hh, 2.000000e+00
  %i.hp = fmul double %i.he, %i.hn
  %i.hq = fdiv double -1.000000e+00, %i.hp
  %i.hr = select i1 %i.hf, double %i.hq, double %i.ho
  store double %i.hr, ptr %i.ga, align 8, !tbaa !88
  %i.hs = getelementptr inbounds nuw i8, ptr %.1103.lcssa, i64 8
  store double %i.he, ptr %.1103.lcssa, align 8, !tbaa !88
  %exitcond144.not = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond144.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !178

._crit_edge138:                                   ; preds = %_ZN6casadi12casadi_houseIdEET_PS1_S2_x.exit, %.preheader
  ret void
}

declare noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17casadi_qr_colcombIdEEvPT_PKS1_PKxS6_S1_x(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.f, label %.lr.ph, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.06678 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.06877 = phi i64 [ %.169, %bb.c ], [ %5, %bb.a ] ; 3 uses
  %i.g = add nuw nsw i64 %.06678, 1               ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !93
  %i.j = getelementptr [8 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load double, ptr %i.k, align 8, !tbaa !88
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp olt double %i.m, %4
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i64 %.06877, -1
  %i.p = icmp eq i64 %.06877, 0
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.169 = phi i64 [ %i.o, %bb.b ], [ %.06877, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !179

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.2 = phi i64 [ %.06678, %bb.b ], [ %.169, %bb.c ] ; 2 uses
  %.not.i.not = icmp eq ptr %0, null
  br i1 %.not.i.not, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.q = shl nuw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.q, i1 false), !tbaa !88
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.a, %._crit_edge, %.lr.ph.preheader.i
  %or.cond.i108 = phi i1 [ true, %.lr.ph.preheader.i ], [ false, %._crit_edge ], [ false, %bb.a ]
  %.2107 = phi i64 [ %.2, %.lr.ph.preheader.i ], [ %.2, %._crit_edge ], [ %5, %bb.a ] ; 4 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %3, i64 %.2107
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.2107 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !93   ; 8 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !93   ; 3 uses
  %i.y = add nsw i64 %i.x, -1                     ; 2 uses
  %i.z = icmp slt i64 %i.v, %i.y
  br i1 %i.z, label %.lr.ph82.preheader, label %.preheader

.lr.ph82.preheader:                               ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.aa = add i64 %i.x, -2
  %i.ab = sub i64 %i.v, %i.x
  %i.ac = and i64 %i.ab, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph82.prol, label %.lr.ph82.prol.loopexit

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !88
  %i.af = fneg double %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.v
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aj
  store double %i.af, ptr %i.ak, align 8, !tbaa !88
  %i.al = add nsw i64 %i.v, 1
  br label %.lr.ph82.prol.loopexit

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader
  %.081.unr = phi i64 [ %i.v, %.lr.ph82.preheader ], [ %i.al, %.lr.ph82.prol ]
  %i.am = icmp eq i64 %i.aa, %i.v
  br i1 %i.am, label %.preheader, label %.lr.ph82

.preheader:                                       ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.an = icmp sgt i64 %.2107, 0
  br i1 %i.an, label %.lr.ph92, label %._crit_edge93

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.081 = phi i64 [ %i.bf, %.lr.ph82 ], [ %.081.unr, %.lr.ph82.prol.loopexit ] ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %.081
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !88
  %i.aq = fneg double %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.081
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93
  %i.at = getelementptr inbounds [8 x i8], ptr %3, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !93
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  store double %i.aq, ptr %i.av, align 8, !tbaa !88
  %i.aw = add nsw i64 %.081, 1                    ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !88
  %i.az = fneg double %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.aw
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !93
  %i.bc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !93
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bd
  store double %i.az, ptr %i.be, align 8, !tbaa !88
  %i.bf = add nsw i64 %.081, 2                    ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %i.bf, %i.y
  br i1 %exitcond94.not.1, label %.preheader, label %.lr.ph82, !llvm.loop !180

.loopexit:                                        ; preds = %bb.i, %.lr.ph92
  %i.bg = icmp sgt i64 %.167.in90, 1
  br i1 %i.bg, label %.lr.ph92, label %._crit_edge93, !llvm.loop !181

.lr.ph92:                                         ; preds = %.preheader, %.loopexit
  %i.bh = phi i64 [ %i.bj, %.loopexit ], [ %i.v, %.preheader ] ; 2 uses
  %.167.in90 = phi i64 [ %.16791, %.loopexit ], [ %.2107, %.preheader ] ; 2 uses
  %.16791 = add nsw i64 %.167.in90, -1            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.16791
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !93 ; 3 uses
  %.not.not84 = icmp sgt i64 %i.bh, %i.bj
  br i1 %.not.not84, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.lr.ph92
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.16791 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph88, %bb.i
  %.1.in85.a = phi i64 [ %i.bh, %.lr.ph88 ], [ %.186, %bb.i ] ; 2 uses
  %.186 = add nsw i64 %.1.in85.a, -1              ; 3 uses
  %i.bl = getelementptr [8 x i8], ptr %i.d, i64 %.1.in85.a
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !93 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %.16791
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.186
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !88 ; 3 uses
  br i1 %i.bn, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp olt double %i.bq, %4
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !93
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.bt, align 8, !tbaa !88
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !88
  %i.bv = fdiv double %i.bu, %i.bp
  store double %i.bv, ptr %i.bt, align 8, !tbaa !88
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !93
  %i.bx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !88
  %i.bz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bm
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !93
  %i.cb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ca ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !88
  %i.cd = fneg double %i.bp
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.by, double %i.cc)
  store double %i.ce, ptr %i.cb, align 8, !tbaa !88
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.not.not = icmp sgt i64 %.186, %i.bj
  br i1 %.not.not, label %bb.d, label %.loopexit, !llvm.loop !182

._crit_edge93:                                    ; preds = %.loopexit, %.preheader
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge93
  %xtraiter112 = and i64 %i.b, 3                  ; 3 uses
  %i.cf = icmp ult i64 %i.b, 4
  br i1 %i.cf, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.cr, %.lr.ph.i ]
  %.0710.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.cp, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cg = getelementptr i8, ptr %.0710.i, i64 8
  %i.ch = load double, ptr %.0710.i, align 8, !tbaa !88 ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %.012.i)
  %i.cj = getelementptr i8, ptr %.0710.i, i64 16
  %i.ck = load double, ptr %i.cg, align 8, !tbaa !88 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.ci)
  %i.cm = getelementptr i8, ptr %.0710.i, i64 24
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !88 ; 2 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.cl)
  %i.cp = getelementptr i8, ptr %.0710.i, i64 32  ; 2 uses
  %i.cq = load double, ptr %i.cm, align 8, !tbaa !88 ; 2 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.co) ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !183

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cr, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.cp, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi double [ %i.cu, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.cs, %.lr.ph.i.epil ], [ %.0710.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cs = getelementptr i8, ptr %.0710.i.epil, i64 8
  %i.ct = load double, ptr %.0710.i.epil, align 8, !tbaa !88 ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter112
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i.epil, !llvm.loop !184

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %.lr.ph.i.epil, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa
  %.lcssa = phi double [ %i.cr, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.unr-lcssa ], [ %i.cu, %.lr.ph.i.epil ]
  %i.cv = tail call double @sqrt(double noundef %.lcssa) #27
  %i.cw = fdiv double 1.000000e+00, %i.cv         ; 2 uses
  br i1 %or.cond.i108, label %.lr.ph.i74.preheader, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit

.lr.ph.i74.preheader:                             ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i74.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i74.preheader
  %n.vec = and i64 %i.b, 9223372036854775804      ; 4 uses
  %i.cx = shl i64 %n.vec, 3
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.cz ; 3 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !88
  %wide.load109 = load <2 x double>, ptr %i.da, align 8, !tbaa !88
  %i.db = fmul <2 x double> %broadcast.splat, %wide.load
  %i.dc = fmul <2 x double> %broadcast.splat, %wide.load109
  store <2 x double> %i.db, ptr %next.gep, align 8, !tbaa !88
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i74.preheader111

.lr.ph.i74.preheader111:                          ; preds = %.lr.ph.i74.preheader, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %n.vec, %middle.block ]
  %.057.i.ph = phi ptr [ %0, %.lr.ph.i74.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader111, %.lr.ph.i74
  %.08.i = phi i64 [ %i.dh, %.lr.ph.i74 ], [ %.08.i.ph, %.lr.ph.i74.preheader111 ]
  %.057.i = phi ptr [ %i.de, %.lr.ph.i74 ], [ %.057.i.ph, %.lr.ph.i74.preheader111 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.df = load double, ptr %.057.i, align 8, !tbaa !88
  %i.dg = fmul double %i.cw, %i.df
  store double %i.dg, ptr %.057.i, align 8, !tbaa !88
  %i.dh = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.dh, %i.b
  br i1 %exitcond.not.i75, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i74, !llvm.loop !186

_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit:         ; preds = %.lr.ph.i74, %middle.block, %._crit_edge93, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi8LinsolQr5solveEPvPKdPdxb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = zext i1 %5 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq ptr %i.e, %i.g
  %spec.select.i = select i1 %i.h, ptr null, ptr %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = icmp eq ptr %i.l, %i.n
  %spec.select.i8 = select i1 %i.o, ptr null, ptr %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.t = icmp eq ptr %i.q, %i.s
  %spec.select.i9 = select i1 %i.t, ptr null, ptr %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.y = icmp eq ptr %i.v, %i.x
  %spec.select.i10 = select i1 %i.y, ptr null, ptr %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = icmp eq ptr %i.aa, %i.ac
  %spec.select.i11 = select i1 %i.ad, ptr null, ptr %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87
  %i.ai = icmp eq ptr %i.af, %i.ah
  %spec.select.i12 = select i1 %i.ai, ptr null, ptr %i.af
  tail call void @_ZN6casadi15casadi_qr_solveIdEEvPT_xxPKxPKS1_S4_S6_S6_S4_S4_S2_(ptr noundef %3, i64 noundef %4, i64 noundef %i.a, ptr noundef %i.c, ptr noundef %spec.select.i, ptr noundef %i.j, ptr noundef %spec.select.i8, ptr noundef %spec.select.i9, ptr noundef %spec.select.i10, ptr noundef %spec.select.i11, ptr noundef %spec.select.i12)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi15casadi_qr_solveIdEEvPT_xxPKxPKS1_S4_S6_S6_S4_S4_S2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !93     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !93   ; 19 uses
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %i.e = icmp sgt i64 %i.c, 0                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 16 uses
  %i.j = icmp sgt i64 %i.a, 0
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93   ; 5 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.l ; 3 uses
  br i1 %.not, label %.lr.ph85.split.us, label %.lr.ph85.split

.lr.ph85.split.us:                                ; preds = %.lr.ph85
  %i.n = icmp sgt i64 %i.l, 0
  %i.o = shl nuw i64 %i.a, 3
  %xtraiter132 = and i64 %i.c, 3                  ; 3 uses
  %i.p = icmp ult i64 %i.c, 4
  %unroll_iter136 = and i64 %i.c, 9223372036854775804
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter132, 0
  %xtraiter146 = and i64 %i.c, 3                  ; 3 uses
  %i.q = icmp ult i64 %i.c, 4
  %unroll_iter150 = and i64 %i.c, 9223372036854775804
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod149 = icmp ne i64 %xtraiter146, 0
  br label %.preheader67.us

.preheader67.us:                                  ; preds = %.loopexit.us, %.lr.ph85.split.us
  %.05883.us = phi i64 [ 0, %.lr.ph85.split.us ], [ %i.fs, %.loopexit.us ]
  %.05981.us = phi ptr [ %0, %.lr.ph85.split.us ], [ %i.fr, %.loopexit.us ] ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN6casadi15casadi_qr_solveIdEEvPT_xxPKxPKS1_S4_S6_S6_S4_S4_S2_:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93
  %i.v = getelementptr inbounds [8 x i8], ptr %10, i64 %i.u
  store double %i.s, ptr %i.v, align 8, !tbaa !88
  %i.w = or disjoint i64 %.376.us, 1              ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93
  %i.ab = getelementptr inbounds [8 x i8], ptr %10, i64 %i.aa
  store double %i.y, ptr %i.ab, align 8, !tbaa !88
  %i.ac = or disjoint i64 %.376.us, 2             ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !93
  %i.ah = getelementptr inbounds [8 x i8], ptr %10, i64 %i.ag
  store double %i.ae, ptr %i.ah, align 8, !tbaa !88
  %i.ai = or disjoint i64 %.376.us, 3             ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ai
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %i.an = getelementptr inbounds [8 x i8], ptr %10, i64 %i.am
  store double %i.ak, ptr %i.an, align 8, !tbaa !88
  %i.ao = add nuw nsw i64 %.376.us, 4             ; 2 uses
  %niter137.next.3 = add nuw nsw i64 %niter137, 4 ; 2 uses
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %.lr.ph49.split.i.us.preheader.unr-lcssa, label %.lr.ph77.us, !llvm.loop !187

.lr.ph49.split.i.us.preheader.unr-lcssa:          ; preds = %.lr.ph77.us
  br i1 %lcmp.mod134.not, label %.lr.ph49.split.i.us.preheader, label %.lr.ph77.us.epil.preheader

.lr.ph77.us.epil.preheader:                       ; preds = %.lr.ph49.split.i.us.preheader.unr-lcssa, %.lr.ph77.us.preheader
  %.376.us.epil.init = phi i64 [ 0, %.lr.ph77.us.preheader ], [ %i.ao, %.lr.ph49.split.i.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %.lr.ph77.us.epil

.lr.ph77.us.epil:                                 ; preds = %.lr.ph77.us.epil, %.lr.ph77.us.epil.preheader
  %.376.us.epil = phi i64 [ %i.au, %.lr.ph77.us.epil ], [ %.376.us.epil.init, %.lr.ph77.us.epil.preheader ] ; 3 uses
  %epil.iter133 = phi i64 [ %epil.iter133.next, %.lr.ph77.us.epil ], [ 0, %.lr.ph77.us.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %.376.us.epil
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.376.us.epil
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93
  %i.at = getelementptr inbounds [8 x i8], ptr %10, i64 %i.as
  store double %i.aq, ptr %i.at, align 8, !tbaa !88
  %i.au = add nuw nsw i64 %.376.us.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %.lr.ph49.split.i.us.preheader, label %.lr.ph77.us.epil, !llvm.loop !188

.lr.ph49.split.i.us.preheader:                    ; preds = %.lr.ph77.us.epil, %.lr.ph49.split.i.us.preheader.unr-lcssa
  br label %.lr.ph49.split.i.us

.lr.ph49.split.i.us:                              ; preds = %.lr.ph49.split.i.us.preheader, %._crit_edge46.i.us
  %.03847.i.us = phi i64 [ %i.dv, %._crit_edge46.i.us ], [ 0, %.lr.ph49.split.i.us.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03847.i.us ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !93 ; 9 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !93 ; 5 uses
  %i.az = icmp slt i64 %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.i63.us.preheader, label %._crit_edge46.i.us

.lr.ph.i63.us.preheader:                          ; preds = %.lr.ph49.split.i.us
  %i.ba = sub i64 %i.ay, %i.aw                    ; 2 uses
  %i.bb = xor i64 %i.aw, -1
  %i.bc = add i64 %i.ay, %i.bb                    ; 2 uses
  %xtraiter138 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.i63.us.prol.loopexit, label %.lr.ph.i63.us.prol

.lr.ph.i63.us.prol:                               ; preds = %.lr.ph.i63.us.preheader, %.lr.ph.i63.us.prol
  %.041.i.us.prol = phi double [ %i.bj, %.lr.ph.i63.us.prol ], [ 0.000000e+00, %.lr.ph.i63.us.preheader ]
  %.03740.i.us.prol = phi i64 [ %i.bk, %.lr.ph.i63.us.prol ], [ %i.aw, %.lr.ph.i63.us.preheader ] ; 3 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph.i63.us.prol ], [ 0, %.lr.ph.i63.us.preheader ]
  %i.bd = getelementptr inbounds [8 x i8], ptr %4, i64 %.03740.i.us.prol
  %i.be = load double, ptr %i.bd, align 8, !tbaa !88
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.03740.i.us.prol
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !93
  %i.bh = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !88
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bi, double %.041.i.us.prol) ; 3 uses
  %i.bk = add nsw i64 %.03740.i.us.prol, 1        ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i63.us.prol.loopexit, label %.lr.ph.i63.us.prol, !llvm.loop !189

.lr.ph.i63.us.prol.loopexit:                      ; preds = %.lr.ph.i63.us.prol, %.lr.ph.i63.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.i63.us.preheader ], [ %i.bj, %.lr.ph.i63.us.prol ]
  %.041.i.us.unr = phi double [ 0.000000e+00, %.lr.ph.i63.us.preheader ], [ %i.bj, %.lr.ph.i63.us.prol ]
  %.03740.i.us.unr = phi i64 [ %i.aw, %.lr.ph.i63.us.preheader ], [ %i.bk, %.lr.ph.i63.us.prol ]
  %i.bl = icmp ult i64 %i.bc, 3
  br i1 %i.bl, label %.lr.ph45.i.us, label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.us.prol.loopexit, %.lr.ph.i63.us
  %.041.i.us = phi double [ %i.cq, %.lr.ph.i63.us ], [ %.041.i.us.unr, %.lr.ph.i63.us.prol.loopexit ]
  %.03740.i.us = phi i64 [ %i.cr, %.lr.ph.i63.us ], [ %.03740.i.us.unr, %.lr.ph.i63.us.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %4, i64 %.03740.i.us
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !88
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.03740.i.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !93
  %i.bq = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !88
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.br, double %.041.i.us)
  %i.bt = add nsw i64 %.03740.i.us, 1             ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !88
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bt
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !93
  %i.by = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !88
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bz, double %i.bs)
  %i.cb = add nsw i64 %.03740.i.us, 2             ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !88
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cb
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !93
  %i.cg = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !88
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ch, double %i.ca)
  %i.cj = add nsw i64 %.03740.i.us, 3             ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !88
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cj
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !93
  %i.co = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !88
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cp, double %i.ci) ; 2 uses
  %i.cr = add nsw i64 %.03740.i.us, 4             ; 2 uses
  %exitcond.not.i64.us.3 = icmp eq i64 %i.cr, %i.ay
  br i1 %exitcond.not.i64.us.3, label %.lr.ph45.i.us, label %.lr.ph.i63.us, !llvm.loop !190

.lr.ph45.i.us:                                    ; preds = %.lr.ph.i63.us, %.lr.ph.i63.us.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i63.us.prol.loopexit ], [ %i.cq, %.lr.ph.i63.us ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.03847.i.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !88
  %i.cu = fneg double %i.ct
  %i.cv = fmul double %.lcssa, %i.cu              ; 3 uses
  %xtraiter143 = and i64 %i.ba, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.prol.loopexit142, label %.prol.loopexit142.unr-lcssa

.prol.loopexit142.unr-lcssa:                      ; preds = %.lr.ph45.i.us
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aw
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !88
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !93
  %i.da = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !88
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cx, double %i.db)
  store double %i.dc, ptr %i.da, align 8, !tbaa !88
  %i.dd = add nsw i64 %i.aw, 1
  br label %.prol.loopexit142

.prol.loopexit142:                                ; preds = %.prol.loopexit142.unr-lcssa, %.lr.ph45.i.us
  %.143.i.us.unr = phi i64 [ %i.aw, %.lr.ph45.i.us ], [ %i.dd, %.prol.loopexit142.unr-lcssa ]
  %i.de = icmp eq i64 %i.bc, 0
  br i1 %i.de, label %._crit_edge46.i.us, label %.lr.ph45.i.us.new

.lr.ph45.i.us.new:                                ; preds = %.prol.loopexit142, %.lr.ph45.i.us.new
  %.143.i.us = phi i64 [ %i.du, %.lr.ph45.i.us.new ], [ %.143.i.us.unr, %.prol.loopexit142 ] ; 4 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %4, i64 %.143.i.us
  %i.dg = load double, ptr %i.df, align 8, !tbaa !88
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.143.i.us
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !93
  %i.dj = getelementptr inbounds [8 x i8], ptr %10, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !88
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.dg, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !88
  %i.dm = add nsw i64 %.143.i.us, 1               ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !88
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !93
  %i.dr = getelementptr inbounds [8 x i8], ptr %10, i64 %i.dq ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !88
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.do, double %i.ds)
  store double %i.dt, ptr %i.dr, align 8, !tbaa !88
  %i.du = add nsw i64 %.143.i.us, 2               ; 2 uses
  %exitcond53.not.i.us.1 = icmp eq i64 %i.du, %i.ay
  br i1 %exitcond53.not.i.us.1, label %._crit_edge46.i.us, label %.lr.ph45.i.us.new, !llvm.loop !191

._crit_edge46.i.us:                               ; preds = %.prol.loopexit142, %.lr.ph45.i.us.new, %.lr.ph49.split.i.us
  %i.dv = add nuw nsw i64 %.03847.i.us, 1         ; 2 uses
  %exitcond54.not.i.us = icmp eq i64 %i.dv, %i.c
  br i1 %exitcond54.not.i.us, label %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us, label %.lr.ph49.split.i.us, !llvm.loop !192

_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us: ; preds = %._crit_edge46.i.us, %.preheader.us
  br i1 %i.n, label %.lr.ph71.preheader.i.us, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us

.lr.ph71.preheader.i.us:                          ; preds = %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us
  %.pre74.i.us = load i64, ptr %i.m, align 8, !tbaa !93
  br label %.lr.ph71.i.us

.lr.ph71.i.us:                                    ; preds = %.loopexit.i.us, %.lr.ph71.preheader.i.us
  %i.dw = phi i64 [ %i.dy, %.loopexit.i.us ], [ %.pre74.i.us, %.lr.ph71.preheader.i.us ] ; 2 uses
  %.151.in69.i.us = phi i64 [ %.15170.i.us, %.loopexit.i.us ], [ %i.l, %.lr.ph71.preheader.i.us ] ; 2 uses
  %.15170.i.us = add nsw i64 %.151.in69.i.us, -1  ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.15170.i.us
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !93 ; 3 uses
  %.not55.not64.i.us = icmp sgt i64 %i.dw, %i.dy
  br i1 %.not55.not64.i.us, label %.lr.ph67.i.us, label %.loopexit.i.us

.lr.ph67.i.us:                                    ; preds = %.lr.ph71.i.us
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.15170.i.us ; 3 uses
  %.pre94 = load double, ptr %i.dz, align 8, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph67.i.us
  %i.ea = phi double [ %.pre94, %.lr.ph67.i.us ], [ %i.el, %bb.e ] ; 2 uses
  %.1.in65.i.us.a = phi i64 [ %i.dw, %.lr.ph67.i.us ], [ %.166.i.us, %bb.e ] ; 2 uses
  %.166.i.us = add nsw i64 %.1.in65.i.us.a, -1    ; 3 uses
  %i.eb = getelementptr [8 x i8], ptr %i.m, i64 %.1.in65.i.us.a
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !93 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %.15170.i.us
  %i.ee = getelementptr inbounds [8 x i8], ptr %6, i64 %.166.i.us
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !88 ; 2 uses
  br i1 %i.ed, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.eg = getelementptr inbounds [8 x i8], ptr %10, i64 %i.ec ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !88
  %i.ei = fneg double %i.ef
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ea, double %i.eh)
  store double %i.ej, ptr %i.eg, align 8, !tbaa !88
  %.pre = load double, ptr %i.dz, align 8, !tbaa !88
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ek = fdiv double %i.ea, %i.ef                ; 2 uses
  store double %i.ek, ptr %i.dz, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.el = phi double [ %i.ek, %bb.d ], [ %.pre, %bb.c ]
  %.not55.not.i.us = icmp sgt i64 %.166.i.us, %i.dy
  br i1 %.not55.not.i.us, label %bb.b, label %.loopexit.i.us, !llvm.loop !193

.loopexit.i.us:                                   ; preds = %bb.e, %.lr.ph71.i.us
  %i.em = icmp sgt i64 %.151.in69.i.us, 1
  br i1 %i.em, label %.lr.ph71.i.us, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us, !llvm.loop !194

_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us: ; preds = %.loopexit.i.us, %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us
  br i1 %i.e, label %.lr.ph80.us.preheader, label %.loopexit.us

.lr.ph80.us.preheader:                            ; preds = %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us
  br i1 %i.q, label %.lr.ph80.us.epil.preheader, label %.lr.ph80.us

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader, %.lr.ph80.us
  %.479.us = phi i64 [ %i.fk, %.lr.ph80.us ], [ 0, %.lr.ph80.us.preheader ] ; 6 uses
  %niter151 = phi i64 [ %niter151.next.3, %.lr.ph80.us ], [ 0, %.lr.ph80.us.preheader ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.479.us
  %i.eo = load double, ptr %i.en, align 8, !tbaa !88
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.479.us
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !93
  %i.er = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.eq
  store double %i.eo, ptr %i.er, align 8, !tbaa !88
  %i.es = or disjoint i64 %.479.us, 1             ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !88
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !93
  %i.ex = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.ew
  store double %i.eu, ptr %i.ex, align 8, !tbaa !88
  %i.ey = or disjoint i64 %.479.us, 2             ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !88
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ey
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !93
  %i.fd = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fc
  store double %i.fa, ptr %i.fd, align 8, !tbaa !88
  %i.fe = or disjoint i64 %.479.us, 3             ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !88
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fe
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !93
  %i.fj = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fi
  store double %i.fg, ptr %i.fj, align 8, !tbaa !88
  %i.fk = add nuw nsw i64 %.479.us, 4             ; 2 uses
  %niter151.next.3 = add nuw nsw i64 %niter151, 4 ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph80.us, !llvm.loop !195

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph80.us
  br i1 %lcmp.mod148.not, label %.loopexit.us, label %.lr.ph80.us.epil.preheader

.lr.ph80.us.epil.preheader:                       ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph80.us.preheader
  %.479.us.epil.init = phi i64 [ 0, %.lr.ph80.us.preheader ], [ %i.fk, %.loopexit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph80.us.epil

.lr.ph80.us.epil:                                 ; preds = %.lr.ph80.us.epil, %.lr.ph80.us.epil.preheader
  %.479.us.epil = phi i64 [ %i.fq, %.lr.ph80.us.epil ], [ %.479.us.epil.init, %.lr.ph80.us.epil.preheader ] ; 3 uses
  %epil.iter147 = phi i64 [ %epil.iter147.next, %.lr.ph80.us.epil ], [ 0, %.lr.ph80.us.epil.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.479.us.epil
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !88
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.479.us.epil
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !93
  %i.fp = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fo
  store double %i.fm, ptr %i.fp, align 8, !tbaa !88
  %i.fq = add nuw nsw i64 %.479.us.epil, 1
  %epil.iter147.next = add i64 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i64 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %.loopexit.us, label %.lr.ph80.us.epil, !llvm.loop !196

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph80.us.epil, %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us
  %i.fr = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.c
  %i.fs = add nuw nsw i64 %.05883.us, 1           ; 2 uses
  %exitcond93.not = icmp eq i64 %i.fs, %1
  br i1 %exitcond93.not, label %._crit_edge86, label %.preheader67.us, !llvm.loop !197

.preheader.us:                                    ; preds = %.lr.ph75.us.preheader, %.preheader67.us
  br i1 %i.e, label %.lr.ph77.us.preheader, label %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us

.lr.ph77.us.preheader:                            ; preds = %.preheader.us
  br i1 %i.p, label %.lr.ph77.us.epil.preheader, label %.lr.ph77.us

.lr.ph85.split:                                   ; preds = %.lr.ph85
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fu = icmp sgt i64 %i.l, 0
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.fv = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  %xtraiter126 = and i64 %i.c, 3                  ; 3 uses
  %i.fw = icmp ult i64 %i.c, 4
  %unroll_iter130 = and i64 %i.c, 9223372036854775804
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  br label %.preheader69

.preheader69:                                     ; preds = %.lr.ph85.split, %.loopexit68
  %.05883 = phi i64 [ 0, %.lr.ph85.split ], [ %i.ma, %.loopexit68 ]
  %.05981 = phi ptr [ %0, %.lr.ph85.split ], [ %i.lz, %.loopexit68 ] ; 11 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader69
  br i1 %i.fv, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.071 = phi i64 [ %i.gu, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.071
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !93
  %i.fz = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !88
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.071
  store double %i.ga, ptr %i.gb, align 8, !tbaa !88
  %i.gc = or disjoint i64 %.071, 1                ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !93
  %i.gf = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.gc
  store double %i.gg, ptr %i.gh, align 8, !tbaa !88
  %i.gi = or disjoint i64 %.071, 2                ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !93
  %i.gl = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.gi
  store double %i.gm, ptr %i.gn, align 8, !tbaa !88
  %i.go = or disjoint i64 %.071, 3                ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !93
  %i.gr = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !88
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.go
  store double %i.gs, ptr %i.gt, align 8, !tbaa !88
  %i.gu = add nuw nsw i64 %.071, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !198

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.071.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.071.epil = phi i64 [ %i.ha, %.lr.ph.epil ], [ %.071.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.071.epil
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !93
  %i.gx = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !88
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.071.epil
  store double %i.gy, ptr %i.gz, align 8, !tbaa !88
  %i.ha = add nuw nsw i64 %.071.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !199

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader69
  br i1 %i.fu, label %.lr.ph62.preheader.i, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !93
  br label %.lr.ph62.i

.loopexit57.i:                                    ; preds = %bb.i, %.lr.ph62.i
  %exitcond73.not.i = icmp eq i64 %i.hc, %i.l
  br i1 %exitcond73.not.i, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit, label %.lr.ph62.i, !llvm.loop !200

.lr.ph62.i:                                       ; preds = %.loopexit57.i, %.lr.ph62.preheader.i
  %i.hb = phi i64 [ %i.he, %.loopexit57.i ], [ %.pre.i, %.lr.ph62.preheader.i ] ; 2 uses
  %.05061.i = phi i64 [ %i.hc, %.loopexit57.i ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %i.hc = add nuw nsw i64 %.05061.i, 1            ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !93 ; 3 uses
  %i.hf = icmp slt i64 %i.hb, %i.he
  br i1 %i.hf, label %.lr.ph.i, label %.loopexit57.i

.lr.ph.i:                                         ; preds = %.lr.ph62.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.05061.i ; 2 uses
  %.promoted.i = load double, ptr %i.hg, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %storemerge84.i = phi double [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.i ] ; 2 uses
  %.060.i = phi i64 [ %i.hb, %.lr.ph.i ], [ %i.hr, %bb.i ] ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.060.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !93 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, %.05061.i
  %i.hk = getelementptr inbounds [8 x i8], ptr %6, i64 %.060.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !88 ; 2 uses
  br i1 %i.hj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hm = fdiv double %storemerge84.i, %i.hl
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_1
