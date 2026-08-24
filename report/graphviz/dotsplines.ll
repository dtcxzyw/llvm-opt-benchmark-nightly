Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dot_splines_:bb.a

bb.ap:                                            ; preds = %._crit_edge667
  %mul.ov.i = icmp slt i32 %.0259.lcssa, -360
  br i1 %mul.ov.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.2, i64 noundef %i.kx, i64 noundef 32) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.lb = call noalias ptr @calloc(i64 noundef %i.kx, i64 noundef 32) #25 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.as, label %gv_calloc.exit

bb.as:                                            ; preds = %bb.ar
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.le = shl nuw nsw i64 %i.kx, 5
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.3, i64 noundef %i.le) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.ar
  %i.lg = phi ptr [ %i.ky, %.thread.i ], [ %i.lb, %bb.ar ]
  %i.lh = getelementptr inbounds nuw i8, ptr %34, i64 104 ; 4 uses
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !117
  %i.li = sext i32 %.0255.lcssa to i64            ; 3 uses
  %.not.i361 = icmp eq i32 %.0255.lcssa, 0
  br i1 %.not.i361, label %.thread.i364, label %bb.at

.thread.i364:                                     ; preds = %gv_calloc.exit
  %i.lj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #25
  br label %gv_calloc.exit365

bb.at:                                            ; preds = %gv_calloc.exit
  %mul.ov.i363 = icmp slt i32 %.0255.lcssa, 0
  br i1 %mul.ov.i363, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.2, i64 noundef %i.li, i64 noundef 32) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.lm = call noalias ptr @calloc(i64 noundef %i.li, i64 noundef 32) #25 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.aw, label %gv_calloc.exit365

bb.aw:                                            ; preds = %bb.av
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.lp = shl nuw nsw i64 %i.li, 5
  %i.lq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.3, i64 noundef %i.lp) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

gv_calloc.exit365:                                ; preds = %.thread.i364, %bb.av
  %i.lr = phi ptr [ %i.lj, %.thread.i364 ], [ %i.lm, %bb.av ]
  store ptr %i.lr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ls = icmp eq i16 %i.n, 2                     ; 7 uses
  br i1 %i.ls, label %bb.ax, label %.loopexit585

bb.ax:                                            ; preds = %gv_calloc.exit365
  %i.lt = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 256
  %.0265672 = load ptr, ptr %i.lu, align 8, !tbaa !65 ; 2 uses
  %.not307673 = icmp eq ptr %.0265672, null
  br i1 %.not307673, label %.loopexit585, label %.lr.ph676

