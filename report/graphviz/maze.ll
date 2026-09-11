Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/maze?download=true
inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mkMaze:bb.a
bb.ap:                                            ; preds = %.lr.ph71.i.i
  %i.kt = or i32 %i.kr, 8
  store i32 %i.kt, ptr %i.kq, align 8, !tbaa !87
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !108 ; 2 uses
  %.not62.i.i = icmp eq ptr %i.kw, null
  br i1 %.not62.i.i, label %.critedge.i.i, label %.lr.ph71.i.i, !llvm.loop !60

bb.aq:                                            ; preds = %bb.an
  %i.kx = load i32, ptr %i.kf, align 8, !tbaa !87
  %i.ky = or i32 %i.kx, 8
  store i32 %i.ky, ptr %i.kf, align 8, !tbaa !87
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 64
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !40
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !108 ; 2 uses
  %.not6068.i.i = icmp eq ptr %i.lc, null
  br i1 %.not6068.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.ar
  %i.ld = phi ptr [ %i.lm, %bb.ar ], [ %i.lc, %bb.aq ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !107 ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !87 ; 2 uses
  %i.lh = and i32 %i.lg, 1
  %.not61.i.i = icmp eq i32 %i.lh, 0
  br i1 %.not61.i.i, label %bb.ar, label %.critedge.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.li = or i32 %i.lg, 8
  store i32 %i.li, ptr %i.lf, align 8, !tbaa !87
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !40
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !108 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.lm, null
  br i1 %.not60.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %bb.ar, %.lr.ph.i.i, %bb.ap, %.lr.ph71.i.i, %bb.aq, %bb.ao, %bb.am
  %i.ln = add nuw i64 %.04973.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ln, %i.jw
  br i1 %exitcond.not.i.i, label %.loopexit67.i.i, label %bb.am, !llvm.loop !62

.loopexit67.i.i:                                  ; preds = %.critedge.i.i, %.preheader66.i.i, %.lr.ph208.i
  %i.lo = load double, ptr %i.jm, align 8, !tbaa !95
  %i.lp = load double, ptr %i.jl, align 8, !tbaa !110
  %i.lq = fsub double %i.lo, %i.lp
  %i.lr = fadd double %i.lq, -3.000000e+00
  %i.ls = fmul double %i.lr, 5.000000e-01
  %i.lt = fcmp olt double %i.ls, 2.000000e+00
  br i1 %i.lt, label %.preheader.i.i, label %markSmall.exit.i

.preheader.i.i:                                   ; preds = %.loopexit67.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jk, i64 56
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !94 ; 2 uses
  %.not84.i.i = icmp eq i64 %i.lv, 0
  br i1 %.not84.i.i, label %markSmall.exit.i, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %.preheader.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !40
  br label %bb.as

bb.as:                                            ; preds = %.critedge4.i.i, %.lr.ph82.i.i
  %.081.i.i = phi i64 [ 0, %.lr.ph82.i.i ], [ %i.no, %.critedge4.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.081.i.i
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !108 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 60
  %i.mb = load i8, ptr %i.ma, align 4, !tbaa !18, !range !19, !noundef !20
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %.critedge4.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !107 ; 4 uses
  %i.mf = icmp eq ptr %i.me, %i.jk
  br i1 %i.mf, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !107 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !87
  %i.mj = or i32 %i.mi, 16
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !87
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !40
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !108 ; 2 uses
  %.not5878.i.i = icmp eq ptr %i.mn, null
  br i1 %.not5878.i.i, label %.critedge4.i.i, label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %bb.au, %bb.av
  %i.mo = phi ptr [ %i.mx, %bb.av ], [ %i.mn, %bb.au ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !107 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !87 ; 2 uses
  %i.ms = and i32 %i.mr, 1
  %.not59.i.i = icmp eq i32 %i.ms, 0
  br i1 %.not59.i.i, label %bb.av, label %.critedge4.i.i

bb.av:                                            ; preds = %.lr.ph79.i.i
  %i.mt = or i32 %i.mr, 16
  store i32 %i.mt, ptr %i.mq, align 8, !tbaa !87
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !40
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !108 ; 2 uses
  %.not58.i.i = icmp eq ptr %i.mx, null
  br i1 %.not58.i.i, label %.critedge4.i.i, label %.lr.ph79.i.i, !llvm.loop !63

bb.aw:                                            ; preds = %bb.at
  %i.my = load i32, ptr %i.me, align 8, !tbaa !87
  %i.mz = or i32 %i.my, 16
  store i32 %i.mz, ptr %i.me, align 8, !tbaa !87
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !40
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !108 ; 2 uses
  %.not75.i.i = icmp eq ptr %i.nd, null
  br i1 %.not75.i.i, label %.critedge4.i.i, label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %bb.aw, %bb.ax
  %i.ne = phi ptr [ %i.nn, %bb.ax ], [ %i.nd, %bb.aw ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !107 ; 3 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !87 ; 2 uses
  %i.ni = and i32 %i.nh, 1
  %.not57.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not57.i.i, label %bb.ax, label %.critedge4.i.i

bb.ax:                                            ; preds = %.lr.ph76.i.i
  %i.nj = or i32 %i.nh, 16
  store i32 %i.nj, ptr %i.ng, align 8, !tbaa !87
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !40
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !108 ; 2 uses
  %.not.i176.i = icmp eq ptr %i.nn, null
  br i1 %.not.i176.i, label %.critedge4.i.i, label %.lr.ph76.i.i, !llvm.loop !64

.critedge4.i.i:                                   ; preds = %bb.ax, %.lr.ph76.i.i, %bb.av, %.lr.ph79.i.i, %bb.aw, %bb.au, %bb.as
  %i.no = add nuw i64 %.081.i.i, 1                ; 2 uses
  %exitcond87.not.i.i = icmp eq i64 %i.no, %i.lv
  br i1 %exitcond87.not.i.i, label %markSmall.exit.i, label %bb.as, !llvm.loop !65

markSmall.exit.i:                                 ; preds = %.critedge4.i.i, %.preheader.i.i, %.loopexit67.i.i
  %i.np = add nuw i64 %.0147207.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.np, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph208.i, !llvm.loop !66

._crit_edge212.i:                                 ; preds = %createSEdges.exit.i, %._crit_edge.i
  %i.nq = call i32 @dtclose(ptr noundef %i.bx) #18 ; 0 uses
  %i.nr = call i32 @dtclose(ptr noundef %i.bz) #18 ; 0 uses
  call void @free(ptr noundef %i.co) #18
  %i.ns = load i32, ptr %i.bv, align 8, !tbaa !116
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %.lr.ph.i177.i, label %mkMazeGraph.exit

.lr.ph.i177.i:                                    ; preds = %._crit_edge212.i, %bb.bb
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bb ], [ 0, %._crit_edge212.i ] ; 4 uses
  %i.nu = load ptr, ptr %i.jb, align 8, !tbaa !12
  %i.nv = getelementptr inbounds nuw [64 x i8], ptr %i.nu, i64 %indvars.iv.i.i ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !107
  %.not.i178.i = icmp eq ptr %i.nx, null
  br i1 %.not.i178.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i177.i
  %i.ny = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.nz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.oa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ny, ptr noundef nonnull @.str.13, i32 noundef %i.nz) #16 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i177.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !107
  %.not8.i.i = icmp eq ptr %i.oc, null
  br i1 %.not8.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.oe = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.of = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.od, ptr noundef nonnull @.str.14, i32 noundef %i.oe) #16 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.og = load i32, ptr %i.bv, align 8, !tbaa !116
  %i.oh = sext i32 %i.og to i64
  %i.oi = icmp slt i64 %indvars.iv.next.i.i, %i.oh
  br i1 %i.oi, label %.lr.ph.i177.i, label %mkMazeGraph.exit, !llvm.loop !67

.lr.ph211.i:                                      ; preds = %._crit_edge.i, %createSEdges.exit.i
  %.0209.i = phi i64 [ %i.ro, %createSEdges.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [104 x i8], ptr %i.bs, i64 %.0209.i ; 17 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 72
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 88
  %i.ol = load <2 x double>, ptr %i.ok, align 8, !tbaa !21
  %i.om = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !21
  %i.on = fsub <2 x double> %i.om, %i.ol          ; 4 uses
  %8 = extractelement <2 x double> %i.on, i64 0   ; 3 uses
  %9 = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = insertelement <2 x double> %i.on, double -3.000000e+00, i64 1
  %11 = fadd <2 x double> %9, %10
  %12 = fmul <2 x double> %11, splat (double 5.000000e-01) ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fadd double %13, 5.000000e+02             ; 2 uses
  %i.oo = extractelement <2 x double> %12, i64 1
  %15 = fcmp olt double %i.oo, 2.000000e+00
  br i1 %15, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.lr.ph211.i
  %i.op = load i32, ptr %i.oj, align 8, !tbaa !87
  %i.oq = and i32 %i.op, 8
  %.not.i182.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i182.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph211.i
  %.058.i.i = phi double [ %8, %bb.bc ], [ 1.638400e+04, %bb.bd ], [ %8, %.lr.ph211.i ]
  %.0.i179.i = phi double [ %14, %bb.bc ], [ 1.638400e+04, %bb.bd ], [ %14, %.lr.ph211.i ] ; 2 uses
  %i.or = fadd double %8, -3.000000e+00
  %i.os = fmul double %i.or, 5.000000e-01
  %i.ot = fcmp olt double %i.os, 2.000000e+00
  %16 = extractelement <2 x double> %i.on, i64 1  ; 2 uses
  br i1 %i.ot, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ou = load i32, ptr %i.oj, align 8, !tbaa !87
  %i.ov = and i32 %i.ou, 16
  %.not71.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not71.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.057.i.i = phi double [ %16, %bb.bf ], [ 1.638400e+04, %bb.bg ], [ %16, %bb.be ]
  %.1.i.i = phi double [ %.0.i179.i, %bb.bf ], [ 1.638400e+04, %bb.bg ], [ %.0.i179.i, %bb.be ] ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oj, i64 64 ; 6 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !40 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !108 ; 2 uses
  %.not72.i.i = icmp eq ptr %i.oz, null
  br i1 %.not72.i.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !108 ; 2 uses
  %.not73.i.i = icmp eq ptr %i.pb, null
  br i1 %.not73.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pc = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.oz, ptr noundef nonnull %i.pb, double noundef %.1.i.i) #18
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !28 ; 2 uses
  %i.pg = add nsw i32 %i.pf, 1
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !28
  %i.ph = sext i32 %i.pf to i64
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.ph
  store ptr %i.pc, ptr %i.pi, align 8, !tbaa !29
  %.pre.i.i = load ptr, ptr %i.ow, align 8, !tbaa !40
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.pj = phi ptr [ %.pre.i.i, %bb.bj ], [ %i.ox, %bb.bi ], [ %i.ox, %bb.bh ] ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !108 ; 2 uses
  %.not74.i.i = icmp eq ptr %i.pl, null
  br i1 %.not74.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pm = load ptr, ptr %i.pj, align 8, !tbaa !108 ; 2 uses
  %.not75.i180.i = icmp eq ptr %i.pm, null
  br i1 %.not75.i180.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pn = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.pl, ptr noundef nonnull %i.pm, double noundef %.1.i.i) #18
  %i.po = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !28 ; 2 uses
  %i.pr = add nsw i32 %i.pq, 1
  store i32 %i.pr, ptr %i.pp, align 4, !tbaa !28
  %i.ps = sext i32 %i.pq to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.ps
  store ptr %i.pn, ptr %i.pt, align 8, !tbaa !29
  %.pre84.i.i = load ptr, ptr %i.ow, align 8, !tbaa !40
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.pu = phi ptr [ %.pre84.i.i, %bb.bm ], [ %i.pj, %bb.bl ], [ %i.pj, %bb.bk ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !108 ; 2 uses
  %.not76.i.i = icmp eq ptr %i.pw, null
  br i1 %.not76.i.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !108 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.py, null
  br i1 %.not77.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pz = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.pw, ptr noundef nonnull %i.py, double noundef %.1.i.i) #18
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28 ; 2 uses
  %i.qd = add nsw i32 %i.qc, 1
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !28
  %i.qe = sext i32 %i.qc to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.qe
  store ptr %i.pz, ptr %i.qf, align 8, !tbaa !29
  %.pre85.i.i = load ptr, ptr %i.ow, align 8, !tbaa !40
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.qg = phi ptr [ %.pre85.i.i, %bb.bp ], [ %i.pu, %bb.bo ], [ %i.pu, %bb.bn ] ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !108 ; 2 uses
  %.not78.i.i = icmp eq ptr %i.qi, null
  br i1 %.not78.i.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qj = load ptr, ptr %i.qg, align 8, !tbaa !108 ; 2 uses
  %.not79.i.i = icmp eq ptr %i.qj, null
  br i1 %.not79.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qk = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.qj, double noundef %.1.i.i) #18
  %i.ql = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !28 ; 2 uses
  %i.qo = add nsw i32 %i.qn, 1
  store i32 %i.qo, ptr %i.qm, align 4, !tbaa !28
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qp
  store ptr %i.qk, ptr %i.qq, align 8, !tbaa !29
  %.pre86.i.i = load ptr, ptr %i.ow, align 8, !tbaa !40
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.qr = phi ptr [ %.pre86.i.i, %bb.bs ], [ %i.qg, %bb.br ], [ %i.qg, %bb.bq ] ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !108 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.qt, null
  br i1 %.not80.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !108 ; 2 uses
  %.not81.i.i = icmp eq ptr %i.qv, null
  br i1 %.not81.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qw = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.qt, ptr noundef nonnull %i.qv, double noundef %.057.i.i) #18
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !28 ; 2 uses
  %i.ra = add nsw i32 %i.qz, 1
  store i32 %i.ra, ptr %i.qy, align 4, !tbaa !28
  %i.rb = sext i32 %i.qz to i64
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %i.rb
  store ptr %i.qw, ptr %i.rc, align 8, !tbaa !29
  %.pre87.i.i = load ptr, ptr %i.ow, align 8, !tbaa !40
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.rd = phi ptr [ %.pre87.i.i, %bb.bv ], [ %i.qr, %bb.bu ], [ %i.qr, %bb.bt ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !108 ; 2 uses
  %.not82.i.i = icmp eq ptr %i.rf, null
  br i1 %.not82.i.i, label %createSEdges.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !108 ; 2 uses
  %.not83.i181.i = icmp eq ptr %i.rg, null
  br i1 %.not83.i181.i, label %createSEdges.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rh = call ptr @createSEdge(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.rg, double noundef %.058.i.i) #18
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !28 ; 2 uses
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !28
  %i.rm = sext i32 %i.rk to i64
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rm
  store ptr %i.rh, ptr %i.rn, align 8, !tbaa !29
  br label %createSEdges.exit.i

createSEdges.exit.i:                              ; preds = %bb.by, %bb.bx, %bb.bw
  %i.ro = add nuw i64 %.0209.i, 1                 ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ro, %i.bd
  br i1 %exitcond73.not, label %._crit_edge212.i, label %.lr.ph211.i, !llvm.loop !68

mkMazeGraph.exit:                                 ; preds = %bb.bb, %._crit_edge212.i
  call void @gsave(ptr noundef nonnull %i.bv) #18
  %i.rp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bv, ptr %i.rp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret ptr %i.b

.lr.ph63:                                         ; preds = %.lr.ph63, %.lr.ph63.preheader.new
  %.062 = phi i64 [ 0, %.lr.ph63.preheader.new ], [ %i.rx, %.lr.ph63 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph63.preheader.new ], [ %niter.next.1, %.lr.ph63 ]
  %i.rq = getelementptr inbounds nuw [104 x i8], ptr %i.bi, i64 %.062
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 72
  %i.rs = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rr, ptr noundef nonnull align 8 dereferenceable(32) %i.rs, i64 32, i1 false), !tbaa.struct !92
  %i.rt = or disjoint i64 %.062, 1                ; 2 uses
  %i.ru = getelementptr inbounds nuw [104 x i8], ptr %i.bi, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  %i.rw = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.rt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rv, ptr noundef nonnull align 8 dereferenceable(32) %i.rw, i64 32, i1 false), !tbaa.struct !92
  %i.rx = add nuw nsw i64 %.062, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %.lr.ph63, !llvm.loop !69
}

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #4

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @partition(ptr noundef, i64 noundef, ptr noundef, ptr noundef byval(%struct.boxf) align 8) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @psdump(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !119 ; 2 uses
end_hunk_0
begin_hunk_1_@psdump:bb.a
  %.sroa.08.0.copyload = load double, ptr %i.x, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !21
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !21
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !21
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.7, double noundef %.sroa.08.0.copyload, double noundef %.sroa.6.0.copyload, double noundef %.sroa.8.0.copyload, double noundef %.sroa.10.0.copyload) #16 ; 0 uses
  %i.aa = add nuw i64 %.02326, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge30:                                    ; preds = %.lr.ph29, %._crit_edge
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !32
  %fwrite25 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 18, i64 1, ptr %i.ab) #19 ; 0 uses
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.9, double noundef %i.d, double noundef %i.j, double noundef %i.b, double noundef %i.g) #16 ; 0 uses
  %i.ae = load ptr, ptr @post, align 8, !tbaa !123
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ag = tail call i32 @fputs(ptr noundef %i.ae, ptr noundef %i.af) #19 ; 0 uses
  ret void

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %.027 = phi i64 [ %i.ak, %.lr.ph29 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.027 ; 4 uses
  %.sroa.08.0.copyload10 = load double, ptr %i.ah, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.6.0.copyload12 = load double, ptr %.sroa.6.0..sroa_idx11, align 8, !tbaa !21
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.8.0.copyload15 = load double, ptr %.sroa.8.0..sroa_idx14, align 8, !tbaa !21
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.10.0.copyload18 = load double, ptr %.sroa.10.0..sroa_idx17, align 8, !tbaa !21
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.9, double noundef %.sroa.08.0.copyload10, double noundef %.sroa.6.0.copyload12, double noundef %.sroa.8.0.copyload15, double noundef %.sroa.10.0.copyload18) #16 ; 0 uses
  %i.ak = add nuw i64 %.027, 1                    ; 2 uses
  %exitcond32.not = icmp eq i64 %i.ak, %4
  br i1 %exitcond32.not, label %._crit_edge30, label %.lr.ph29, !llvm.loop !118
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @freeMaze(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.d) #18
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.j) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  tail call void @freeSGraph(ptr noundef %i.l) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.o = tail call i32 @dtclose(ptr noundef %i.n) #18 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = tail call i32 @dtclose(ptr noundef %i.q) #18 ; 0 uses
  tail call void @free(ptr noundef nonnull %0) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.011
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.v) #18
  %i.w = add nuw i64 %.011, 1                     ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !36
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !124
}

