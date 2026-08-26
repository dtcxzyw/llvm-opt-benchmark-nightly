Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/postproc?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
begin_hunk_0_@gv_postprocess:bb.a
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ak, %.thread.i.i
  %i.cn = phi ptr [ %i.cf, %.thread.i.i ], [ %i.ci, %bb.ak ] ; 5 uses
  %mul.ov.i265.i = icmp ugt i64 %i.by, 384307168202282325
  br i1 %mul.ov.i265.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %gv_calloc.exit.i
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.11, i64 noundef %i.by, i64 noundef 48) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

bb.an:                                            ; preds = %gv_calloc.exit.i
  %i.cq = tail call noalias ptr @calloc(i64 noundef %i.by, i64 noundef 48) #17 ; 6 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ao, label %gv_calloc.exit267.i

bb.ao:                                            ; preds = %bb.an
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.ct = mul nuw i64 %i.by, 48
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cs, ptr noundef nonnull @.str.12, i64 noundef %i.ct) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit267.i:                              ; preds = %bb.an
  %i.cv = tail call ptr @agfstnode(ptr noundef nonnull %0) #16 ; 2 uses
  %.not223499.i = icmp eq ptr %i.cv, null
  br i1 %.not223499.i, label %._crit_edge508.i, label %.lr.ph507.i

.lr.ph507.i:                                      ; preds = %gv_calloc.exit267.i
  %.not232.i = icmp eq i16 %i.l, 0                ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge492.i, %.lr.ph507.i
  %.1506.i = phi ptr [ %i.cv, %.lr.ph507.i ], [ %i.mk, %._crit_edge492.i ] ; 3 uses
  %.0193505.i = phi ptr [ %i.cn, %.lr.ph507.i ], [ %.2195.lcssa.i, %._crit_edge492.i ] ; 10 uses
  %.0200504.i = phi ptr [ %i.cq, %.lr.ph507.i ], [ %.2202.lcssa.i, %._crit_edge492.i ] ; 8 uses
  %i.cw = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph507.i ], [ %i.mi, %._crit_edge492.i ] ; 2 uses
  %i.cx = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph507.i ], [ %i.mj, %._crit_edge492.i ] ; 2 uses
  %i.cy = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !72, !noundef !57
  %i.cz = trunc nuw i8 %i.cy to i1                ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1506.i, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8, !noalias !72 ; 3 uses
  %..i.i = select i1 %i.cz, i64 56, i64 48
  %.25.i.i = select i1 %i.cz, i64 48, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %..i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %.25.i.i
  %.sink.in.i.i = load double, ptr %i.dd, align 8, !tbaa !14, !noalias !72
  %.sink22.in.i.i = load double, ptr %i.dc, align 8, !tbaa !14, !noalias !72
  %i.de = getelementptr inbounds nuw i8, ptr %.0193505.i, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dg = insertelement <2 x double> poison, double %.sink22.in.i.i, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %.sink.in.i.i, i64 1
  %i.di = fmul <2 x double> %i.dh, splat (double 7.200000e+01) ; 3 uses
  store <2 x double> %i.di, ptr %i.de, align 8, !tbaa !14, !noalias !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0193505.i, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !75, !noalias !72
  %i.dj = fmul <2 x double> %i.di, splat (double 5.000000e-01)
  %i.dk = load <2 x double>, ptr %.0193505.i, align 8, !tbaa !14, !noalias !72
  %i.dl = fsub <2 x double> %i.dk, %i.dj          ; 4 uses
  store <2 x double> %i.dl, ptr %.0193505.i, align 8, !tbaa !14, !noalias !72
  %i.dm = fcmp olt <2 x double> %i.cw, %i.dl
  %i.dn = select <2 x i1> %i.dm, <2 x double> %i.cw, <2 x double> %i.dl ; 4 uses
  %i.do = fadd <2 x double> %i.di, %i.dl          ; 2 uses
  %i.dp = fcmp ogt <2 x double> %i.cx, %i.do
  %i.dq = select <2 x i1> %i.dp, <2 x double> %i.cx, <2 x double> %i.do ; 4 uses
  %i.dr = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47 ; 7 uses
  %.not229.i = icmp eq ptr %i.dt, null
  br i1 %.not229.i, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 105
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !54, !range !56, !noundef !57
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds nuw i8, ptr %.0193505.i, i64 40 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %..i268.i = select i1 %i.cz, ptr %i.dz, ptr %i.dy
  %.23.i.i = select i1 %i.cz, ptr %i.dy, ptr %i.dz
  %.sink.i269.i = load double, ptr %.23.i.i, align 8, !tbaa !14, !noalias !76 ; 2 uses
  %.sink22.i270.i = load double, ptr %..i268.i, align 8, !tbaa !14, !noalias !76 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0193505.i, i64 56
  store double %.sink22.i270.i, ptr %i.ea, align 8, !tbaa !79, !noalias !76
  %i.eb = getelementptr inbounds nuw i8, ptr %.0193505.i, i64 64
  store double %.sink.i269.i, ptr %i.eb, align 8, !tbaa !81, !noalias !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !75, !noalias !76
  %i.ed = insertelement <2 x double> poison, double %.sink22.i270.i, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %.sink.i269.i, i64 1 ; 2 uses
  %i.ef = fmul <2 x double> %i.ee, splat (double 5.000000e-01)
  %i.eg = load <2 x double>, ptr %i.dx, align 8, !tbaa !14, !noalias !76
  %i.eh = fsub <2 x double> %i.eg, %i.ef          ; 4 uses
  store <2 x double> %i.eh, ptr %i.dx, align 8, !tbaa !14, !noalias !76
  %i.ei = fcmp olt <2 x double> %i.dn, %i.eh
  %i.ej = select <2 x i1> %i.ei, <2 x double> %i.dn, <2 x double> %i.eh
  %i.ek = fadd <2 x double> %i.ee, %i.eh          ; 2 uses
  %i.el = fcmp ogt <2 x double> %i.dq, %i.ek
  %i.em = select <2 x i1> %i.el, <2 x double> %i.dq, <2 x double> %i.ek
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  br i1 %i.cz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eo = load <2 x double>, ptr %i.en, align 8, !tbaa !14
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ep, ptr %.0200504.i, align 8, !tbaa !14
  br label %addXLabel.exit.i

bb.au:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0200504.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !75
  br label %addXLabel.exit.i

addXLabel.exit.i:                                 ; preds = %bb.au, %bb.at
  %i.eq = getelementptr inbounds nuw i8, ptr %.0200504.i, i64 32
  store ptr %i.dt, ptr %i.eq, align 8, !tbaa !82
  %i.er = getelementptr inbounds nuw i8, ptr %.0200504.i, i64 40
  store i8 0, ptr %i.er, align 8, !tbaa !84
  %i.es = getelementptr inbounds nuw i8, ptr %.0193505.i, i64 32
  store ptr %.0200504.i, ptr %i.es, align 8, !tbaa !85
  %i.et = getelementptr inbounds nuw i8, ptr %.0200504.i, i64 48
  br label %bb.av

bb.av:                                            ; preds = %addXLabel.exit.i, %bb.ar, %bb.ap
  %.1201.i = phi ptr [ %.0200504.i, %bb.ap ], [ %.0200504.i, %bb.ar ], [ %i.et, %addXLabel.exit.i ] ; 2 uses
  %.1194.i = phi ptr [ %.0193505.i, %bb.ap ], [ %i.dx, %bb.ar ], [ %.0193505.i, %addXLabel.exit.i ]
  %i.eu = phi <2 x double> [ %i.dn, %bb.ap ], [ %i.ej, %bb.ar ], [ %i.dn, %addXLabel.exit.i ] ; 2 uses
  %i.ev = phi <2 x double> [ %i.dq, %bb.ap ], [ %i.em, %bb.ar ], [ %i.dq, %addXLabel.exit.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1194.i, i64 40 ; 2 uses
  %i.ex = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.1506.i) #16 ; 2 uses
  %.not230480.i = icmp eq ptr %i.ex, null
  br i1 %.not230480.i, label %._crit_edge492.i, label %.lr.ph491.i

.lr.ph491.i:                                      ; preds = %bb.av, %bb.co
  %.1178487.i = phi ptr [ %i.mh, %bb.co ], [ %i.ex, %bb.av ] ; 6 uses
  %.2195486.i = phi ptr [ %.6199.i, %bb.co ], [ %i.ew, %bb.av ] ; 12 uses
  %.2202485.i = phi ptr [ %.10.i, %bb.co ], [ %.1201.i, %bb.av ] ; 9 uses
  %i.ey = phi <2 x double> [ %i.mf, %bb.co ], [ %i.eu, %bb.av ] ; 5 uses
  %i.ez = phi <2 x double> [ %i.mg, %bb.co ], [ %i.ev, %bb.av ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.1178487.i, i64 16 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !8  ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !67 ; 8 uses
  %.not231.i = icmp eq ptr %i.fd, null
  br i1 %.not231.i, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph491.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 105
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !54, !range !56, !noundef !57
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fh = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !86, !noundef !57
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 2 uses
  %..i282.i = select i1 %i.fi, ptr %i.fk, ptr %i.fj
  %.23.i283.i = select i1 %i.fi, ptr %i.fj, ptr %i.fk
  %.sink.i284.i = load double, ptr %.23.i283.i, align 8, !tbaa !14, !noalias !86 ; 2 uses
  %.sink22.i285.i = load double, ptr %..i282.i, align 8, !tbaa !14, !noalias !86 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 16
  store double %.sink22.i285.i, ptr %i.fl, align 8, !tbaa !79, !noalias !86
  %i.fm = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 24
  store double %.sink.i284.i, ptr %i.fm, align 8, !tbaa !81, !noalias !86
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.2195486.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa.struct !75, !noalias !86
  %i.fo = insertelement <2 x double> poison, double %.sink22.i285.i, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %.sink.i284.i, i64 1 ; 2 uses
  %i.fq = fmul <2 x double> %i.fp, splat (double 5.000000e-01)
  %i.fr = load <2 x double>, ptr %.2195486.i, align 8, !tbaa !14, !noalias !86
  %i.fs = fsub <2 x double> %i.fr, %i.fq          ; 4 uses
  store <2 x double> %i.fs, ptr %.2195486.i, align 8, !tbaa !14, !noalias !86
  %i.ft = fcmp olt <2 x double> %i.ey, %i.fs
  %i.fu = select <2 x i1> %i.ft, <2 x double> %i.ey, <2 x double> %i.fs
  %i.fv = fadd <2 x double> %i.fp, %i.fs          ; 2 uses
  %i.fw = fcmp ogt <2 x double> %i.ez, %i.fv
  %i.fx = select <2 x i1> %i.fw, <2 x double> %i.ez, <2 x double> %i.fv
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  br i1 %.not232.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !64
  %.not233.i = icmp eq ptr %i.fz, null
  br i1 %.not233.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = tail call { double, double } @edgeMidpoint(ptr noundef nonnull %0, ptr noundef nonnull %.1178487.i) #16 ; 2 uses
  %i.gb = extractvalue { double, double } %i.ga, 0
  %i.gc = extractvalue { double, double } %i.ga, 1
  store double %i.gb, ptr %.2195486.i, align 8, !tbaa !14
  %.sroa.0.sroa.2.0..0.7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 8
  store double %i.gc, ptr %.sroa.0.sroa.2.0..0.7.sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.0.sroa.3.0..0.7.sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..0.7.sroa_idx.i.i.a, i8 0, i64 24, i1 false)
  %i.gd = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 2 uses
  br i1 %i.ge, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gg = load <2 x double>, ptr %i.gf, align 8, !tbaa !14
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gh, ptr %.2202485.i, align 8, !tbaa !14
  br label %addXLabel.exit297.i

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.2202485.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !75
  br label %addXLabel.exit297.i