.lr.ph676:                                        ; preds = %bb.ax, %place_vnlabel.exit
  %.0265674 = phi ptr [ %.0265, %place_vnlabel.exit ], [ %.0265672, %bb.ax ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0265674, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !19 ; 7 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 216
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !66
  %i.lz = icmp eq i8 %i.ly, 1
  br i1 %i.lz, label %bb.ay, label %place_vnlabel.exit

bb.ay:                                            ; preds = %.lr.ph676
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 136
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !75
  %.not323 = icmp eq ptr %i.mb, null
  br i1 %.not323, label %place_vnlabel.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 264
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !76
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %place_vnlabel.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 272
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !77
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.0.in.i = phi ptr [ %i.mg, %bb.ba ], [ %i.ml, %bb.bb ]
  %.0.i366 = load ptr, ptr %.0.in.i, align 8, !tbaa !78 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i366, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !19 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 152
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !79
  %.not.i367 = icmp eq i8 %i.mk, 0
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 160
  br i1 %.not.i367, label %bb.bc, label %bb.bb, !llvm.loop !80

bb.bc:                                            ; preds = %bb.bb
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i366, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 120
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !68 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %.sroa.0.0.copyload.i368 = load double, ptr %i.mp, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 48
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !74
  %i.mq = call ptr @agraphof(ptr noundef nonnull %.0265674) #24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !19
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 132
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !81
  %i.mv = and i32 %i.mu, 1
  %.not12.i = icmp eq i32 %i.mv, 0
  %i.mw = select i1 %.not12.i, double %.sroa.0.0.copyload.i368, double %.sroa.4.0.copyload.i
  %i.mx = load ptr, ptr %i.lv, align 8, !tbaa !19 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load double, ptr %i.my, align 8, !tbaa !82
  %i.na = fmul double %i.mw, 5.000000e-01
  %i.nb = fadd double %i.mz, %i.na
  %i.nc = load ptr, ptr %i.mm, align 8, !tbaa !19
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 120
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !68 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  store double %i.nb, ptr %i.nf, align 8, !tbaa !83
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !85
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  store double %i.nh, ptr %i.ni, align 8, !tbaa !86
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 105
  store i8 1, ptr %i.nj, align 1, !tbaa !87
  br label %place_vnlabel.exit

place_vnlabel.exit:                               ; preds = %bb.bc, %bb.az, %.lr.ph676, %bb.ay
  %i.nk = phi ptr [ %i.mx, %bb.bc ], [ %i.lw, %bb.az ], [ %i.lw, %.lr.ph676 ], [ %i.lw, %bb.ay ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 240
  %.0265 = load ptr, ptr %i.nl, align 8, !tbaa !65 ; 2 uses
  %.not307 = icmp eq ptr %.0265, null
  br i1 %.not307, label %.loopexit585, label %.lr.ph676, !llvm.loop !119

.loopexit585:                                     ; preds = %place_vnlabel.exit, %bb.ax, %gv_calloc.exit365
  %i.nm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %.val350758 = load i64, ptr %i.nm, align 8, !tbaa !120
  %.not319759.not = icmp eq i64 %.val350758, 0
  br i1 %.not319759.not, label %.thread562, label %.lr.ph762

.lr.ph762:                                        ; preds = %.loopexit585
  %.sroa.gep464 = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %.sroa.gep465 = getelementptr inbounds nuw i8, ptr %33, i64 120
  %.sroa.gep468 = getelementptr inbounds i8, ptr %33, i64 -8
  %i.nn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %.sroa.gep546.i = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 5 uses
  %.sroa.gep547.i = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 3 uses
  %.sroa.gep550.i = getelementptr inbounds i8, ptr %13, i64 -8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.nu = getelementptr inbounds nuw i8, ptr %13, i64 64
  %.sroa.gep524.i = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 3 uses
  %.sroa.gep525.i = getelementptr inbounds nuw i8, ptr %14, i64 120
  %.sroa.gep527.i = getelementptr inbounds i8, ptr %14, i64 -8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.nx = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.nz = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.oc = icmp eq i16 %i.n, 10                    ; 5 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 6 uses
  %.sroa.8439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 52 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.oj = getelementptr inbounds nuw i8, ptr %34, i64 81
  %i.ok = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 22 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 18 uses
  %i.om = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.on = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 12 uses
  %i.os = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 3 uses
  %.sroa.28.0..sroa_idx487.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.951.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 4 uses
  %.sroa.gep516.i = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %.sroa.gep517.i = getelementptr inbounds nuw i8, ptr %15, i64 120
  %.sroa.gep520.i = getelementptr inbounds i8, ptr %15, i64 -8
  %i.ov = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %.sroa.gep503 = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  %.sroa.gep504 = getelementptr inbounds nuw i8, ptr %27, i64 120
  %.sroa.gep507 = getelementptr inbounds i8, ptr %27, i64 -8
  %i.ow = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.oy = getelementptr inbounds nuw i8, ptr %26, i64 152
  %i.oz = getelementptr inbounds nuw i8, ptr %26, i64 160
  %.sroa.16178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.sroa.16178.0..sroa_idx179.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %.sroa.16.0..sroa_idx151.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.sroa.254.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %.sroa.252.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %.sroa.250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %.sroa.248.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.ph = icmp eq i16 %i.n, 6
  %i.pi = zext i1 %i.ph to i32                    ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ps = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.qh = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.qv = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 4 uses
  %.sroa.10.0..sroa_idx.i97.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ro = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %.sroa.410.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ru = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %28, i64 52 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.sb = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %29, i64 52 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.se = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.sf = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %30, i64 72
  %i.sh = getelementptr inbounds nuw i8, ptr %30, i64 88
  %i.si = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.sk = getelementptr inbounds nuw i8, ptr %32, i64 152
  %i.sl = getelementptr inbounds nuw i8, ptr %32, i64 160
  %.sroa.5.0..sroa_idx1229 = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph762, %.loopexit581
  %i.sm = phi i64 [ 0, %.lr.ph762 ], [ %i.cxh, %.loopexit581 ] ; 4 uses
  %.0263760 = phi i32 [ 0, %.lr.ph762 ], [ %.1264.lcssa1038, %.loopexit581 ] ; 3 uses
  %i.sn = load ptr, ptr %35, align 8, !tbaa !104
  %i.so = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.sm) #24
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !78 ; 7 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.0.i369 = phi ptr [ %i.sq, %bb.bd ], [ %i.su, %bb.be ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 232
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !122 ; 2 uses
  %.not.i370 = icmp eq ptr %i.su, null
  br i1 %.not.i370, label %.preheader.i, label %bb.be, !llvm.loop !123

.preheader.i:                                     ; preds = %bb.be, %.preheader.i
  %.1.i = phi ptr [ %i.sy, %.preheader.i ], [ %.0.i369, %bb.be ] ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !19 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 160
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !124 ; 2 uses
  %.not8.i = icmp eq ptr %i.sy, null
  br i1 %.not8.i, label %getmainedge.exit, label %.preheader.i, !llvm.loop !125

getmainedge.exit:                                 ; preds = %.preheader.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 3 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !19 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 56
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !109, !range !15, !noundef !16
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %getmainedge.exit
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 104
  %i.tf = load i8, ptr %i.te, align 8, !tbaa !110, !range !15, !noundef !16
  %i.tg = trunc nuw i8 %i.tf to i1                ; 2 uses
  %spec.select = select i1 %i.tg, ptr %i.sq, ptr %.1.i
  %i.th = select i1 %i.tg, ptr %i.ta, ptr %i.sw
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %getmainedge.exit
  %i.ti = phi ptr [ %i.ta, %getmainedge.exit ], [ %i.th, %bb.bf ] ; 2 uses
  %.0273 = phi ptr [ %i.sq, %getmainedge.exit ], [ %spec.select, %bb.bf ] ; 8 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 220
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !101
  %i.tl = and i32 %i.tk, 32
  %.not308 = icmp eq i32 %i.tl, 0
  br i1 %.not308, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tm = getelementptr inbounds nuw i8, ptr %.0273, i64 16 ; 2 uses
  %i.tn = load ptr, ptr %i.p, align 8, !tbaa !126 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.tn, ptr noundef nonnull align 8 dereferenceable(240) %i.ti, i64 240, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %33, ptr noundef nonnull align 8 dereferenceable(64) %.0273, i64 64, i1 false), !tbaa.struct !138
  store ptr %i.tn, ptr %i.p, align 8, !tbaa !126
  %i.to = load i32, ptr %.0273, align 8
  %i.tp = and i32 %i.to, 3
  %i.tq = icmp eq i32 %i.tp, 2
  %i.tr = select i1 %i.tq, i64 56, i64 -8
  %i.ts = getelementptr inbounds i8, ptr %.0273, i64 %i.tr
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !106
  %i.tu = load i32, ptr %33, align 8
  %i.tv = and i32 %i.tu, 3                        ; 2 uses
  %i.tw = icmp eq i32 %i.tv, 3
  %.sroa.sel466 = select i1 %i.tw, ptr %.sroa.gep464, ptr %.sroa.gep465
  store ptr %i.tt, ptr %.sroa.sel466, align 8, !tbaa !106
  %i.tx = load i32, ptr %.0273, align 8
  %i.ty = and i32 %i.tx, 3
  %i.tz = icmp eq i32 %i.ty, 3
  %i.ua = select i1 %i.tz, i64 56, i64 120
  %i.ub = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !106
  %i.ud = icmp eq i32 %i.tv, 2
  %.sroa.sel469 = select i1 %i.ud, ptr %.sroa.gep464, ptr %.sroa.gep468
  store ptr %i.uc, ptr %.sroa.sel469, align 8, !tbaa !106
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.uf = load ptr, ptr %i.tm, align 8, !tbaa !19
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ue, ptr noundef nonnull align 8 dereferenceable(48) %i.ug, i64 48, i1 false), !tbaa.struct !140
end_hunk_0
begin_hunk_1_@dot_splines_:bb.a
  store ptr %i.boj, ptr %.sroa.sel196.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !106
  %i.bon = load ptr, ptr %i.bng, align 8, !tbaa !19
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.boo, i64 48, i1 false), !tbaa.struct !140
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.bop = icmp eq i32 %i.bnn, 3
  %i.boq = select i1 %i.bop, ptr %i.bmi, ptr %i.bmm
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 56
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !106
  %i.bot = load i32, ptr %13, align 8             ; 2 uses
  %i.bou = and i32 %i.bot, 3
  %i.bov = icmp eq i32 %i.bou, 3
  %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bov, ptr %.sroa.gep546.i, ptr %.sroa.gep547.i
  store ptr %i.bos, ptr %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nz, ptr noundef nonnull align 8 dereferenceable(64) %i.bmm, i64 64, i1 false), !tbaa.struct !138
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.bow = phi i32 [ %i.bot, %bb.gj ], [ %i.bok, %bb.gi ] ; 2 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %bb.gk
  %.0.i.i406 = phi ptr [ %i.bmi, %bb.gk ], [ %i.bpa, %bb.gl ] ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %.0.i.i406, i64 16
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !19
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 232
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !122 ; 2 uses
  %.not.i.i407 = icmp eq ptr %i.bpa, null
  br i1 %.not.i.i407, label %.preheader.i.i, label %bb.gl, !llvm.loop !123

