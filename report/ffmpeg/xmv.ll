inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xmv_read_packet:bb.a
  store i32 1464686130, ptr %i.at, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.aw = load <2 x i32>, ptr %i.au, align 8, !tbaa !76
  store <2 x i32> %i.aw, ptr %i.av, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !79
  store i32 1, ptr %i.ah, align 8, !tbaa !63
  %.pre.i.i = load i32, ptr %i.ai, align 8, !tbaa !61
  %.pre156.i.i = load i32, ptr %i.am, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.be = phi i32 [ %.pre156.i.i, %bb.h ], [ %i.al, %bb.f ]
  %i.bf = phi i32 [ %.pre.i.i, %bb.h ], [ %i.ag, %bb.f ]
  %i.bg = load i16, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %i.bh = zext i16 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 2
  %i.bj = sub i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.ai, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store i16 0, ptr %i.bk, align 8, !tbaa !80
  %.not131.i.i = icmp eq i32 %i.be, 0
  br i1 %.not131.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.am, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !56
  %i.bn = icmp ugt i16 %i.bm, 1
  %i.bo = zext i1 %i.bn to i16
  store i16 %i.bo, ptr %i.bk, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not149.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not149.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 36 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !40 ; 12 uses
  %i.bs = call i32 @ffio_read_size(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 4) #7 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %xmv_process_packet_header.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !81
  %.not134.peel.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not134.peel.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #7 ; 5 uses
  %.not135.not.peel.i.i = icmp eq ptr %i.bv, null
  br i1 %.not135.not.peel.i.i, label %xmv_process_packet_header.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !64 ; 8 uses
  store i32 1, ptr %i.bx, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !43
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 152
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !45
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !85
  %i.ct = mul nuw nsw i32 %i.ch, 36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 156
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !86
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.bv, i32 noundef 32, i32 noundef 1, i32 noundef %i.ck) #7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !50
  %i.cy = load i32, ptr %i.bq, align 4, !tbaa !38
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !77
  store i32 1, ptr %i.br, align 8, !tbaa !81
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.db = load i32, ptr %i.a, align 4, !tbaa !14
  %i.dc = and i32 %i.db, 8388607                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !87
  %i.de = load i32, ptr %i.am, align 4, !tbaa !58
  %i.df = udiv i32 %i.dc, %i.de                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !48
  %i.dj = urem i32 %i.df, %i.di
  %i.dk = sub nsw i32 %i.df, %i.dj
  store i32 %i.dk, ptr %i.dg, align 8, !tbaa !51
  %i.dl = load i16, ptr %i.z, align 8, !tbaa !39
  %i.dm = icmp ugt i16 %i.dl, 1
  br i1 %i.dm, label %.peel.next.i.i, label %._crit_edge.i.i