declare void @freeSGraph(ptr noundef) local_unnamed_addr #4

declare i32 @dtclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @createSGraph(i64 noundef) local_unnamed_addr #4

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #4

declare hidden void @gv_list_detach_(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @initSEdges(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gsave(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @vcmpid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !43
  %i.b = load double, ptr %1, align 8, !tbaa !43
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = fcmp olt double %i.c, f0xBE7AD7F29ABCAF48
  %i.e = fcmp ogt double %i.c, f0x3E7AD7F29ABCAF48
  %..i = zext i1 %i.e to i32
  %.0.i = select i1 %i.d, i32 -1, i32 %..i        ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !41
  %i.j = fsub double %i.g, %i.i                   ; 2 uses
  %i.k = fcmp olt double %i.j, f0xBE7AD7F29ABCAF48
  %i.l = fcmp ogt double %i.j, f0x3E7AD7F29ABCAF48
  %..i9 = zext i1 %i.l to i32
  %.0.i10 = select i1 %i.k, i32 -1, i32 %..i9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.0.i10, %bb.b ], [ %.0.i, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @hcmpid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !41
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = fcmp olt double %i.e, f0xBE7AD7F29ABCAF48
  %i.g = fcmp ogt double %i.e, f0x3E7AD7F29ABCAF48
  %..i = zext i1 %i.g to i32
  %.0.i = select i1 %i.f, i32 -1, i32 %..i        ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load double, ptr %0, align 8, !tbaa !43
  %i.i = load double, ptr %1, align 8, !tbaa !43
  %i.j = fsub double %i.h, %i.i                   ; 2 uses
  %i.k = fcmp olt double %i.j, f0xBE7AD7F29ABCAF48
  %i.l = fcmp ogt double %i.j, f0x3E7AD7F29ABCAF48
  %..i9 = zext i1 %i.l to i32
  %.0.i10 = select i1 %i.k, i32 -1, i32 %..i9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.0.i10, %bb.b ], [ %.0.i, %bb.a ]
  ret i32 %.0
}

declare ptr @createSNode(ptr noundef) local_unnamed_addr #4

declare ptr @createSEdge(ptr noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5snode", !8, i64 0}
!10 = !{!"p1 _ZTS5sedge", !8, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !10, i64 24}
!12 = !{!11, !9, i64 16}
!13 = !{!"double", !4, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"p1 int", !8, i64 0}
!16 = !{!"_Bool", !4, i64 0}
!17 = !{!"snode", !5, i64 0, !5, i64 4, !9, i64 8, !10, i64 16, !14, i64 24, !14, i64 26, !4, i64 32, !15, i64 48, !5, i64 56, !16, i64 60}
!18 = !{!17, !16, i64 60}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!13, !13, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"any p2 pointer", !8, i64 0}
!24 = !{!"p2 _ZTS5snode", !23, i64 0}
!25 = !{!"pointf_s", !13, i64 0, !13, i64 8}
!26 = !{!"", !25, i64 0, !25, i64 16}
!27 = !{!"cell", !5, i64 0, !5, i64 4, !4, i64 8, !22, i64 56, !24, i64 64, !26, i64 72}
!28 = !{!27, !5, i64 4}
!29 = !{!10, !10, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTS4cell", !8, i64 0}
!34 = !{!"p1 _ZTS5dt_s_", !8, i64 0}
!35 = !{!"", !22, i64 0, !22, i64 8, !33, i64 16, !33, i64 24, !8, i64 32, !34, i64 40, !34, i64 48}
!36 = !{!35, !22, i64 8}
!37 = !{!35, !33, i64 24}
!38 = !{!"p1 omnipotent char", !8, i64 0}
!39 = !{!35, !33, i64 16}
!40 = !{!27, !24, i64 64}
!41 = !{!25, !13, i64 8}
!42 = !{!35, !8, i64 32}
!43 = !{!25, !13, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{!"sedge", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!47 = !{!46, !5, i64 12}
!48 = !{!46, !5, i64 16}
!49 = !{!46, !5, i64 8}
!50 = !{!46, !13, i64 0}
!51 = distinct !{!51, !30}
!52 = distinct !{null, null}
!53 = distinct !{!53, !30}
!54 = distinct !{null}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !22, i64 8}
!71 = !{!"p1 _ZTS7Agrec_s", !8, i64 0}
!72 = !{!"Agobj_s", !70, i64 0, !71, i64 16}
!73 = !{!72, !71, i64 16}
!74 = !{!"Agrec_s", !38, i64 0, !71, i64 8}
!75 = !{!"p1 _ZTS10shape_desc", !8, i64 0}
!76 = !{!"p1 _ZTS11textlabel_t", !8, i64 0}
!77 = !{!"p1 double", !8, i64 0}
!78 = !{!"p1 _ZTS8Agnode_s", !8, i64 0}
!79 = !{!"p2 _ZTS8Agedge_s", !23, i64 0}
!80 = !{!"elist", !79, i64 0, !22, i64 8}
!81 = !{!"p1 _ZTS8Agraph_s", !8, i64 0}
!82 = !{!"p1 _ZTS8Agedge_s", !8, i64 0}
!83 = !{!"Agnodeinfo_t", !74, i64 0, !75, i64 16, !8, i64 24, !25, i64 32, !13, i64 48, !13, i64 56, !26, i64 64, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !76, i64 136, !76, i64 144, !8, i64 152, !4, i64 160, !4, i64 161, !16, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !77, i64 176, !13, i64 184, !4, i64 192, !16, i64 193, !78, i64 200, !78, i64 208, !4, i64 216, !22, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !78, i64 240, !78, i64 248, !80, i64 256, !80, i64 272, !80, i64 288, !80, i64 304, !80, i64 320, !81, i64 336, !5, i64 344, !78, i64 352, !5, i64 360, !5, i64 364, !13, i64 368, !80, i64 376, !80, i64 392, !80, i64 408, !80, i64 424, !82, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!84 = !{!83, !13, i64 104}
!85 = !{!83, !13, i64 112}
!86 = !{!83, !13, i64 96}
!87 = !{!27, !5, i64 0}
!88 = !{!83, !8, i64 152}
!89 = !{!5, !5, i64 0}
!90 = !{!22, !22, i64 0}
!91 = !{!35, !22, i64 0}
!92 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21, i64 24, i64 8, !21}
!93 = !{!8, !8, i64 0}
!94 = !{!27, !22, i64 56}
!95 = !{!27, !13, i64 88}
!96 = !{!27, !13, i64 80}
!97 = !{!"p1 _ZTS9dtdisc_s_", !8, i64 0}
!98 = !{!"p1 _ZTS9dtlink_s_", !8, i64 0}
!99 = !{!"", !5, i64 0, !98, i64 8, !4, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!100 = !{!"dt_s_", !8, i64 0, !97, i64 8, !99, i64 16, !8, i64 56, !5, i64 64, !34, i64 72, !34, i64 80, !8, i64 88}
!101 = !{!100, !8, i64 0}
!102 = !{!17, !5, i64 56}
!103 = !{i64 0, i64 8, !21, i64 8, i64 8, !21}
!104 = !{!"dtlink_s_", !98, i64 0, !4, i64 8}
!105 = !{!"", !9, i64 0, !25, i64 8, !104, i64 24}
!106 = !{!105, !9, i64 0}
!107 = !{!33, !33, i64 0}
!108 = !{!9, !9, i64 0}
!109 = !{!27, !13, i64 96}
!110 = !{!27, !13, i64 72}
!111 = !{!105, !13, i64 8}
!112 = !{!"", !4, i64 0, !8, i64 32, !9, i64 40}
!113 = !{!112, !9, i64 40}
!114 = !{!4, !4, i64 0}
!115 = !{!105, !13, i64 16}
!116 = !{!11, !5, i64 0}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = !{!26, !13, i64 16}
!120 = !{!26, !13, i64 0}
!121 = !{!26, !13, i64 24}
!122 = !{!26, !13, i64 8}
!123 = !{!38, !38, i64 0}
!124 = distinct !{!124, !30}
!125 = !{!35, !34, i64 40}
!126 = !{!35, !34, i64 48}
end_hunk_1