.preheader.i.i:                                   ; preds = %bb.gl, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.bpe, %.preheader.i.i ], [ %.0.i.i406, %bb.gl ] ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !19
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 160
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !124 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bpe, null
  br i1 %.not8.i.i, label %getmainedge.exit.i, label %.preheader.i.i, !llvm.loop !125

getmainedge.exit.i:                               ; preds = %.preheader.i.i, %getmainedge.exit.i
  %.0278.i = phi ptr [ %i.bpi, %getmainedge.exit.i ], [ %.1.i.i, %.preheader.i.i ] ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %.0278.i, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !19
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 232
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !122 ; 2 uses
  %.not333.i = icmp eq ptr %i.bpi, null
  br i1 %.not333.i, label %bb.gm, label %getmainedge.exit.i, !llvm.loop !248

bb.gm:                                            ; preds = %getmainedge.exit.i
  %i.bpj = load i32, ptr %.0278.i, align 8
  %i.bpk = and i32 %i.bpj, 3
  %i.bpl = icmp eq i32 %i.bpk, 2
  %i.bpm = select i1 %i.bpl, i64 56, i64 -8
  %i.bpn = getelementptr inbounds i8, ptr %.0278.i, i64 %i.bpm
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !106
  %i.bpp = and i32 %i.bow, 3
  %i.bpq = icmp eq i32 %i.bpp, 2
  %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bpq, ptr %.sroa.gep546.i, ptr %.sroa.gep550.i
  store ptr %i.bpo, ptr %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !106
  store i8 0, ptr %i.oa, align 8, !tbaa !110
  store i8 1, ptr %i.ns, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.gn:                                            ; preds = %bb.gg
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bnh, i64 220
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !101
  %i.bpt = and i32 %i.bps, 32
  %.not331.i = icmp eq i32 %i.bpt, 0
  br i1 %.not331.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %10, ptr noundef nonnull align 8 dereferenceable(240) %i.bnh, i64 240, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bmi, i64 64, i1 false), !tbaa.struct !138
  store ptr %10, ptr %i.nn, align 8, !tbaa !126
  %i.bpu = load i32, ptr %i.bmi, align 8
  %i.bpv = and i32 %i.bpu, 3
  %i.bpw = icmp eq i32 %i.bpv, 2
  %i.bpx = select i1 %i.bpw, i64 56, i64 -8
  %i.bpy = getelementptr inbounds i8, ptr %i.bmi, i64 %i.bpx
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !106
  %i.bqa = load i32, ptr %13, align 8             ; 2 uses
  %i.bqb = and i32 %i.bqa, 3                      ; 2 uses
  %i.bqc = icmp eq i32 %i.bqb, 3
  %.sroa.sel548.i = select i1 %i.bqc, ptr %.sroa.gep546.i, ptr %.sroa.gep547.i
  store ptr %i.bpz, ptr %.sroa.sel548.i, align 8, !tbaa !106
  %i.bqd = load i32, ptr %i.bmi, align 8
  %i.bqe = and i32 %i.bqd, 3
  %i.bqf = icmp eq i32 %i.bqe, 3
  %i.bqg = select i1 %i.bqf, i64 56, i64 120
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bmi, i64 %i.bqg
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !106
  %i.bqj = icmp eq i32 %i.bqb, 2
  %.sroa.sel551.i = select i1 %i.bqj, ptr %.sroa.gep546.i, ptr %.sroa.gep550.i
  store ptr %i.bqi, ptr %.sroa.sel551.i, align 8, !tbaa !106
  %i.bqk = load ptr, ptr %i.bng, align 8, !tbaa !19
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.bql, i64 48, i1 false), !tbaa.struct !140
  %i.bqm = load ptr, ptr %i.bng, align 8, !tbaa !19
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, ptr noundef nonnull align 8 dereferenceable(48) %i.bqn, i64 48, i1 false), !tbaa.struct !140
  store i8 1, ptr %i.ns, align 8, !tbaa !79
  br label %.sink.split