addXLabel.exit297.i:                              ; preds = %bb.bc, %bb.bb
  %i.gi = getelementptr inbounds nuw i8, ptr %.2202485.i, i64 32
  store ptr %i.fd, ptr %i.gi, align 8, !tbaa !82
  %i.gj = getelementptr inbounds nuw i8, ptr %.2202485.i, i64 40
  store i8 0, ptr %i.gj, align 8, !tbaa !84
  %6 = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 32
  store ptr %.2202485.i, ptr %6, align 8, !tbaa !85
  %i.gk = getelementptr inbounds nuw i8, ptr %.2202485.i, i64 48
  br label %bb.be

bb.bd:                                            ; preds = %bb.az, %bb.ay
  %i.gl = load ptr, ptr %i.fd, align 8, !tbaa !89
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.4, ptr noundef %i.gl) #16
  br label %bb.co

bb.be:                                            ; preds = %addXLabel.exit297.i, %bb.ax
  %.3203.i = phi ptr [ %.2202485.i, %bb.ax ], [ %i.gk, %addXLabel.exit297.i ]
  %i.gm = phi <2 x double> [ %i.fu, %bb.ax ], [ %i.ey, %addXLabel.exit297.i ]
  %i.gn = phi <2 x double> [ %i.fx, %bb.ax ], [ %i.ez, %addXLabel.exit297.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %.2195486.i, i64 40
  %.pre.i = load ptr, ptr %i.fa, align 8, !tbaa !8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph491.i
  %i.gp = phi ptr [ %i.fb, %.lr.ph491.i ], [ %.pre.i, %bb.be ] ; 3 uses
  %.4204.i = phi ptr [ %.2202485.i, %.lr.ph491.i ], [ %.3203.i, %bb.be ] ; 9 uses
  %.3196.i = phi ptr [ %.2195486.i, %.lr.ph491.i ], [ %i.go, %bb.be ] ; 11 uses
  %i.gq = phi <2 x double> [ %i.ey, %.lr.ph491.i ], [ %i.gm, %bb.be ] ; 5 uses
  %i.gr = phi <2 x double> [ %i.ez, %.lr.ph491.i ], [ %i.gn, %bb.be ] ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 136
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !66 ; 8 uses
  %.not234.i = icmp eq ptr %i.gt, null
  br i1 %.not234.i, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 105
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !54, !range !56, !noundef !57
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gx = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !90, !noundef !57
  %i.gy = trunc nuw i8 %i.gx to i1                ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 40 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 48 ; 2 uses
  %..i298.i = select i1 %i.gy, ptr %i.ha, ptr %i.gz
  %.23.i299.i = select i1 %i.gy, ptr %i.gz, ptr %i.ha
  %.sink.i300.i = load double, ptr %.23.i299.i, align 8, !tbaa !14, !noalias !90 ; 2 uses
  %.sink22.i301.i = load double, ptr %..i298.i, align 8, !tbaa !14, !noalias !90 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3196.i, i64 16
  store double %.sink22.i301.i, ptr %i.hb, align 8, !tbaa !79, !noalias !90
  %i.hc = getelementptr inbounds nuw i8, ptr %.3196.i, i64 24
  store double %.sink.i300.i, ptr %i.hc, align 8, !tbaa !81, !noalias !90
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.3196.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hd, i64 16, i1 false), !tbaa.struct !75, !noalias !90
  %i.he = insertelement <2 x double> poison, double %.sink22.i301.i, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %.sink.i300.i, i64 1 ; 2 uses
  %i.hg = fmul <2 x double> %i.hf, splat (double 5.000000e-01)
  %i.hh = load <2 x double>, ptr %.3196.i, align 8, !tbaa !14, !noalias !90
  %i.hi = fsub <2 x double> %i.hh, %i.hg          ; 4 uses
  store <2 x double> %i.hi, ptr %.3196.i, align 8, !tbaa !14, !noalias !90
  %i.hj = fcmp olt <2 x double> %i.gq, %i.hi
  %i.hk = select <2 x i1> %i.hj, <2 x double> %i.gq, <2 x double> %i.hi
  %i.hl = fadd <2 x double> %i.hf, %i.hi          ; 2 uses
  %i.hm = fcmp ogt <2 x double> %i.gr, %i.hl
  %i.hn = select <2 x i1> %i.hm, <2 x double> %i.gr, <2 x double> %i.hl
  br label %bb.br

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not232.i, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !64
  %.not236.i = icmp eq ptr %i.hp, null
  br i1 %.not236.i, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hq = tail call ptr @getsplinepoints(ptr noundef nonnull %.1178487.i) #16 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %edgeTailpoint.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !93 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !96
  %.not.i313.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i313.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hw = load <2 x double>, ptr %i.hv, align 8, !tbaa !14
  br label %edgeTailpoint.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.hx = load ptr, ptr %i.hs, align 8, !tbaa !98
  %i.hy = load <2 x double>, ptr %i.hx, align 8, !tbaa !14
  br label %edgeTailpoint.exit.i

edgeTailpoint.exit.i:                             ; preds = %bb.bn, %bb.bm, %bb.bk
  %i.hz = phi <2 x double> [ %i.hy, %bb.bn ], [ %i.hw, %bb.bm ], [ zeroinitializer, %bb.bk ]
  store <2 x double> %i.hz, ptr %.3196.i, align 8, !tbaa !14
  %.sroa.0.sroa.3.0..0.7.sroa_idx.i315.i = getelementptr inbounds nuw i8, ptr %.3196.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..0.7.sroa_idx.i315.i, i8 0, i64 24, i1 false)
  %i.ia = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gt, i64 40 ; 2 uses
  br i1 %i.ib, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %edgeTailpoint.exit.i
  %i.id = load <2 x double>, ptr %i.ic, align 8, !tbaa !14
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ie, ptr %.4204.i, align 8, !tbaa !14
  br label %addXLabel.exit316.i

bb.bp:                                            ; preds = %edgeTailpoint.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.4204.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false), !tbaa.struct !75
  br label %addXLabel.exit316.i

addXLabel.exit316.i:                              ; preds = %bb.bp, %bb.bo
  %i.if = getelementptr inbounds nuw i8, ptr %.4204.i, i64 32
  store ptr %i.gt, ptr %i.if, align 8, !tbaa !82
  %i.ig = getelementptr inbounds nuw i8, ptr %.4204.i, i64 40
  store i8 0, ptr %i.ig, align 8, !tbaa !84
  %7 = getelementptr inbounds nuw i8, ptr %.3196.i, i64 32
  store ptr %.4204.i, ptr %7, align 8, !tbaa !85
  %i.ih = getelementptr inbounds nuw i8, ptr %.4204.i, i64 48
  br label %bb.br

bb.bq:                                            ; preds = %bb.bj, %bb.bi
  %i.ii = load ptr, ptr %i.gt, align 8, !tbaa !89
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.5, ptr noundef %i.ii) #16
  br label %bb.co