.peel.next.i.i:                                   ; preds = %bb.o, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 1, %bb.o ] ; 3 uses
  %i.dn = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %indvars.iv.i.i ; 12 uses
  %i.dp = call i32 @ffio_read_size(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 4) #7 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %xmv_process_packet_header.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.peel.next.i.i
  %i.dr = load i32, ptr %i.do, align 8, !tbaa !81
  %.not134.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not134.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ds = call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 5 uses
  %.not135.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not135.not.i.i, label %xmv_process_packet_header.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 8 uses
  store i32 1, ptr %i.du, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !41
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !75
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 10
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !43
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 132
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !82
  %i.eg = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !44 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 152
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !83
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ek = load i16, ptr %i.ej, align 8, !tbaa !45
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  store i32 %i.el, ptr %i.em, align 8, !tbaa !84
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !85
  %i.eq = mul nuw nsw i32 %i.ee, 36
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 156
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !86
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.ds, i32 noundef 32, i32 noundef 1, i32 noundef %i.eh) #7
  %i.es = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !78
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !50
  %i.ev = load i32, ptr %i.bq, align 4, !tbaa !38
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !77
  store i32 1, ptr %i.do, align 8, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !14
  %i.ez = and i32 %i.ey, 8388607                  ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.do, i64 44 ; 2 uses
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !87
  %i.fb = icmp eq i32 %i.ez, 0
  br i1 %i.fb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fc = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %indvars.iv.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 274877906924
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !87 ; 2 uses
  store i32 %i.ff, ptr %i.fa, align 4, !tbaa !87
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fg = phi i32 [ %i.ff, %bb.t ], [ %i.ez, %bb.s ]
  %i.fh = load i32, ptr %i.am, align 4, !tbaa !58
  %i.fi = udiv i32 %i.fg, %i.fh                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !48
  %i.fm = urem i32 %i.fi, %i.fl
  %i.fn = sub i32 %i.fi, %i.fm
  store i32 %i.fn, ptr %i.fj, align 8, !tbaa !51
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fo = load i16, ptr %i.z, align 8, !tbaa !39
  %i.fp = zext i16 %i.fo to i64
  %i.fq = icmp samesign ult i64 %indvars.iv.next.i.i, %i.fp
  br i1 %i.fq, label %.peel.next.i.i, label %._crit_edge.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.o, %bb.k
  %i.fr = call i64 @avio_seek(ptr noundef %i.aa, i64 noundef 0, i32 noundef 1) #7 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 3 uses
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !90
  %i.ft = load i32, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.fu = load i16, ptr %i.z, align 8, !tbaa !39  ; 3 uses
  %.not150.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not150.i.i, label %._crit_edge148.i.i, label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %._crit_edge.i.i
  %i.fv = zext i32 %i.ft to i64
  %i.fw = add i64 %i.fr, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !40 ; 5 uses
  %wide.trip.count.i.i = zext i16 %i.fu to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.fz = icmp ult i16 %i.fu, 4
  br i1 %i.fz, label %.epil.preheader, label %.lr.ph147.i.i.new

.lr.ph147.i.i.new:                                ; preds = %.lr.ph147.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 65532
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph147.i.i.new
  %indvars.iv153.i.i = phi i64 [ 0, %.lr.ph147.i.i.new ], [ %indvars.iv.next154.i.i.3, %bb.v ] ; 5 uses
  %.0116145.i.i = phi i64 [ %i.fw, %.lr.ph147.i.i.new ], [ %i.gx, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph147.i.i.new ], [ %niter.next.3, %bb.v ]
  %i.ga = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %indvars.iv153.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i64 %.0116145.i.i, ptr %i.gb, align 8, !tbaa !91
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !87
  %i.ge = zext i32 %i.gd to i64
  %i.gf = add i64 %.0116145.i.i, %i.ge            ; 2 uses
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %indvars.iv153.i.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  store i64 %i.gf, ptr %i.gh, align 8, !tbaa !91
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 108
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !87
  %i.gk = zext i32 %i.gj to i64
  %i.gl = add i64 %i.gf, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %indvars.iv153.i.i ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 176
  store i64 %i.gl, ptr %i.gn, align 8, !tbaa !91
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 172
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !87
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add i64 %i.gl, %i.gq                    ; 2 uses
  %i.gs = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %indvars.iv153.i.i ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 240
  store i64 %i.gr, ptr %i.gt, align 8, !tbaa !91
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 236
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !87
  %i.gw = zext i32 %i.gv to i64
  %i.gx = add i64 %i.gr, %i.gw                    ; 2 uses
  %indvars.iv.next154.i.i.3 = add nuw nsw i64 %indvars.iv153.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge148.i.i.loopexit.unr-lcssa, label %bb.v, !llvm.loop !92