.sink.split:                                      ; preds = %bb.gm, %bb.go
  %.ph = phi i32 [ %i.bqa, %bb.go ], [ %i.bow, %bb.gm ]
  store ptr %i.bmi, ptr %i.nt, align 8, !tbaa !124
  br label %bb.gp

bb.gp:                                            ; preds = %.sink.split, %bb.gn
  %i.bqo = phi i32 [ %i.bmj, %bb.gn ], [ %.ph, %.sink.split ] ; 3 uses
  %i.bqp = phi ptr [ %i.bnh, %bb.gn ], [ %10, %.sink.split ] ; 3 uses
  %.0267.i = phi ptr [ %i.bmi, %bb.gn ], [ %13, %.sink.split ] ; 12 uses
  br i1 %i.ls, label %bb.gq, label %makeLineEdge.exit.thread.i

bb.gq:                                            ; preds = %bb.gp
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 152
  %i.bqr = load i8, ptr %i.bqq, align 8, !tbaa !79
  %.not166.i.i = icmp eq i8 %i.bqr, 0
  br i1 %.not166.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.gq, %.lr.ph.i.i
  %i.bqs = phi ptr [ %i.bqw, %.lr.ph.i.i ], [ %i.bqp, %bb.gq ]
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 160
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !124 ; 3 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 16
  %i.bqw = load ptr, ptr %i.bqv, align 8, !tbaa !19 ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 152
  %i.bqy = load i8, ptr %i.bqx, align 8, !tbaa !79
  %.not.i387.i = icmp eq i8 %i.bqy, 0
  br i1 %.not.i387.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !249

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %.pre.i404 = load i32, ptr %i.bqu, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.gq
  %i.bqz = phi i32 [ %i.bqo, %bb.gq ], [ %.pre.i404, %._crit_edge.i.loopexit.i ]
  %.0141.lcssa165.i.i = phi ptr [ %.0267.i, %bb.gq ], [ %i.bqu, %._crit_edge.i.loopexit.i ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %i.bqp, %bb.gq ], [ %i.bqw, %._crit_edge.i.loopexit.i ] ; 5 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 16
  %i.brb = and i32 %i.bqz, 3                      ; 2 uses
  %i.brc = icmp eq i32 %i.brb, 2
  %.sroa.gep534.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 56 ; 2 uses
  %.sroa.gep535.i = getelementptr inbounds i8, ptr %.0141.lcssa165.i.i, i64 -8
  %.sroa.sel536.i = select i1 %i.brc, ptr %.sroa.gep534.i, ptr %.sroa.gep535.i
  %i.brd = load ptr, ptr %.sroa.sel536.i, align 8, !tbaa !106 ; 3 uses
  %i.bre = icmp eq i32 %i.brb, 3
  %.sroa.gep538.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 120
  %.sroa.sel539.i = select i1 %i.bre, ptr %.sroa.gep534.i, ptr %.sroa.gep538.i
  %i.brf = load ptr, ptr %.sroa.sel539.i, align 8, !tbaa !106 ; 3 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brd, i64 16
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !19 ; 3 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 360
  %i.brj = load i32, ptr %i.bri, align 8, !tbaa !111
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brf, i64 16
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !19 ; 3 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 360
  %i.brn = load i32, ptr %i.brm, align 8, !tbaa !111
  %i.bro = sub nsw i32 %i.brj, %i.brn
  %i.brp = call i32 @llvm.abs.i32(i32 %i.bro, i1 true)
  switch i32 %i.brp, label %bb.gs [
    i32 1, label %makeLineEdge.exit.thread.i
    i32 2, label %bb.gr
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i
  %i.brq = load ptr, ptr %i.ob, align 8, !tbaa !58
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 16
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !19
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 129
  %i.bru = load i8, ptr %i.brt, align 1, !tbaa !64
  %i.brv = and i8 %i.bru, 1
  %.not146.i.i = icmp eq i8 %i.brv, 0
  br i1 %.not146.i.i, label %bb.gs, label %makeLineEdge.exit.thread.i

bb.gs:                                            ; preds = %bb.gr, %._crit_edge.i.i
  %i.brw = and i32 %i.bqo, 3
  %i.brx = icmp eq i32 %i.brw, 3
  %.sroa.sel533.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.brx, i64 56, i64 120
  %.sroa.sel533.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0267.i, i64 %.sroa.sel533.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.bry = load ptr, ptr %.sroa.sel533.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !106
  %i.brz = icmp eq ptr %i.bry, %i.brf             ; 7 uses
  %..i.i = select i1 %i.brz, ptr %i.brd, ptr %i.brf
  %.202.i.i = select i1 %i.brz, ptr %i.brl, ptr %i.brh
  %.205.i.i = select i1 %i.brz, ptr %i.brh, ptr %i.brl
  %i.bsa = getelementptr inbounds nuw i8, ptr %.202.i.i, i64 32
  %.sroa.gep529 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 2 uses
  %.sroa.gep530 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 72 ; 2 uses
  %.203.i.i.sroa.sel = select i1 %i.brz, ptr %.sroa.gep529, ptr %.sroa.gep530
  %i.bsb = load <2 x double>, ptr %i.bsa, align 8
  %i.bsc = load double, ptr %.203.i.i.sroa.sel, align 8
  %.sroa.gep531 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 32 ; 2 uses
  %.sroa.gep532 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 80 ; 2 uses
  %.204.i.i.sroa.sel = select i1 %i.brz, ptr %.sroa.gep531, ptr %.sroa.gep532
  %i.bsd = load double, ptr %.204.i.i.sroa.sel, align 8
  %i.bse = insertelement <2 x double> poison, double %i.bsc, i64 0
  %i.bsf = insertelement <2 x double> %i.bse, double %i.bsd, i64 1
  %i.bsg = fadd <2 x double> %i.bsb, %i.bsf       ; 5 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %.205.i.i, i64 32
  %.206.i.i.sroa.sel = select i1 %i.brz, ptr %.sroa.gep530, ptr %.sroa.gep529
  %i.bsi = load <2 x double>, ptr %i.bsh, align 8
  %i.bsj = load double, ptr %.206.i.i.sroa.sel, align 8
  %.207.i.i.sroa.sel = select i1 %i.brz, ptr %.sroa.gep532, ptr %.sroa.gep531
  %i.bsk = load double, ptr %.207.i.i.sroa.sel, align 8
  %i.bsl = insertelement <2 x double> poison, double %i.bsj, i64 0
  %i.bsm = insertelement <2 x double> %i.bsl, double %i.bsk, i64 1
  %i.bsn = fadd <2 x double> %i.bsi, %i.bsm       ; 4 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 120
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !68 ; 3 uses
  %.not150.i.i = icmp eq ptr %i.bsp, null
  %i.bsq = extractelement <2 x double> %i.bsg, i64 0 ; 2 uses
  %i.bsr = extractelement <2 x double> %i.bsg, i64 1 ; 3 uses
  br i1 %.not150.i.i, label %makeLineEdge.exit.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsp, i64 40
  %.sroa.020.0.copyload.i.i = load double, ptr %i.bss, align 8, !tbaa !74 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bsp, i64 48
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !74 ; 2 uses
  %i.bst = call ptr @agraphof(ptr noundef nonnull %i.brd) #24
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 16
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !19
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 132
  %i.bsx = load i32, ptr %i.bsw, align 4, !tbaa !81
  %i.bsy = and i32 %i.bsx, 1
  %.not151.i.i = icmp eq i32 %i.bsy, 0            ; 2 uses
  %.sroa.5.0.copyload..sroa.020.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.5.0.copyload.i.i, double %.sroa.020.0.copyload.i.i
  %.sroa.020.0.copyload..sroa.5.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.020.0.copyload.i.i, double %.sroa.5.0.copyload.i.i
  %i.bsz = load ptr, ptr %i.bra, align 8, !tbaa !19
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 120
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !68 ; 2 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 72
  %.sroa.023.0.copyload.i.i = load double, ptr %i.btc, align 8, !tbaa !74 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.btb, i64 80
  %.sroa.11.0.copyload.i.i = load double, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !74 ; 2 uses
  %i.btd = insertelement <2 x double> %i.bsn, double %.sroa.023.0.copyload.i.i, i64 0
  %i.bte = fsub <2 x double> %i.btd, %i.bsg       ; 2 uses
  %36 = fsub double %.sroa.11.0.copyload.i.i, %i.bsr
  %foldExtExtBinop1174 = fsub <2 x double> %i.bsn, %i.bsg
  %i.btf = extractelement <2 x double> %foldExtExtBinop1174, i64 0
  %i.btg = fneg double %i.btf
  %i.bth = fmul double %36, %i.btg
  %i.bti = extractelement <2 x double> %i.bte, i64 0
  %i.btj = extractelement <2 x double> %i.bte, i64 1
  %i.btk = call double @llvm.fmuladd.f64(double %i.btj, double %i.bti, double %i.bth)
  %i.btl = fcmp ogt double %i.btk, 0.000000e+00   ; 2 uses
  %i.btm = fmul double %.sroa.020.0.copyload..sroa.5.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.btn = fmul double %.sroa.5.0.copyload..sroa.020.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.bto = fneg double %i.btm
  %.sroa.023.0.p.i.i = select i1 %i.btl, double %i.btm, double %i.bto
  %.sroa.023.0.i.i = fadd double %.sroa.023.0.copyload.i.i, %.sroa.023.0.p.i.i ; 2 uses
  %i.btp = fneg double %i.btn
  %.sroa.11.0.p.i.i = select i1 %i.btl, double %i.btp, double %i.btn
  %.sroa.11.0.i.i = fadd double %.sroa.11.0.copyload.i.i, %.sroa.11.0.p.i.i ; 2 uses
  store double %i.bsq, ptr %i.ok, align 8, !tbaa !74
  store double %i.bsr, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.btq = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btr = load ptr, ptr %18, align 8, !tbaa !104
  %i.bts = getelementptr inbounds nuw [16 x i8], ptr %i.btr, i64 %i.btq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bts, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !73
  store <2 x double> %i.bsg, ptr %i.ok, align 8, !tbaa !74
  %i.btt = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btu = load ptr, ptr %18, align 8, !tbaa !104
  %i.btv = getelementptr inbounds nuw [16 x i8], ptr %i.btu, i64 %i.btt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btv, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !73
  store double %.sroa.023.0.i.i, ptr %i.ok, align 8, !tbaa !74
  store double %.sroa.11.0.i.i, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.btw = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btx = load ptr, ptr %18, align 8, !tbaa !104
  %i.bty = getelementptr inbounds nuw [16 x i8], ptr %i.btx, i64 %i.btw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bty, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !73
  br label %makeLineEdge.exit.i

makeLineEdge.exit.i:                              ; preds = %bb.gs, %bb.gt
  %.sink1122 = phi double [ %.sroa.023.0.i.i, %bb.gt ], [ %i.bsq, %bb.gs ] ; 2 uses
  %.sink1121 = phi double [ %.sroa.11.0.i.i, %bb.gt ], [ %i.bsr, %bb.gs ] ; 2 uses
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !74
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.btz = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bua = load ptr, ptr %18, align 8, !tbaa !104
  %i.bub = getelementptr inbounds nuw [16 x i8], ptr %i.bua, i64 %i.btz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bub, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !74
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.buc = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bud = load ptr, ptr %18, align 8, !tbaa !104
  %i.bue = getelementptr inbounds nuw [16 x i8], ptr %i.bud, i64 %i.buc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bue, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  store <2 x double> %i.bsn, ptr %i.ok, align 8, !tbaa !74
  %i.buf = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bug = load ptr, ptr %18, align 8, !tbaa !104
  %i.buh = getelementptr inbounds nuw [16 x i8], ptr %i.bug, i64 %i.buf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buh, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  store <2 x double> %i.bsn, ptr %i.ok, align 8, !tbaa !74
  %i.bui = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.buj = load ptr, ptr %18, align 8, !tbaa !104
  %i.buk = getelementptr inbounds nuw [16 x i8], ptr %i.buj, i64 %i.bui
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buk, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  br label %bb.jk

makeLineEdge.exit.thread.i:                       ; preds = %bb.gr, %._crit_edge.i.i, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %20, i8 0, i64 72, i1 false)
  %i.bul = and i32 %i.bqo, 3                      ; 2 uses
  %i.bum = icmp eq i32 %i.bul, 3
  %.0267.sroa.gep.i = getelementptr inbounds nuw i8, ptr %.0267.i, i64 56 ; 2 uses
  %.sroa.gep300.i = getelementptr inbounds nuw i8, ptr %.0267.i, i64 120
  %.sroa.sel301.i = select i1 %i.bum, ptr %.0267.sroa.gep.i, ptr %.sroa.gep300.i
  %i.bun = load ptr, ptr %.sroa.sel301.i, align 8, !tbaa !106 ; 2 uses
  %i.buo = icmp eq i32 %i.bul, 2
  %.sroa.gep303.i = getelementptr inbounds i8, ptr %.0267.i, i64 -8
  %.sroa.sel304.i = select i1 %i.buo, ptr %.0267.sroa.gep.i, ptr %.sroa.gep303.i
  %i.bup = load ptr, ptr %.sroa.sel304.i, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.buq = getelementptr i8, ptr %i.bun, i64 16   ; 3 uses
  %.val386.i = load ptr, ptr %i.buq, align 8, !tbaa !19
  call fastcc void @maximal_bbox(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef readonly %0, ptr noundef nonnull byval(%struct.spline_info_t) align 8 %9, ptr %.val386.i, ptr noundef null, ptr noundef nonnull %.0267.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false), !tbaa.struct !250
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %.sroa.0453.0.copyload.i = load double, ptr %16, align 8, !tbaa !74 ; 2 uses
  %.sroa.28.0.copyload.i = load double, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !74 ; 2 uses
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !19 ; 3 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 216
  %i.but = load i8, ptr %i.bus, align 8, !tbaa !66
  %i.buu = icmp eq i8 %i.but, 1
  br i1 %i.buu, label %bb.gu, label %spline_merge.exit.i