bb.br:                                            ; preds = %addXLabel.exit316.i, %bb.bh
  %.5205.i = phi ptr [ %.4204.i, %bb.bh ], [ %i.ih, %addXLabel.exit316.i ]
  %i.ij = phi <2 x double> [ %i.hk, %bb.bh ], [ %i.gq, %addXLabel.exit316.i ]
  %i.ik = phi <2 x double> [ %i.hn, %bb.bh ], [ %i.gr, %addXLabel.exit316.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %.3196.i, i64 40
  %.pre517.i = load ptr, ptr %i.fa, align 8, !tbaa !8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bf
  %i.im = phi ptr [ %i.gp, %bb.bf ], [ %.pre517.i, %bb.br ] ; 3 uses
  %.6206.i = phi ptr [ %.4204.i, %bb.bf ], [ %.5205.i, %bb.br ] ; 9 uses
  %.4197.i = phi ptr [ %.3196.i, %bb.bf ], [ %i.il, %bb.br ] ; 11 uses
  %i.in = phi <2 x double> [ %i.gq, %bb.bf ], [ %i.ij, %bb.br ] ; 5 uses
  %i.io = phi <2 x double> [ %i.gr, %bb.bf ], [ %i.ik, %bb.br ] ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 128
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !65 ; 8 uses
  %.not237.i = icmp eq ptr %i.iq, null
  br i1 %.not237.i, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 105
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !54, !range !56, !noundef !57
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iu = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !99, !noundef !57
  %i.iv = trunc nuw i8 %i.iu to i1                ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 40 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 48 ; 2 uses
  %..i317.i = select i1 %i.iv, ptr %i.ix, ptr %i.iw
  %.23.i318.i = select i1 %i.iv, ptr %i.iw, ptr %i.ix
  %.sink.i319.i = load double, ptr %.23.i318.i, align 8, !tbaa !14, !noalias !99 ; 2 uses
  %.sink22.i320.i = load double, ptr %..i317.i, align 8, !tbaa !14, !noalias !99 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.4197.i, i64 16
  store double %.sink22.i320.i, ptr %i.iy, align 8, !tbaa !79, !noalias !99
  %i.iz = getelementptr inbounds nuw i8, ptr %.4197.i, i64 24
  store double %.sink.i319.i, ptr %i.iz, align 8, !tbaa !81, !noalias !99
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.4197.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !75, !noalias !99
  %i.jb = insertelement <2 x double> poison, double %.sink22.i320.i, i64 0
  %i.jc = insertelement <2 x double> %i.jb, double %.sink.i319.i, i64 1 ; 2 uses
  %i.jd = fmul <2 x double> %i.jc, splat (double 5.000000e-01)
  %i.je = load <2 x double>, ptr %.4197.i, align 8, !tbaa !14, !noalias !99
  %i.jf = fsub <2 x double> %i.je, %i.jd          ; 4 uses
  store <2 x double> %i.jf, ptr %.4197.i, align 8, !tbaa !14, !noalias !99
  %i.jg = fcmp olt <2 x double> %i.in, %i.jf
  %i.jh = select <2 x i1> %i.jg, <2 x double> %i.in, <2 x double> %i.jf
  %i.ji = fadd <2 x double> %i.jc, %i.jf          ; 2 uses
  %i.jj = fcmp ogt <2 x double> %i.io, %i.ji
  %i.jk = select <2 x i1> %i.jj, <2 x double> %i.io, <2 x double> %i.ji
  br label %bb.cd

bb.bv:                                            ; preds = %bb.bt
  br i1 %.not232.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !64
  %.not239.i = icmp eq ptr %i.jm, null
  br i1 %.not239.i, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jn = tail call ptr @getsplinepoints(ptr noundef nonnull %.1178487.i) #16 ; 3 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %edgeHeadpoint.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !93
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !102
  %i.js = getelementptr [56 x i8], ptr %i.jp, i64 %i.jr ; 4 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -36
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !103
  %.not.i332.i = icmp eq i32 %i.ju, 0
  br i1 %.not.i332.i, label %bb.bz, label %.sink.split.i.i

bb.bz:                                            ; preds = %bb.by
  %i.jv = getelementptr i8, ptr %i.js, i64 -56
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !98
  %i.jx = getelementptr i8, ptr %i.js, i64 -48
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !104
  %i.jz = getelementptr [16 x i8], ptr %i.jw, i64 %i.jy
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bz, %bb.by
  %.sink11.i.i = phi ptr [ %i.jz, %bb.bz ], [ %i.js, %bb.by ]
  %i.ka = getelementptr i8, ptr %.sink11.i.i, i64 -16
  %i.kb = load <2 x double>, ptr %i.ka, align 8, !tbaa !14
  br label %edgeHeadpoint.exit.i

edgeHeadpoint.exit.i:                             ; preds = %.sink.split.i.i, %bb.bx
  %i.kc = phi <2 x double> [ zeroinitializer, %bb.bx ], [ %i.kb, %.sink.split.i.i ]
  store <2 x double> %i.kc, ptr %.4197.i, align 8, !tbaa !14
  %.sroa.0.sroa.3.0..0.7.sroa_idx.i338.i.a = getelementptr inbounds nuw i8, ptr %.4197.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..0.7.sroa_idx.i338.i.a, i8 0, i64 24, i1 false)
  %i.kd = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iq, i64 40 ; 2 uses
  br i1 %i.ke, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %edgeHeadpoint.exit.i
  %i.kg = load <2 x double>, ptr %i.kf, align 8, !tbaa !14
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.kh, ptr %.6206.i, align 8, !tbaa !14
  br label %addXLabel.exit339.i

bb.cb:                                            ; preds = %edgeHeadpoint.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.6206.i, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 16, i1 false), !tbaa.struct !75
  br label %addXLabel.exit339.i

addXLabel.exit339.i:                              ; preds = %bb.cb, %bb.ca
  %i.ki = getelementptr inbounds nuw i8, ptr %.6206.i, i64 32
  store ptr %i.iq, ptr %i.ki, align 8, !tbaa !82
  %i.kj = getelementptr inbounds nuw i8, ptr %.6206.i, i64 40
  store i8 0, ptr %i.kj, align 8, !tbaa !84
  %8 = getelementptr inbounds nuw i8, ptr %.4197.i, i64 32
  store ptr %.6206.i, ptr %8, align 8, !tbaa !85
  %i.kk = getelementptr inbounds nuw i8, ptr %.6206.i, i64 48
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  %i.kl = load ptr, ptr %i.iq, align 8, !tbaa !89
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.6, ptr noundef %i.kl) #16
  br label %bb.co

bb.cd:                                            ; preds = %addXLabel.exit339.i, %bb.bu
  %.7.i = phi ptr [ %.6206.i, %bb.bu ], [ %i.kk, %addXLabel.exit339.i ]
  %i.km = phi <2 x double> [ %i.jh, %bb.bu ], [ %i.in, %addXLabel.exit339.i ]
  %i.kn = phi <2 x double> [ %i.jk, %bb.bu ], [ %i.io, %addXLabel.exit339.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.4197.i, i64 40
  %.pre518.i = load ptr, ptr %i.fa, align 8, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bs
  %i.kp = phi ptr [ %i.im, %bb.bs ], [ %.pre518.i, %bb.cd ] ; 2 uses
  %.8.i = phi ptr [ %.6206.i, %bb.bs ], [ %.7.i, %bb.cd ] ; 9 uses
  %.5198.i = phi ptr [ %.4197.i, %bb.bs ], [ %i.ko, %bb.cd ] ; 12 uses
  %i.kq = phi <2 x double> [ %i.in, %bb.bs ], [ %i.km, %bb.cd ] ; 5 uses
  %i.kr = phi <2 x double> [ %i.io, %bb.bs ], [ %i.kn, %bb.cd ] ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 144
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !58 ; 8 uses
  %.not240.i = icmp eq ptr %i.kt, null
  br i1 %.not240.i, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 105
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !54, !range !56, !noundef !57
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kx = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !105, !noundef !57
  %i.ky = trunc nuw i8 %i.kx to i1                ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 40 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 48 ; 2 uses
  %..i340.i = select i1 %i.ky, ptr %i.la, ptr %i.kz
  %.23.i341.i = select i1 %i.ky, ptr %i.kz, ptr %i.la
  %.sink.i342.i = load double, ptr %.23.i341.i, align 8, !tbaa !14, !noalias !105 ; 2 uses
  %.sink22.i343.i = load double, ptr %..i340.i, align 8, !tbaa !14, !noalias !105 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.5198.i, i64 16
  store double %.sink22.i343.i, ptr %i.lb, align 8, !tbaa !79, !noalias !105
  %i.lc = getelementptr inbounds nuw i8, ptr %.5198.i, i64 24
  store double %.sink.i342.i, ptr %i.lc, align 8, !tbaa !81, !noalias !105
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.5198.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa.struct !75, !noalias !105
  %i.le = insertelement <2 x double> poison, double %.sink22.i343.i, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %.sink.i342.i, i64 1 ; 2 uses
  %i.lg = fmul <2 x double> %i.lf, splat (double 5.000000e-01)
  %i.lh = load <2 x double>, ptr %.5198.i, align 8, !tbaa !14, !noalias !105
  %i.li = fsub <2 x double> %i.lh, %i.lg          ; 4 uses
  store <2 x double> %i.li, ptr %.5198.i, align 8, !tbaa !14, !noalias !105
  %i.lj = fcmp olt <2 x double> %i.kq, %i.li
  %i.lk = select <2 x i1> %i.lj, <2 x double> %i.kq, <2 x double> %i.li
  %i.ll = fadd <2 x double> %i.lf, %i.li          ; 2 uses
  %i.lm = fcmp ogt <2 x double> %i.kr, %i.ll
  %i.ln = select <2 x i1> %i.lm, <2 x double> %i.kr, <2 x double> %i.ll
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  br i1 %.not232.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !64
  %.not242.i = icmp eq ptr %i.lp, null
  br i1 %.not242.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lq = tail call { double, double } @edgeMidpoint(ptr noundef nonnull %0, ptr noundef nonnull %.1178487.i) #16 ; 2 uses
  %i.lr = extractvalue { double, double } %i.lq, 0
  %i.ls = extractvalue { double, double } %i.lq, 1
  store double %i.lr, ptr %.5198.i, align 8, !tbaa !14
  %.sroa.0.sroa.2.0..0.7.sroa_idx.i355.i = getelementptr inbounds nuw i8, ptr %.5198.i, i64 8
  store double %i.ls, ptr %.sroa.0.sroa.2.0..0.7.sroa_idx.i355.i, align 8, !tbaa !14
  %.sroa.0.sroa.3.0..0.7.sroa_idx.i356.i = getelementptr inbounds nuw i8, ptr %.5198.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..0.7.sroa_idx.i356.i, i8 0, i64 24, i1 false)
  %i.lt = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kt, i64 40 ; 2 uses
  br i1 %i.lu, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lw = load <2 x double>, ptr %i.lv, align 8, !tbaa !14
  %i.lx = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.lx, ptr %.8.i, align 8, !tbaa !14
  br label %addXLabel.exit357.i

bb.cl:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.8.i, ptr noundef nonnull align 8 dereferenceable(16) %i.lv, i64 16, i1 false), !tbaa.struct !75
  br label %addXLabel.exit357.i