._crit_edge148.i.i.loopexit.unr-lcssa:            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge148.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge148.i.i.loopexit.unr-lcssa, %.lr.ph147.i.i
  %indvars.iv153.i.i.epil.init = phi i64 [ 0, %.lr.ph147.i.i ], [ %indvars.iv.next154.i.i.3, %._crit_edge148.i.i.loopexit.unr-lcssa ]
  %.0116145.i.i.epil.init = phi i64 [ %i.fw, %.lr.ph147.i.i ], [ %i.gx, %._crit_edge148.i.i.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv153.i.i.epil = phi i64 [ %indvars.iv153.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next154.i.i.epil, %bb.w ] ; 2 uses
  %.0116145.i.i.epil = phi i64 [ %.0116145.i.i.epil.init, %.epil.preheader ], [ %i.hd, %bb.w ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.gy = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %indvars.iv153.i.i.epil ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  store i64 %.0116145.i.i.epil, ptr %i.gz, align 8, !tbaa !91
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !87
  %i.hc = zext i32 %i.hb to i64
  %i.hd = add i64 %.0116145.i.i.epil, %i.hc
  %indvars.iv.next154.i.i.epil = add nuw nsw i64 %indvars.iv153.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge148.i.i, label %bb.w, !llvm.loop !93

._crit_edge148.i.i:                               ; preds = %._crit_edge148.i.i.loopexit.unr-lcssa, %bb.w, %._crit_edge.i.i
  %.not132.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not132.i.i, label %xmv_fetch_new_packet.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge148.i.i
  %i.he = load i32, ptr %i.an, align 8, !tbaa !62
  %.not133.i.i = icmp eq i32 %i.he, 0
  br i1 %.not133.i.i, label %xmv_fetch_new_packet.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hf = getelementptr inbounds nuw i8, ptr %i.z, i64 84 ; 2 uses
  %i.hg = call i32 @avio_rl32(ptr noundef %i.aa) #7 ; 2 uses
  %trunc.i.i.i = trunc i32 %i.hg to i16
  %i.hh = and i16 %trunc.i.i.i, 63
  %mask.i.i.i = call i16 @llvm.bitreverse.i16(i16 %i.hh)
  %i.hi = zext i16 %mask.i.i.i to i32
  %i.hj = shl i32 %i.hg, 1
  %i.hk = and i32 %i.hj, 896
  %i.hl = or disjoint i32 %i.hk, %i.hi
  %i.hm = call i32 @llvm.bswap.i32(i32 %i.hl)     ; 2 uses
  store i32 %i.hm, ptr %i.hf, align 4, !tbaa !14
  %i.hn = load i32, ptr %i.ai, align 8, !tbaa !61
  %i.ho = add i32 %i.hn, -4
  store i32 %i.ho, ptr %i.ai, align 8, !tbaa !61
  %i.hp = load i64, ptr %i.fs, align 8, !tbaa !90
  %i.hq = add i64 %i.hp, 4
  store i64 %i.hq, ptr %i.fs, align 8, !tbaa !90
  %i.hr = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !79 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  br i1 %i.ht, label %bb.z, label %xmv_fetch_new_packet.exit

bb.z:                                             ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !95
  %i.hw = icmp ult i32 %i.hs, %i.hv
  br i1 %i.hw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 389) #7
  call void @abort() #8
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !96
  %i.hz = zext nneg i32 %i.hs to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !97
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !64 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !99
  %i.ig = icmp slt i32 %i.if, 4
  br i1 %i.ig, label %bb.ac, label %.thread140.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ih = call i32 @ff_alloc_extradata(ptr noundef nonnull %i.id, i32 noundef 4) #7 ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %xmv_process_packet_header.exit.thread.i, label %..thread140_crit_edge.i.i

..thread140_crit_edge.i.i:                        ; preds = %bb.ac
  %.pre157.i.i = load ptr, ptr %i.ic, align 8, !tbaa !64
  %.pre158.i.i = load i32, ptr %i.hf, align 4
  br label %.thread140.i.i

.thread140.i.i:                                   ; preds = %..thread140_crit_edge.i.i, %bb.ab
  %i.ij = phi i32 [ %.pre158.i.i, %..thread140_crit_edge.i.i ], [ %i.hm, %bb.ab ]
  %i.ik = phi ptr [ %.pre157.i.i, %..thread140_crit_edge.i.i ], [ %i.id, %bb.ab ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !100
  store i32 %i.ij, ptr %i.im, align 1
  br label %xmv_fetch_new_packet.exit

xmv_process_packet_header.exit.thread.i:          ; preds = %bb.q, %.peel.next.i.i, %bb.ac, %bb.m, %.lr.ph.i.i, %bb.g, %bb.e
  %.7.i.ph.i = phi i32 [ %i.ih, %bb.ac ], [ -12, %bb.g ], [ -12, %bb.m ], [ %i.bs, %.lr.ph.i.i ], [ %i.ad, %bb.e ], [ -12, %bb.q ], [ %i.dp, %.peel.next.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %xmv_fetch_new_packet.exit.thread

xmv_fetch_new_packet.exit:                        ; preds = %._crit_edge148.i.i, %bb.x, %bb.y, %.thread140.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.in = load i64, ptr %i.p, align 8, !tbaa !59
  %i.io = load i32, ptr %i.t, align 4, !tbaa !60
  %i.ip = zext i32 %i.io to i64
  %i.iq = add i64 %i.in, %i.ip
  store i64 %i.iq, ptr %i.n, align 8, !tbaa !54
  br label %bb.ad

bb.ad:                                            ; preds = %xmv_fetch_new_packet.exit, %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.is = load i16, ptr %i.ir, align 8, !tbaa !80 ; 2 uses
  %i.it = icmp eq i16 %i.is, 0
  br i1 %i.it, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.b, align 8, !tbaa !15  ; 5 uses
  %i.iu = getelementptr i8, ptr %0, i64 32
  %.val26 = load ptr, ptr %i.iu, align 8, !tbaa !30 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 4 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !101
  %i.ix = call i64 @avio_seek(ptr noundef %.val26, i64 noundef %i.iw, i32 noundef 0) #7
  %i.iy = load i64, ptr %i.iv, align 8, !tbaa !101
  %.not.i29 = icmp eq i64 %i.ix, %i.iy
  br i1 %.not.i29, label %bb.af, label %xmv_fetch_video_packet.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.iz = call i32 @avio_rl32(ptr noundef %.val26) #7 ; 3 uses
  %i.ja = shl i32 %i.iz, 2
  %i.jb = and i32 %i.ja, 524284                   ; 2 uses
  %i.jc = add nuw nsw i32 %i.jb, 4                ; 3 uses
  %i.jd = lshr i32 %i.iz, 17
  %i.je = add nuw nsw i32 %i.jb, 8                ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !102
  %i.jh = icmp ugt i32 %i.je, %i.jg
  br i1 %i.jh, label %xmv_fetch_video_packet.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ji = call i32 @av_get_packet(ptr noundef %.val26, ptr noundef %1, i32 noundef %i.jc) #7 ; 2 uses
  %.not46.i = icmp eq i32 %i.ji, %i.jc
  br i1 %.not46.i, label %.lr.ph.preheader.i, label %xmv_fetch_video_packet.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !103 ; 5 uses
  %i.jl = zext nneg i32 %i.jc to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  %i.jn = ptrtoaddr ptr %i.jk to i64              ; 2 uses
  %i.jo = shl i32 %i.iz, 2
  %i.jp = and i32 %i.jo, 524284
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = add nuw i64 %i.jn, %i.jq
  %i.js = add i64 %i.jr, 3
  %i.jt = sub i64 %i.js, %i.jn                    ; 2 uses
  %i.ju = lshr i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jt, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.jv, 9223372036854775800     ; 3 uses
  %i.jw = shl i64 %n.vec, 2
  %i.jx = getelementptr i8, ptr %i.jk, i64 %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.jk, i64 %i.jy ; 3 uses
  %i.jz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !tbaa !14
  %wide.load56 = load <4 x i32>, ptr %i.jz, align 1, !tbaa !14
  %i.ka = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.kb = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load56)
  store <4 x i32> %i.ka, ptr %next.gep, align 1, !tbaa !14
  store <4 x i32> %i.kb, ptr %i.jz, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.01.i.ph = phi ptr [ %i.jk, %.lr.ph.preheader.i ], [ %i.jx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01.i = phi ptr [ %i.kf, %.lr.ph.i ], [ %.01.i.ph, %.lr.ph.i.preheader ] ; 3 uses
end_hunk_0