bb.gu:                                            ; preds = %makeLineEdge.exit.thread.i
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bur, i64 264
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !76
  %i.bux = icmp ugt i64 %i.buw, 1
  br i1 %i.bux, label %spline_merge.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bur, i64 280
  %i.buz = load i64, ptr %i.buy, align 8, !tbaa !251
  %i.bva = icmp ugt i64 %i.buz, 1
  br label %spline_merge.exit.i

spline_merge.exit.i:                              ; preds = %bb.gv, %bb.gu, %makeLineEdge.exit.thread.i
  %i.bvb = phi i1 [ false, %makeLineEdge.exit.thread.i ], [ true, %bb.gu ], [ %i.bva, %bb.gv ]
  call void @beginpath(ptr noundef nonnull %34, ptr noundef nonnull %.0267.i, i32 noundef 1, ptr noundef nonnull %16, i1 noundef zeroext %i.bvb) #24
  %i.bvc = load i32, ptr %i.oe, align 4, !tbaa !229 ; 2 uses
  %i.bvd = sext i32 %i.bvc to i64
  %i.bve = getelementptr [32 x i8], ptr %i.od, i64 %i.bvd ; 5 uses
  %i.bvf = getelementptr i8, ptr %i.bve, i64 -24
  %i.bvg = load double, ptr %i.bvf, align 8, !tbaa !241 ; 2 uses
  %i.bvh = load ptr, ptr %i.buq, align 8, !tbaa !19 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 40
  %i.bvj = load double, ptr %i.bvi, align 8, !tbaa !85
  %i.bvk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 264
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !92
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvh, i64 360
  %i.bvo = load i32, ptr %i.bvn, align 8, !tbaa !111
  %i.bvp = sext i32 %i.bvo to i64                 ; 2 uses
  %i.bvq = getelementptr inbounds [88 x i8], ptr %i.bvm, i64 %i.bvp
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 32
  %i.bvs = load double, ptr %i.bvr, align 8, !tbaa !225
  %i.bvt = fsub double %i.bvj, %i.bvs             ; 2 uses
  %i.bvu = fcmp olt double %.sroa.0453.0.copyload.i, %.sroa.28.0.copyload.i
  %i.bvv = fcmp olt double %i.bvt, %i.bvg
  %or.cond597.i = select i1 %i.bvu, i1 %i.bvv, i1 false
  br i1 %or.cond597.i, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %spline_merge.exit.i
  %i.bvw = add nsw i32 %i.bvc, 1
  store i32 %i.bvw, ptr %i.oe, align 4, !tbaa !229
  store double %.sroa.0453.0.copyload.i, ptr %i.bve, align 8, !tbaa !74
  %.sroa.18.0..sroa_idx464.i = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  store double %i.bvt, ptr %.sroa.18.0..sroa_idx464.i, align 8, !tbaa !74
  %.sroa.28.0..sroa_idx481.i = getelementptr inbounds nuw i8, ptr %i.bve, i64 16
  store double %.sroa.28.0.copyload.i, ptr %.sroa.28.0..sroa_idx481.i, align 8, !tbaa !74
  %.sroa.36.0..sroa_idx498.i = getelementptr inbounds nuw i8, ptr %i.bve, i64 24
  store double %i.bvg, ptr %.sroa.36.0..sroa_idx498.i, align 8, !tbaa !74
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %spline_merge.exit.i
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bup, i64 16 ; 3 uses
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !19
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 216
  %i.bwa = load i8, ptr %i.bvz, align 8, !tbaa !66
  %i.bwb = icmp eq i8 %i.bwa, 1
  br i1 %i.bwb, label %.lr.ph.i400.preheader, label %.critedge.i396