addXLabel.exit357.i:                              ; preds = %bb.cl, %bb.ck
  %i.ly = getelementptr inbounds nuw i8, ptr %.8.i, i64 32
  store ptr %i.kt, ptr %i.ly, align 8, !tbaa !82
  %i.lz = getelementptr inbounds nuw i8, ptr %.8.i, i64 40
  store i8 0, ptr %i.lz, align 8, !tbaa !84
  %9 = getelementptr inbounds nuw i8, ptr %.5198.i, i64 32
  store ptr %.8.i, ptr %9, align 8, !tbaa !85
  %i.ma = getelementptr inbounds nuw i8, ptr %.8.i, i64 48
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci, %bb.ch
  %i.mb = load ptr, ptr %i.kt, align 8, !tbaa !89
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.7, ptr noundef %i.mb) #16
  br label %bb.co

bb.cn:                                            ; preds = %addXLabel.exit357.i, %bb.cg
  %.9.i = phi ptr [ %.8.i, %bb.cg ], [ %i.ma, %addXLabel.exit357.i ]
  %i.mc = phi <2 x double> [ %i.lk, %bb.cg ], [ %i.kq, %addXLabel.exit357.i ]
  %i.md = phi <2 x double> [ %i.ln, %bb.cg ], [ %i.kr, %addXLabel.exit357.i ]
  %i.me = getelementptr inbounds nuw i8, ptr %.5198.i, i64 40
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.ce, %bb.cc, %bb.bq, %bb.bd
  %.10.i = phi ptr [ %.8.i, %bb.ce ], [ %.9.i, %bb.cn ], [ %.8.i, %bb.cm ], [ %.6206.i, %bb.cc ], [ %.4204.i, %bb.bq ], [ %.2202485.i, %bb.bd ] ; 2 uses
  %.6199.i = phi ptr [ %.5198.i, %bb.ce ], [ %i.me, %bb.cn ], [ %.5198.i, %bb.cm ], [ %.4197.i, %bb.cc ], [ %.3196.i, %bb.bq ], [ %.2195486.i, %bb.bd ] ; 2 uses
  %i.mf = phi <2 x double> [ %i.kq, %bb.ce ], [ %i.mc, %bb.cn ], [ %i.kq, %bb.cm ], [ %i.in, %bb.cc ], [ %i.gq, %bb.bq ], [ %i.ey, %bb.bd ] ; 2 uses
  %i.mg = phi <2 x double> [ %i.kr, %bb.ce ], [ %i.md, %bb.cn ], [ %i.kr, %bb.cm ], [ %i.io, %bb.cc ], [ %i.gr, %bb.bq ], [ %i.ez, %bb.bd ] ; 2 uses
  %i.mh = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.1178487.i) #16 ; 2 uses
  %.not230.i = icmp eq ptr %i.mh, null
  br i1 %.not230.i, label %._crit_edge492.i, label %.lr.ph491.i, !llvm.loop !108

._crit_edge492.i:                                 ; preds = %bb.co, %bb.av
  %.2202.lcssa.i = phi ptr [ %.1201.i, %bb.av ], [ %.10.i, %bb.co ]
  %.2195.lcssa.i = phi ptr [ %i.ew, %bb.av ], [ %.6199.i, %bb.co ] ; 2 uses
  %i.mi = phi <2 x double> [ %i.eu, %bb.av ], [ %i.mf, %bb.co ] ; 2 uses
  %i.mj = phi <2 x double> [ %i.ev, %bb.av ], [ %i.mg, %bb.co ] ; 2 uses
  %i.mk = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.1506.i) #16 ; 2 uses
  %.not223.i = icmp eq ptr %i.mk, null
  br i1 %.not223.i, label %._crit_edge508.i, label %bb.ap, !llvm.loop !109

._crit_edge508.i:                                 ; preds = %._crit_edge492.i, %gv_calloc.exit267.i
  %.0193.lcssa.i = phi ptr [ %i.cn, %gv_calloc.exit267.i ], [ %.2195.lcssa.i, %._crit_edge492.i ]
  %i.ml = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit267.i ], [ %i.mi, %._crit_edge492.i ] ; 2 uses
  %i.mm = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit267.i ], [ %i.mj, %._crit_edge492.i ] ; 2 uses
  %.not224.i = icmp eq i64 %.0192.i, 0
  br i1 %.not224.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge508.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store <2 x double> %i.ml, ptr %2, align 16, !tbaa !14
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store <2 x double> %i.mm, ptr %.sroa.25.0..sroa_idx.i, align 16, !tbaa !14
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0193.lcssa.i, ptr %i.mn, align 16, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call fastcc void @addClusterObj(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.cinfo_t) align 8 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.mo = load <2 x double>, ptr %2, align 16, !tbaa !14
  %i.mp = load <2 x double>, ptr %.sroa.25.0..sroa_idx.i, align 16, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %._crit_edge508.i
  %i.mq = phi <2 x double> [ %i.ml, %._crit_edge508.i ], [ %i.mo, %bb.cp ]
  %i.mr = phi <2 x double> [ %i.mm, %._crit_edge508.i ], [ %i.mp, %bb.cp ]
  %i.ms = tail call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store <2 x double> %i.mq, ptr %4, align 16, !tbaa !14
  %.sroa.25.0..sroa_idx411.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> %i.mr, ptr %.sroa.25.0..sroa_idx411.i, align 16, !tbaa !14
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.mu = tail call zeroext i1 @late_bool(ptr noundef nonnull %0, ptr noundef %i.ms, i1 noundef zeroext true) #16
  %i.mv = zext i1 %i.mu to i8
  store i8 %i.mv, ptr %i.mt, align 16, !tbaa !114
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.mw, i8 0, i64 7, i1 false)
  %i.mx = call i32 @placeLabels(ptr noundef %i.cn, i64 noundef %i.ce, ptr noundef nonnull %i.cq, i64 noundef %i.by, ptr noundef nonnull %4) #16 ; 0 uses
  %i.my = load i8, ptr @Verbose, align 1, !tbaa !116
  %.not225.i = icmp eq i8 %i.my, 0
  br i1 %.not225.i, label %.preheader, label %bb.cr

.preheader:                                       ; preds = %bb.cr, %bb.cq
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  call fastcc void @printData(ptr noundef %i.cn, i64 noundef %i.ce, ptr noundef nonnull %i.cq, i64 noundef %i.by, ptr noundef %4)
  br label %.preheader

bb.cs:                                            ; preds = %bb.cv
  %i.mz = load i8, ptr @Verbose, align 1, !tbaa !116
  %.not226.i = icmp eq i8 %i.mz, 0
  br i1 %.not226.i, label %bb.cx, label %bb.cw

bb.ct:                                            ; preds = %.preheader, %bb.cv
  %.0179516.i = phi i64 [ %i.nn, %bb.cv ], [ 0, %.preheader ]
  %.0180515.i = phi i64 [ %.1181.i, %bb.cv ], [ 0, %.preheader ] ; 2 uses
  %.11514.i = phi ptr [ %i.nm, %bb.cv ], [ %i.cq, %.preheader ] ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.11514.i, i64 40
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !84
  %.not228.i = icmp eq i8 %i.nb, 0
  br i1 %.not228.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nc = add i64 %.0180515.i, 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.11514.i, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !82 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 105
  store i8 1, ptr %i.nf, align 1, !tbaa !54
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  %i.nh = getelementptr inbounds nuw i8, ptr %.11514.i, i64 16
  %i.ni = load <2 x double>, ptr %i.nh, align 8, !tbaa !14
  %i.nj = load <2 x double>, ptr %.11514.i, align 8, !tbaa !14
  %i.nk = fmul <2 x double> %i.nj, splat (double 5.000000e-01)
  %i.nl = fadd <2 x double> %i.ni, %i.nk
  store <2 x double> %i.nl, ptr %i.ng, align 8, !tbaa !14
  call void @updateBB(ptr noundef nonnull %0, ptr noundef %i.ne) #16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.1181.i = phi i64 [ %i.nc, %bb.cu ], [ %.0180515.i, %bb.ct ] ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.11514.i, i64 48
  %i.nn = add nuw i64 %.0179516.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.nn, %i.by
  br i1 %exitcond.not.i, label %bb.cs, label %bb.ct, !llvm.loop !117

bb.cw:                                            ; preds = %bb.cs
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.no, ptr noundef nonnull @.str.9, i64 noundef %.1181.i, i64 noundef %i.by) #18 ; 0 uses
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cs
  %.not227.i = icmp eq i64 %.1181.i, %i.by
  br i1 %.not227.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.10, i64 noundef %.1181.i, i64 noundef %i.by) #16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  call void @free(ptr noundef %i.cn) #16
  call void @free(ptr noundef %i.cq) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %addXLabels.exit

addXLabels.exit:                                  ; preds = %bb.e, %bb.ag, %bb.cz
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !8   ; 18 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !17 ; 6 uses
  %.not = icmp eq ptr %i.ns, null
  br i1 %.not, label %bb.dq, label %bb.da

bb.da:                                            ; preds = %addXLabels.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 105
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !54, !range !56, !noundef !57
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.dq, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %.sroa.05.0.copyload = load double, ptr %i.nw, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %i.nx = fadd double %.sroa.05.0.copyload, 1.600000e+01 ; 8 uses
  %i.ny = fadd double %.sroa.11.0.copyload, 8.000000e+00 ; 10 uses
  %i.nz = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 395
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !118
  %i.od = and i8 %i.oc, 1
  %.not68 = icmp eq i8 %i.od, 0                   ; 2 uses
  br i1 %i.oa, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  br i1 %.not68, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nq, i64 48 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !119
  %i.og = fadd double %i.ny, %i.of
  store double %i.og, ptr %i.oe, align 8, !tbaa !119
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nq, i64 32 ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !120
  %i.oj = fsub double %i.oi, %i.ny
  store double %i.oj, ptr %i.oh, align 8, !tbaa !120
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nq, i64 56 ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !121 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nq, i64 40 ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !122 ; 2 uses
  %i.oo = fsub double %i.ol, %i.on                ; 2 uses
  %i.op = fcmp ogt double %i.nx, %i.oo
  br i1 %i.op, label %bb.dg, label %bb.dq

bb.dg:                                            ; preds = %bb.df
  %i.oq = fsub double %i.nx, %i.oo
  %i.or = fmul double %i.oq, 5.000000e-01         ; 2 uses
  %i.os = fsub double %i.on, %i.or
  store double %i.os, ptr %i.om, align 8, !tbaa !122
  %i.ot = fadd double %i.ol, %i.or
  store double %i.ot, ptr %i.ok, align 8, !tbaa !121
  br label %bb.dq