.lr.ph.i400.preheader:                            ; preds = %bb.gx, %.outer.outer.i
  %i.bwc = phi ptr [ %i.ckj, %.outer.outer.i ], [ %i.bvx, %bb.gx ]
  %.0262.ph.ph.i706 = phi ptr [ %i.cif, %.outer.outer.i ], [ %i.bun, %bb.gx ]
  %.0280.ph.ph.i705 = phi ptr [ %.021.lcssa.i.i, %.outer.outer.i ], [ %.0267.i, %bb.gx ] ; 5 uses
  %.0290.ph.ph.i704 = phi i32 [ %.0290620.i, %.outer.outer.i ], [ 0, %bb.gx ]
  %.0578.ph.ph.i703 = phi ptr [ %i.cij, %.outer.outer.i ], [ %i.bup, %bb.gx ]
  br label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %.lr.ph.i400.preheader, %straight_len.exit.i
  %i.bwd = phi ptr [ %i.cam, %straight_len.exit.i ], [ %i.bwc, %.lr.ph.i400.preheader ] ; 6 uses
  %.0262622.i = phi ptr [ %i.cah, %straight_len.exit.i ], [ %.0262.ph.ph.i706, %.lr.ph.i400.preheader ] ; 2 uses
  %.1268621.i = phi ptr [ %i.cab, %straight_len.exit.i ], [ %.0280.ph.ph.i705, %.lr.ph.i400.preheader ] ; 7 uses
  %.0290620.i = phi i32 [ %spec.select574, %straight_len.exit.i ], [ %.0290.ph.ph.i704, %.lr.ph.i400.preheader ] ; 6 uses
  %.0295619.i = phi i1 [ %.not339.i, %straight_len.exit.i ], [ false, %.lr.ph.i400.preheader ]
  %.0578618.i = phi ptr [ %i.cal, %straight_len.exit.i ], [ %.0578.ph.ph.i703, %.lr.ph.i400.preheader ]
  %i.bwe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sinfo, i64 8), align 8, !tbaa !98
  %i.bwf = call zeroext i1 %i.bwe(ptr noundef nonnull %.0578618.i) #24, !inline_history !252
  br i1 %i.bwf, label %.critedge.i396.loopexit, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i400
  %i.bwg = getelementptr inbounds nuw i8, ptr %.0262622.i, i64 16
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !19
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 360
  %i.bwj = load i32, ptr %i.bwi, align 8, !tbaa !111
  %i.bwk = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bwl = sext i32 %i.bwj to i64                 ; 2 uses
  %i.bwm = getelementptr inbounds [32 x i8], ptr %i.bwk, i64 %i.bwl ; 5 uses
  %i.bwn = load <2 x double>, ptr %i.bwm, align 8, !tbaa !74 ; 2 uses
  %.sroa.8439.0..sroa_idx440.i = getelementptr inbounds nuw i8, ptr %i.bwm, i64 16 ; 2 uses
  %i.bwo = load <2 x double>, ptr %.sroa.8439.0..sroa_idx440.i, align 8, !tbaa !74 ; 2 uses
  %i.bwp = extractelement <2 x double> %i.bwn, i64 0
  %i.bwq = extractelement <2 x double> %i.bwo, i64 0
  %i.bwr = fcmp oeq double %i.bwp, %i.bwq
  br i1 %i.bwr, label %bb.gz, label %rank_box.exit.i

bb.gz:                                            ; preds = %bb.gy
  %.sroa.10444.0..sroa_idx445.i = getelementptr inbounds nuw i8, ptr %i.bwm, i64 24
  %.sroa.7434.0..sroa_idx435.i = getelementptr inbounds nuw i8, ptr %i.bwm, i64 8
  %i.bws = load ptr, ptr %i.j, align 8, !tbaa !19, !noalias !253
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 264
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !92, !noalias !253
  %i.bwv = getelementptr [88 x i8], ptr %i.bwu, i64 %i.bwl ; 4 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 8
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !96, !noalias !253
  %i.bwy = load ptr, ptr %i.bwx, align 8, !tbaa !65, !noalias !253
  %i.bwz = getelementptr i8, ptr %i.bwv, i64 96
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !96, !noalias !253
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !65, !noalias !253
  %i.bxc = load double, ptr %9, align 8           ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxb, i64 16
  %i.bxe = load ptr, ptr %i.bxd, align 8, !tbaa !19, !noalias !253
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 40
  %i.bxg = load double, ptr %i.bxf, align 8, !tbaa !85, !noalias !253
  %i.bxh = getelementptr i8, ptr %i.bwv, i64 128
  %i.bxi = load double, ptr %i.bxh, align 8, !tbaa !226, !noalias !253
  %i.bxj = fadd double %i.bxg, %i.bxi             ; 2 uses
  %i.bxk = load double, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16
  %i.bxm = load ptr, ptr %i.bxl, align 8, !tbaa !19, !noalias !253
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 40
  %i.bxo = load double, ptr %i.bxn, align 8, !tbaa !85, !noalias !253
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bwv, i64 32
  %i.bxq = load double, ptr %i.bxp, align 8, !tbaa !225, !noalias !253
  %i.bxr = fsub double %i.bxo, %i.bxq             ; 2 uses
  store double %i.bxc, ptr %i.bwm, align 8, !tbaa !74
  store double %i.bxj, ptr %.sroa.7434.0..sroa_idx435.i, align 8, !tbaa !74
  store double %i.bxk, ptr %.sroa.8439.0..sroa_idx440.i, align 8, !tbaa !74
  store double %i.bxr, ptr %.sroa.10444.0..sroa_idx445.i, align 8, !tbaa !74
  %i.bxs = insertelement <2 x double> poison, double %i.bxc, i64 0
  %i.bxt = insertelement <2 x double> %i.bxs, double %i.bxj, i64 1
  %i.bxu = insertelement <2 x double> poison, double %i.bxk, i64 0
end_hunk_1