bb.dh:                                            ; preds = %bb.db
  %i.ou = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.ov = icmp eq i32 %i.ou, 0                    ; 2 uses
  br i1 %.not68, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  br i1 %i.ov, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nq, i64 56 ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !121
  %i.oy = fadd double %i.ny, %i.ox
  store double %i.oy, ptr %i.ow, align 8, !tbaa !121
  br label %bb.do

bb.dk:                                            ; preds = %bb.di
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nq, i64 40 ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !122
  %i.pb = fsub double %i.pa, %i.ny
  store double %i.pb, ptr %i.oz, align 8, !tbaa !122
  br label %bb.do

bb.dl:                                            ; preds = %bb.dh
  br i1 %i.ov, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nq, i64 40 ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !122
  %i.pe = fsub double %i.pd, %i.ny
  store double %i.pe, ptr %i.pc, align 8, !tbaa !122
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nq, i64 56 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !121
  %i.ph = fadd double %i.ny, %i.pg
  store double %i.ph, ptr %i.pf, align 8, !tbaa !121
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dj, %bb.dk
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nq, i64 32 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nq, i64 48 ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !119 ; 2 uses
  %i.pl = load double, ptr %i.pi, align 8, !tbaa !120 ; 2 uses
  %i.pm = fsub double %i.pk, %i.pl                ; 2 uses
  %i.pn = fcmp ogt double %i.nx, %i.pm
  br i1 %i.pn, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.po = fsub double %i.nx, %i.pm
  %i.pp = fmul double %i.po, 5.000000e-01         ; 2 uses
  %i.pq = fsub double %i.pl, %i.pp
  store double %i.pq, ptr %i.pi, align 8, !tbaa !120
  %i.pr = fadd double %i.pk, %i.pp
  store double %i.pr, ptr %i.pj, align 8, !tbaa !119
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dg, %bb.df, %bb.dp, %bb.do, %bb.da, %addXLabels.exit
  %.sroa.11.0 = phi double [ 0.000000e+00, %bb.da ], [ %i.ny, %bb.dg ], [ %i.ny, %bb.df ], [ %i.ny, %bb.dp ], [ %i.ny, %bb.do ], [ 0.000000e+00, %addXLabels.exit ]
  %.sroa.05.0 = phi double [ 0.000000e+00, %bb.da ], [ %i.nx, %bb.dg ], [ %i.nx, %bb.df ], [ %i.nx, %bb.dp ], [ %i.nx, %bb.do ], [ 0.000000e+00, %addXLabels.exit ] ; 2 uses
  %.not69 = icmp eq i32 %1, 0
  br i1 %.not69, label %translate_drawing.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ps = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.pt = getelementptr inbounds nuw i8, ptr %i.nq, i64 32 ; 4 uses
  switch i32 %i.ps, label %default.unreachable [
    i32 0, label %bb.dv
    i32 1, label %bb.ds
    i32 2, label %bb.dt
    i32 3, label %bb.du
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nq, i64 56
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !121
  %i.pw = fneg double %i.pv
  %i.px = load double, ptr %i.pt, align 8, !tbaa !120
  br label %.thread.sink.split

bb.dt:                                            ; preds = %bb.dr
  %i.py = load double, ptr %i.pt, align 8, !tbaa !120
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nq, i64 56
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !121
  %i.qb = fneg double %i.qa
  br label %.thread.sink.split

bb.du:                                            ; preds = %bb.dr
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !122
  %i.qe = load double, ptr %i.pt, align 8, !tbaa !120
  br label %.thread.sink.split

default.unreachable:                              ; preds = %bb.dr
  unreachable

bb.dv:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @Offset, ptr noundef nonnull align 8 dereferenceable(16) %i.pt, i64 16, i1 false), !tbaa.struct !75
  %.pre = load double, ptr @Offset, align 16, !tbaa !123
  %.pre79 = load double, ptr getelementptr inbounds nuw (i8, ptr @Offset, i64 8), align 8
  %i.qf = fcmp une double %.pre, 0.000000e+00
  %i.qg = fcmp une double %.pre79, 0.000000e+00
  %i.qh = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %i.qh, label %.thread, label %translate_drawing.exit

.thread.sink.split:                               ; preds = %bb.du, %bb.dt, %bb.ds
  %.sink127 = phi double [ %i.pw, %bb.ds ], [ %i.py, %bb.dt ], [ %i.qd, %bb.du ]
  %.sink = phi double [ %i.px, %bb.ds ], [ %i.qb, %bb.dt ], [ %i.qe, %bb.du ]
  store double %.sink127, ptr @Offset, align 16, !tbaa !14
  store double %.sink, ptr getelementptr inbounds nuw (i8, ptr @Offset, i64 8), align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.dv
  %i.qi = call ptr @agfstnode(ptr noundef nonnull %0) #16 ; 2 uses
  %.not30.i = icmp eq ptr %i.qi, null
  br i1 %.not30.i, label %._crit_edge.i73, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.thread, %.loopexit.i
  %.031.i = phi ptr [ %i.xi, %.loopexit.i ], [ %i.qi, %.thread ] ; 4 uses
  %i.qj = load i32, ptr @Rankdir, align 4, !tbaa !16
  %.not23.i = icmp eq i32 %i.qj, 0
  br i1 %.not23.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph32.i
  call void @gv_nodesize(ptr noundef nonnull %.031.i, i1 noundef zeroext false) #16
  %.pre.i72 = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.qk = mul nuw nsw i32 %.pre.i72, 90
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph32.i
  %i.ql = phi i32 [ %i.qk, %bb.dw ], [ 0, %.lr.ph32.i ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.031.i, i64 16 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !8  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 32 ; 2 uses
  %i.qp = load double, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 40
  %i.qr = load double, ptr %i.qq, align 8
  %i.qs = call { double, double } @ccwrotatepf(double %i.qp, double %i.qr, i32 noundef %i.ql) #16 ; 2 uses
  %i.qt = extractvalue { double, double } %i.qs, 0
  %i.qu = extractvalue { double, double } %i.qs, 1
  %i.qv = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.qw = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.qx = insertelement <2 x double> %i.qw, double %i.qu, i64 1
  %i.qy = fsub <2 x double> %i.qx, %i.qv
  store <2 x double> %i.qy, ptr %i.qo, align 8, !tbaa !14
  %i.qz = load ptr, ptr %i.qm, align 8, !tbaa !8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 144
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !47 ; 3 uses
  %.not24.i = icmp eq ptr %i.rb, null
  br i1 %.not24.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 72 ; 2 uses
  %i.rd = load double, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 80
  %i.rf = load double, ptr %i.re, align 8
  %i.rg = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.rh = mul nuw nsw i32 %i.rg, 90
  %i.ri = call { double, double } @ccwrotatepf(double %i.rd, double %i.rf, i32 noundef %i.rh) #16 ; 2 uses
  %i.rj = extractvalue { double, double } %i.ri, 0
  %i.rk = extractvalue { double, double } %i.ri, 1
  %i.rl = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.rm = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.rn = insertelement <2 x double> %i.rm, double %i.rk, i64 1
  %i.ro = fsub <2 x double> %i.rn, %i.rl
  store <2 x double> %i.ro, ptr %i.rc, align 8, !tbaa !14
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.rp = load i32, ptr @State, align 4, !tbaa !16
  %i.rq = icmp eq i32 %i.rp, 1
  br i1 %i.rq, label %bb.ea, label %.loopexit.i

bb.ea:                                            ; preds = %bb.dz
  %i.rr = call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.031.i) #16 ; 2 uses
  %.not2528.i = icmp eq ptr %i.rr, null
  br i1 %.not2528.i, label %.loopexit.i, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.ea, %map_edge.exit.i
  %.02129.i = phi ptr [ %i.xh, %map_edge.exit.i ], [ %i.rr, %bb.ea ] ; 6 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.02129.i, i64 16 ; 7 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !8  ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !64 ; 3 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.eb, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i74
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !102
  %.not77.i.i = icmp eq i64 %i.ry, 0
  br i1 %.not77.i.i, label %._crit_edge76.i.i, label %.lr.ph75.i.i

bb.eb:                                            ; preds = %.lr.ph.i74
  %i.rz = load i8, ptr @Concentrate, align 1, !tbaa !44, !range !56, !noundef !57
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %map_edge.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 152
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !124
  %.not60.i.i = icmp eq i8 %i.sc, 6
  br i1 %.not60.i.i, label %map_edge.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sd = load i32, ptr %.02129.i, align 8
  %i.se = and i32 %i.sd, 3
  %i.sf = icmp eq i32 %i.se, 3
  %i.sg = select i1 %i.sf, i64 56, i64 120
  %i.sh = getelementptr inbounds nuw i8, ptr %.02129.i, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !125
  %i.sj = call ptr @agnameof(ptr noundef %i.si) #16
  %i.sk = load i32, ptr %.02129.i, align 8
  %i.sl = and i32 %i.sk, 3
  %i.sm = icmp eq i32 %i.sl, 2
  %i.sn = select i1 %i.sm, i64 56, i64 -8
  %i.so = getelementptr inbounds i8, ptr %.02129.i, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !125
  %i.sq = call ptr @agnameof(ptr noundef %i.sp) #16
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.19, ptr noundef %i.sj, ptr noundef %i.sq) #16
  br label %map_edge.exit.i

._crit_edge76.i.i:                                ; preds = %bb.eh, %.preheader.i.i
  %.lcssa.i.i = phi ptr [ %i.rt, %.preheader.i.i ], [ %.pre80.pre8487.i.i, %bb.eh ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 120
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !67 ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i75, label %bb.ej, label %bb.ei

.lr.ph75.i.i:                                     ; preds = %.preheader.i.i, %bb.eh
  %.pre80.pre8486.i.i = phi ptr [ %.pre80.pre8487.i.i, %bb.eh ], [ %i.rt, %.preheader.i.i ]
  %i.st = phi ptr [ %i.uu, %bb.eh ], [ %i.rv, %.preheader.i.i ]
  %.074.i.i = phi i64 [ %i.us, %bb.eh ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !93
  %i.sv = getelementptr inbounds nuw [56 x i8], ptr %i.su, i64 %.074.i.i ; 4 uses
  %.sroa.023.0.copyload.i.i = load ptr, ptr %i.sv, align 8, !tbaa !129
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !130 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 20
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !16
  %.not78.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %.not78.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre80.pre84.pre.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph75.i.i
  %.pre80.pre84.i.i = phi ptr [ %.pre80.pre84.pre.i.i, %._crit_edge.loopexit.i.i ], [ %.pre80.pre8486.i.i, %.lr.ph75.i.i ] ; 2 uses
  %.not58.i.i = icmp eq i32 %.sroa.6.0.copyload.i.i, 0
  br i1 %.not58.i.i, label %bb.ef, label %bb.ee

.lr.ph.i.i:                                       ; preds = %.lr.ph75.i.i, %.lr.ph.i.i
  %.05073.i.i = phi i64 [ %i.tj, %.lr.ph.i.i ], [ 0, %.lr.ph75.i.i ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.023.0.copyload.i.i, i64 %.05073.i.i ; 3 uses
  %i.sx = load double, ptr %i.sw, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sz = load double, ptr %i.sy, align 8
  %i.ta = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.tb = mul nuw nsw i32 %i.ta, 90
  %i.tc = call { double, double } @ccwrotatepf(double %i.sx, double %i.sz, i32 noundef %i.tb) #16 ; 2 uses
  %i.td = extractvalue { double, double } %i.tc, 0
  %i.te = extractvalue { double, double } %i.tc, 1
  %i.tf = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.tg = insertelement <2 x double> poison, double %i.td, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.te, i64 1
  %i.ti = fsub <2 x double> %i.th, %i.tf
  store <2 x double> %i.ti, ptr %i.sw, align 8, !tbaa !14
  %i.tj = add nuw i64 %.05073.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.tj, %.sroa.5.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !131

bb.ee:                                            ; preds = %._crit_edge.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %.pre80.pre84.i.i, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !64
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !93
  %i.tn = getelementptr inbounds nuw [56 x i8], ptr %i.tm, i64 %.074.i.i ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24 ; 2 uses
  %i.tp = load double, ptr %i.to, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.tr = load double, ptr %i.tq, align 8
  %i.ts = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.tt = mul nuw nsw i32 %i.ts, 90
  %i.tu = call { double, double } @ccwrotatepf(double %i.tp, double %i.tr, i32 noundef %i.tt) #16 ; 2 uses
  %i.tv = extractvalue { double, double } %i.tu, 0
  %i.tw = extractvalue { double, double } %i.tu, 1
  %i.tx = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.ty = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tz = insertelement <2 x double> %i.ty, double %i.tw, i64 1
  %i.ua = fsub <2 x double> %i.tz, %i.tx
  store <2 x double> %i.ua, ptr %i.to, align 8, !tbaa !14
  %.pre80.pre.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %._crit_edge.i.i
  %.pre80.pre8488.i.i = phi ptr [ %.pre80.pre.i.i, %bb.ee ], [ %.pre80.pre84.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not59.i.i = icmp eq i32 %.sroa.7.0.copyload.i.i, 0
  br i1 %.not59.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ub = getelementptr inbounds nuw i8, ptr %.pre80.pre8488.i.i, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !64
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !93
  %i.ue = getelementptr inbounds nuw [56 x i8], ptr %i.ud, i64 %.074.i.i ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 40 ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %i.ui = load double, ptr %i.uh, align 8
  %i.uj = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.uk = mul nuw nsw i32 %i.uj, 90
  %i.ul = call { double, double } @ccwrotatepf(double %i.ug, double %i.ui, i32 noundef %i.uk) #16 ; 2 uses
  %i.um = extractvalue { double, double } %i.ul, 0
  %i.un = extractvalue { double, double } %i.ul, 1
  %i.uo = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.up = insertelement <2 x double> poison, double %i.um, i64 0
  %i.uq = insertelement <2 x double> %i.up, double %i.un, i64 1
  %i.ur = fsub <2 x double> %i.uq, %i.uo
  store <2 x double> %i.ur, ptr %i.uf, align 8, !tbaa !14
  %.pre.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pre80.pre8487.i.i = phi ptr [ %.pre80.pre8488.i.i, %bb.ef ], [ %.pre.i.i, %bb.eg ] ; 3 uses
  %i.us = add nuw i64 %.074.i.i, 1                ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.pre80.pre8487.i.i, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !64 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !102
  %i.ux = icmp ult i64 %i.us, %i.uw
  br i1 %i.ux, label %.lr.ph75.i.i, label %._crit_edge76.i.i, !llvm.loop !132

bb.ei:                                            ; preds = %._crit_edge76.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ss, i64 72 ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.ss, i64 80
  %i.vb = load double, ptr %i.va, align 8
  %i.vc = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.vd = mul nuw nsw i32 %i.vc, 90
  %i.ve = call { double, double } @ccwrotatepf(double %i.uz, double %i.vb, i32 noundef %i.vd) #16 ; 2 uses
  %i.vf = extractvalue { double, double } %i.ve, 0
  %i.vg = extractvalue { double, double } %i.ve, 1
  %i.vh = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.vi = insertelement <2 x double> poison, double %i.vf, i64 0
  %i.vj = insertelement <2 x double> %i.vi, double %i.vg, i64 1
  %i.vk = fsub <2 x double> %i.vj, %i.vh
  store <2 x double> %i.vk, ptr %i.uy, align 8, !tbaa !14
  %.pre81.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %._crit_edge76.i.i
  %i.vl = phi ptr [ %.pre81.i.i, %bb.ei ], [ %.lcssa.i.i, %._crit_edge76.i.i ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 144
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !58 ; 3 uses
  %.not55.i.i = icmp eq ptr %i.vn, null
  br i1 %.not55.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 72 ; 2 uses
  %i.vp = load double, ptr %i.vo, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 80
  %i.vr = load double, ptr %i.vq, align 8
  %i.vs = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.vt = mul nuw nsw i32 %i.vs, 90
  %i.vu = call { double, double } @ccwrotatepf(double %i.vp, double %i.vr, i32 noundef %i.vt) #16 ; 2 uses
  %i.vv = extractvalue { double, double } %i.vu, 0
  %i.vw = extractvalue { double, double } %i.vu, 1
  %i.vx = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.vy = insertelement <2 x double> poison, double %i.vv, i64 0
  %i.vz = insertelement <2 x double> %i.vy, double %i.vw, i64 1
  %i.wa = fsub <2 x double> %i.vz, %i.vx
  store <2 x double> %i.wa, ptr %i.vo, align 8, !tbaa !14
  %.pre82.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.wb = phi ptr [ %.pre82.i.i, %bb.ek ], [ %i.vl, %bb.ej ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 128
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !65 ; 3 uses
  %.not56.i.i = icmp eq ptr %i.wd, null
  br i1 %.not56.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 72 ; 2 uses
  %i.wf = load double, ptr %i.we, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 80
  %i.wh = load double, ptr %i.wg, align 8
  %i.wi = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.wj = mul nuw nsw i32 %i.wi, 90
  %i.wk = call { double, double } @ccwrotatepf(double %i.wf, double %i.wh, i32 noundef %i.wj) #16 ; 2 uses
  %i.wl = extractvalue { double, double } %i.wk, 0
  %i.wm = extractvalue { double, double } %i.wk, 1
  %i.wn = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.wo = insertelement <2 x double> poison, double %i.wl, i64 0
  %i.wp = insertelement <2 x double> %i.wo, double %i.wm, i64 1
  %i.wq = fsub <2 x double> %i.wp, %i.wn
  store <2 x double> %i.wq, ptr %i.we, align 8, !tbaa !14
  %.pre83.i.i = load ptr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.wr = phi ptr [ %.pre83.i.i, %bb.em ], [ %i.wb, %bb.el ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 136
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !66 ; 3 uses
  %.not57.i.i = icmp eq ptr %i.wt, null
  br i1 %.not57.i.i, label %map_edge.exit.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 72 ; 2 uses
  %i.wv = load double, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 80
  %i.wx = load double, ptr %i.ww, align 8
  %i.wy = load i32, ptr @Rankdir, align 4, !tbaa !16
  %i.wz = mul nuw nsw i32 %i.wy, 90
  %i.xa = call { double, double } @ccwrotatepf(double %i.wv, double %i.wx, i32 noundef %i.wz) #16 ; 2 uses
  %i.xb = extractvalue { double, double } %i.xa, 0
  %i.xc = extractvalue { double, double } %i.xa, 1
  %i.xd = load <2 x double>, ptr @Offset, align 16, !tbaa !14
  %i.xe = insertelement <2 x double> poison, double %i.xb, i64 0
  %i.xf = insertelement <2 x double> %i.xe, double %i.xc, i64 1
  %i.xg = fsub <2 x double> %i.xf, %i.xd
  store <2 x double> %i.xg, ptr %i.wu, align 8, !tbaa !14
  br label %map_edge.exit.i

map_edge.exit.i:                                  ; preds = %bb.eo, %bb.en, %bb.ed, %bb.ec, %bb.eb
  %i.xh = call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.02129.i) #16 ; 2 uses
  %.not25.i = icmp eq ptr %i.xh, null
  br i1 %.not25.i, label %.loopexit.i, label %.lr.ph.i74, !llvm.loop !133

.loopexit.i:                                      ; preds = %map_edge.exit.i, %bb.ea, %bb.dz
  %i.xi = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.031.i) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.xi, null
  br i1 %.not.i, label %._crit_edge.i73, label %.lr.ph32.i, !llvm.loop !134

._crit_edge.i73:                                  ; preds = %.loopexit.i, %.thread
  %i.xj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 132
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !43
  %i.xm = and i32 %i.xl, 3
  call void @translate_bb(ptr noundef nonnull %0, i32 noundef %i.xm)
  %.pre80 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre80, i64 24
  %.pre81 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %translate_drawing.exit

translate_drawing.exit:                           ; preds = %._crit_edge.i73, %bb.dv, %bb.dq
  %i.xn = phi ptr [ %.pre81, %._crit_edge.i73 ], [ %i.ns, %bb.dv ], [ %i.ns, %bb.dq ] ; 4 uses
  %i.xo = phi ptr [ %.pre80, %._crit_edge.i73 ], [ %i.nq, %bb.dv ], [ %i.nq, %bb.dq ] ; 6 uses
  %.not70 = icmp eq ptr %i.xn, null
  br i1 %.not70, label %bb.ey, label %bb.ep

bb.ep:                                            ; preds = %translate_drawing.exit
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 105 ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !54, !range !56, !noundef !57
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %bb.ey, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 395
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !118 ; 3 uses
  %i.xu = and i8 %i.xt, 4
  %.not.i76 = icmp eq i8 %i.xu, 0
  br i1 %.not.i76, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !119
  %i.xx = fmul double %.sroa.05.0, 5.000000e-01
  %i.xy = fsub double %i.xw, %i.xx
  br label %bb.ev

bb.es:                                            ; preds = %bb.eq
  %i.xz = and i8 %i.xt, 2
  %.not14.i = icmp eq i8 %i.xz, 0
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !120 ; 2 uses
  br i1 %.not14.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yc = fmul double %.sroa.05.0, 5.000000e-01
  %i.yd = fadd double %i.yc, %i.yb
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !119
  %i.yg = fadd double %i.yb, %i.yf
  %i.yh = fmul double %i.yg, 5.000000e-01
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er
  %.sroa.0.0.i = phi double [ %i.xy, %bb.er ], [ %i.yd, %bb.et ], [ %i.yh, %bb.eu ]
  %i.yi = and i8 %i.xt, 1
  %.not15.i = icmp eq i8 %i.yi, 0
  %i.yj = fmul double %.sroa.11.0, 5.000000e-01   ; 2 uses
  br i1 %.not15.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xo, i64 56
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !121
  %i.ym = fsub double %i.yl, %i.yj
  br label %place_root_label.exit

bb.ex:                                            ; preds = %bb.ev
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !122
  %i.yp = fadd double %i.yj, %i.yo
  br label %place_root_label.exit

place_root_label.exit:                            ; preds = %bb.ew, %bb.ex
  %.sroa.6.0.i = phi double [ %i.ym, %bb.ew ], [ %i.yp, %bb.ex ]
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xn, i64 72
  store double %.sroa.0.0.i, ptr %i.yq, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 80
  store double %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  store i8 1, ptr %i.xp, align 1, !tbaa !54
  br label %bb.ey

bb.ey:                                            ; preds = %place_root_label.exit, %bb.ep, %translate_drawing.exit
  %Show_boxes.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @Show_boxes, i64 16), align 8, !tbaa !135
  %i.yr = icmp eq i64 %Show_boxes.val, 0
  br i1 %i.yr, label %bb.fg, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.ys = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noundef !57
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.fa, label %bb.fb
end_hunk_0
begin_hunk_1_@agxbprint:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !116
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i50.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i42.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i50.i, %.0.i42.i             ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !116
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !116
  %i.s = load ptr, ptr %0, align 8, !tbaa !116
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.13654.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef readonly %1, ptr noundef nonnull %3) #16 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !116 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.13654.i, label %agxbnext.exit48.i, label %bb.l

agxbnext.exit48.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit48.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit48.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !116
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !116
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare hidden i64 @gv_list_prepend_slot_(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @dotneato_postprocess(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @gv_postprocess(ptr noundef %0, i32 noundef 1)
  ret void
}

declare ptr @agroot(ptr noundef) local_unnamed_addr #5

declare { double, double } @ccwrotatepf(double, double, i32 noundef) local_unnamed_addr #5

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #5

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @countClusterLabels(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agroot(ptr noundef %0) #16
  %.not = icmp eq ptr %0, %i.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 3 uses
  br i1 %.not, label %._crit_edge20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %._crit_edge20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !56, !noundef !57
  %spec.select = zext nneg i8 %i.e to i64
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.a, %bb.c, %bb.b
  %.011 = phi i64 [ 0, %bb.b ], [ %spec.select, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 236
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %.not1516 = icmp slt i32 %i.h, 1
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge20
  %.1.lcssa = phi i64 [ %.011, %._crit_edge20 ], [ %i.o, %.lr.ph ]
  ret i64 %.1.lcssa

.lr.ph:                                           ; preds = %._crit_edge20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %._crit_edge20 ] ; 3 uses
  %i.i = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %._crit_edge20 ]
  %.117 = phi i64 [ %i.o, %.lr.ph ], [ %.011, %._crit_edge20 ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call fastcc i64 @countClusterLabels(ptr noundef %i.m)
  %i.o = add i64 %i.n, %.117                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 236
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = sext i32 %i.r to i64
  %.not15.not = icmp slt i64 %indvars.iv, %i.s
  br i1 %.not15.not, label %.lr.ph, label %._crit_edge, !llvm.loop !143
}

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #5

declare { double, double } @edgeMidpoint(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @addClusterObj(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef byval(%struct.cinfo_t) align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cinfo_t, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.not17 = icmp slt i32 %i.d, 1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  call fastcc void @addClusterObj(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %i.i, ptr noundef nonnull byval(%struct.cinfo_t) align 8 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = sext i32 %i.l to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.m
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = tail call ptr @agroot(ptr noundef nonnull %1) #16
  %.not11 = icmp eq ptr %1, %i.n
  br i1 %.not11, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 5 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 105
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54, !range !56, !noundef !57
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !110  ; 6 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i8, ptr @Flip, align 1, !tbaa !44, !range !56, !noalias !145, !noundef !57
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %..i = select i1 %i.x, ptr %i.z, ptr %i.y
  %.23.i = select i1 %i.x, ptr %i.y, ptr %i.z
  %.sink.i = load double, ptr %.23.i, align 8, !tbaa !14, !noalias !145 ; 2 uses
  %.sink22.i = load double, ptr %..i, align 8, !tbaa !14, !noalias !145 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store double %.sink22.i, ptr %i.aa, align 8, !tbaa !79, !noalias !145
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %.sink.i, ptr %i.ab, align 8, !tbaa !81, !noalias !145
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !75, !noalias !145
  %i.ad = insertelement <2 x double> poison, double %.sink22.i, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %.sink.i, i64 1 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, splat (double 5.000000e-01)
  %i.ag = load <2 x double>, ptr %i.v, align 8, !tbaa !14, !noalias !145
  %i.ah = fsub <2 x double> %i.ag, %i.af          ; 4 uses
  store <2 x double> %i.ah, ptr %i.v, align 8, !tbaa !14, !noalias !145
  %i.ai = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.aj = fcmp olt <2 x double> %i.ai, %i.ah
  %i.ak = select <2 x i1> %i.aj, <2 x double> %i.ai, <2 x double> %i.ah
  store <2 x double> %i.ak, ptr %2, align 8, !tbaa !14
  %i.al = load <2 x double>, ptr %.sroa.515.0..sroa_idx, align 8 ; 2 uses
  %i.am = fadd <2 x double> %i.ae, %i.ah          ; 2 uses
  %i.an = fcmp ogt <2 x double> %i.al, %i.am
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.al, <2 x double> %i.am
  store <2 x double> %i.ao, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !112
  ret void
}

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @late_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @placeLabels(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @printData(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !114, !range !56, !noundef !57
  %i.d = zext nneg i8 %i.c to i32
  %i.e = load double, ptr %4, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !151
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.13, i64 noundef %1, i64 noundef %3, i32 noundef %i.d, double noundef %i.e, double noundef %i.g, double noundef %i.i, double noundef %i.k) #18 ; 0 uses
  %i.m = load i8, ptr @Verbose, align 1, !tbaa !116
  %i.n = icmp ult i8 %i.m, 2
  br i1 %i.n, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.14, i64 8, i64 1, ptr %i.o) #20 ; 0 uses
  %.not39 = icmp eq i64 %1, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.17, i64 8, i64 1, ptr %i.q) #20 ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.03136 = phi i64 [ %i.ai, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.03235 = phi ptr [ %i.ah, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03235, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85   ; 3 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.v = load double, ptr %.03235, align 8, !tbaa !152
  %i.w = getelementptr inbounds nuw i8, ptr %.03235, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %.03235, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %.03235, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !81
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi ptr [ %i.ae, %bb.c ], [ @.str.16, %.lr.ph ]
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.15, i64 noundef %.03136, double noundef %i.v, double noundef %i.x, double noundef %i.z, double noundef %i.ab, ptr noundef %i.t, ptr noundef %i.af) #18 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03235, i64 40
  %i.ai = add nuw i64 %.03136, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

bb.e:                                             ; preds = %._crit_edge, %bb.e
  %.038 = phi i64 [ 0, %._crit_edge ], [ %i.az, %bb.e ] ; 2 uses
  %.03337 = phi ptr [ %2, %._crit_edge ], [ %i.ay, %bb.e ] ; 8 uses
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %.03337, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !84
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.03337, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %.03337, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !156
  %i.ar = load double, ptr %.03337, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw i8, ptr %.03337, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !158
  %i.au = getelementptr inbounds nuw i8, ptr %.03337, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !89
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.18, i64 noundef %.038, ptr noundef nonnull %.03337, i32 noundef %i.am, double noundef %i.ao, double noundef %i.aq, double noundef %i.ar, double noundef %i.at, ptr noundef %i.aw) #18 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03337, i64 48
  %i.az = add nuw i64 %.038, 1                    ; 2 uses
  %exitcond40.not = icmp eq i64 %i.az, %3
  br i1 %exitcond40.not, label %.loopexit, label %bb.e, !llvm.loop !159

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

declare void @updateBB(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @getsplinepoints(ptr noundef) local_unnamed_addr #5

declare void @gv_nodesize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #5

declare ptr @agnameof(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483646, 2147483649) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !116 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !116
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select45 = select i1 %i.d, i64 8192, i64 %i.e
  %i.f = add i64 %.fr, %1
  %spec.select34 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %spec.select45) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.h = icmp eq i64 %spec.select34, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %agxbsizeof.exit
  tail call void @free(ptr noundef %i.g) #16
  br label %gv_recalloc.exit

bb.c:                                             ; preds = %agxbsizeof.exit
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %spec.select34) #22 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.12, i64 noundef %spec.select34) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %spec.select34, %.fr
  br i1 %i.m, label %bb.f, label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select34, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add nsw i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #17 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.12, i64 noundef %spec.select) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit:                                   ; preds = %bb.g
  %i.u = zext i8 %.val.i to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !116
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.f, %bb.e, %bb.b, %gv_calloc.exit
  %spec.select3742 = phi i64 [ %spec.select, %gv_calloc.exit ], [ 0, %bb.b ], [ %spec.select34, %bb.e ], [ %spec.select34, %bb.f ]
  %.0 = phi ptr [ %i.q, %gv_calloc.exit ], [ null, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  store ptr %.0, ptr %0, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select3742, ptr %i.w, align 8, !tbaa !116
  store i8 -1, ptr %i.a, align 1, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { cold nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 16}
!9 = !{!"Agobj_s", !10, i64 0, !12, i64 16}
!10 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !11, i64 8}
!11 = !{!"long", !6, i64 0}
!12 = !{!"p1 _ZTS7Agrec_s", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !22, i64 24}
!18 = !{!"Agraphinfo_t", !19, i64 0, !21, i64 16, !22, i64 24, !23, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !25, i64 130, !6, i64 131, !5, i64 132, !15, i64 136, !15, i64 144, !26, i64 152, !13, i64 160, !27, i64 168, !13, i64 176, !28, i64 184, !5, i64 192, !30, i64 200, !30, i64 208, !30, i64 216, !31, i64 224, !26, i64 232, !26, i64 234, !5, i64 236, !33, i64 240, !34, i64 248, !35, i64 256, !36, i64 264, !34, i64 272, !5, i64 280, !35, i64 288, !35, i64 296, !37, i64 304, !35, i64 320, !35, i64 328, !5, i64 336, !5, i64 340, !25, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !28, i64 384, !25, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !25, i64 396}
!19 = !{!"Agrec_s", !20, i64 0, !12, i64 8}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!"p1 _ZTS8layout_t", !13, i64 0}
!22 = !{!"p1 _ZTS11textlabel_t", !13, i64 0}
!23 = !{!"", !24, i64 0, !24, i64 16}
!24 = !{!"pointf_s", !15, i64 0, !15, i64 8}
!25 = !{!"_Bool", !6, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!"p1 _ZTS5GVC_s", !13, i64 0}
!28 = !{!"p2 _ZTS8Agnode_s", !29, i64 0}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 double", !29, i64 0}
!31 = !{!"p3 double", !32, i64 0}
!32 = !{!"any p3 pointer", !29, i64 0}
!33 = !{!"p2 _ZTS8Agraph_s", !29, i64 0}
!34 = !{!"p1 _ZTS8Agraph_s", !13, i64 0}
!35 = !{!"p1 _ZTS8Agnode_s", !13, i64 0}
!36 = !{!"p1 _ZTS6rank_t", !13, i64 0}
!37 = !{!"nlist_t", !28, i64 0, !11, i64 8}
!38 = !{!18, !5, i64 236}
!39 = !{!18, !33, i64 240}
!40 = !{!34, !34, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!18, !5, i64 132}
!44 = !{!25, !25, i64 0}
!45 = !{!18, !26, i64 152}
!46 = !{!18, !6, i64 129}
!47 = !{!48, !22, i64 144}
!48 = !{!"Agnodeinfo_t", !19, i64 0, !49, i64 16, !13, i64 24, !24, i64 32, !15, i64 48, !15, i64 56, !23, i64 64, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !22, i64 136, !22, i64 144, !13, i64 152, !6, i64 160, !6, i64 161, !25, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !50, i64 176, !15, i64 184, !6, i64 192, !25, i64 193, !35, i64 200, !35, i64 208, !6, i64 216, !11, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !35, i64 240, !35, i64 248, !51, i64 256, !51, i64 272, !51, i64 288, !51, i64 304, !51, i64 320, !34, i64 336, !5, i64 344, !35, i64 352, !5, i64 360, !5, i64 364, !15, i64 368, !51, i64 376, !51, i64 392, !51, i64 408, !51, i64 424, !53, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!49 = !{!"p1 _ZTS10shape_desc", !13, i64 0}
!50 = !{!"p1 double", !13, i64 0}
!51 = !{!"elist", !52, i64 0, !11, i64 8}
!52 = !{!"p2 _ZTS8Agedge_s", !29, i64 0}
!53 = !{!"p1 _ZTS8Agedge_s", !13, i64 0}
!54 = !{!55, !25, i64 105}
!55 = !{!"textlabel_t", !20, i64 0, !20, i64 8, !20, i64 16, !5, i64 24, !15, i64 32, !24, i64 40, !24, i64 56, !24, i64 72, !6, i64 88, !6, i64 104, !25, i64 105, !25, i64 106}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!59, !22, i64 144}
!59 = !{!"Agedgeinfo_t", !19, i64 0, !60, i64 16, !61, i64 24, !61, i64 72, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !6, i64 152, !6, i64 153, !6, i64 154, !6, i64 155, !6, i64 156, !53, i64 160, !13, i64 168, !15, i64 176, !15, i64 184, !62, i64 192, !6, i64 208, !25, i64 209, !26, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !26, i64 224, !5, i64 228, !53, i64 232}
!60 = !{!"p1 _ZTS7splines", !13, i64 0}
!61 = !{!"port", !24, i64 0, !15, i64 16, !13, i64 24, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !6, i64 36, !6, i64 37, !20, i64 40}
!62 = !{!"Ppoly_t", !63, i64 0, !11, i64 8}
!63 = !{!"p1 _ZTS8pointf_s", !13, i64 0}
!64 = !{!59, !60, i64 16}
!65 = !{!59, !22, i64 128}
!66 = !{!59, !22, i64 136}
!67 = !{!59, !22, i64 120}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"addNodeObj: argument 0"}
!74 = distinct !{!74, !"addNodeObj"}
!75 = !{i64 0, i64 8, !14, i64 8, i64 8, !14}
!76 = !{!77}
!77 = distinct !{!77, !78, !"addLabelObj: argument 0"}
!78 = distinct !{!78, !"addLabelObj"}
!79 = !{!80, !15, i64 16}
!80 = !{!"", !24, i64 0, !24, i64 16, !13, i64 32}
!81 = !{!80, !15, i64 24}
!82 = !{!83, !13, i64 32}
!83 = !{!"", !24, i64 0, !24, i64 16, !13, i64 32, !6, i64 40}
!84 = !{!83, !6, i64 40}
!85 = !{!80, !13, i64 32}
!86 = !{!87}
!87 = distinct !{!87, !88, !"addLabelObj: argument 0"}
!88 = distinct !{!88, !"addLabelObj"}
!89 = !{!55, !20, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"addLabelObj: argument 0"}
!92 = distinct !{!92, !"addLabelObj"}
!93 = !{!94, !95, i64 0}
!94 = !{!"splines", !95, i64 0, !11, i64 8, !23, i64 16}
!95 = !{!"p1 _ZTS6bezier", !13, i64 0}
!96 = !{!97, !5, i64 16}
!97 = !{!"bezier", !63, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !24, i64 24, !24, i64 40}
!98 = !{!97, !63, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"addLabelObj: argument 0"}
!101 = distinct !{!101, !"addLabelObj"}
!102 = !{!94, !11, i64 8}
!103 = !{!97, !5, i64 20}
!104 = !{!97, !11, i64 8}
!105 = !{!106}
!106 = distinct !{!106, !107, !"addLabelObj: argument 0"}
!107 = distinct !{!107, !"addLabelObj"}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42}
!110 = !{!111, !13, i64 32}
!111 = !{!"", !23, i64 0, !13, i64 32}
!112 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !113}
!113 = !{!13, !13, i64 0}
!114 = !{!115, !25, i64 32}
!115 = !{!"", !23, i64 0, !25, i64 32}
!116 = !{!6, !6, i64 0}
!117 = distinct !{!117, !42}
!118 = !{!18, !6, i64 395}
!119 = !{!18, !15, i64 48}
!120 = !{!18, !15, i64 32}
!121 = !{!18, !15, i64 56}
!122 = !{!18, !15, i64 40}
!123 = !{!24, !15, i64 0}
!124 = !{!59, !6, i64 152}
!125 = !{!126, !35, i64 56}
!126 = !{!"Agedge_s", !9, i64 0, !127, i64 24, !127, i64 40, !35, i64 56}
!127 = !{!"dtlink_s_", !128, i64 0, !6, i64 8}
!128 = !{!"p1 _ZTS9dtlink_s_", !13, i64 0}
!129 = !{!63, !63, i64 0}
!130 = !{!11, !11, i64 0}
!131 = distinct !{!131, !42}
!132 = distinct !{!132, !42}
!133 = distinct !{!133, !42}
!134 = distinct !{!134, !42}
!135 = !{!136, !11, i64 16}
!136 = !{!"", !13, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!137 = !{!24, !15, i64 8}
!138 = !{!139, !20, i64 40}
!139 = !{!"", !6, i64 0, !13, i64 32, !20, i64 40}
!140 = !{!20, !20, i64 0}
!141 = distinct !{!141, !42}
!142 = distinct !{!142, !42}
!143 = distinct !{!143, !42}
!144 = distinct !{!144, !42}
!145 = !{!146}
!146 = distinct !{!146, !147, !"addLabelObj: argument 0"}
!147 = distinct !{!147, !"addLabelObj"}
!148 = !{!115, !15, i64 0}
!149 = !{!115, !15, i64 8}
!150 = !{!115, !15, i64 16}
!151 = !{!115, !15, i64 24}
!152 = !{!80, !15, i64 0}
!153 = !{!80, !15, i64 8}
!154 = distinct !{!154, !42}
!155 = !{!83, !15, i64 16}
!156 = !{!83, !15, i64 24}
!157 = !{!83, !15, i64 0}
!158 = !{!83, !15, i64 8}
!159 = distinct !{!159, !42}
end_hunk_1
