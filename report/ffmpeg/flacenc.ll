inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@flac_encode_frame:bb.a
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.am = shl i32 %i.al, 5
  %i.an = add i32 %i.am, 4064
  %i.ao = shl i32 %i.aa, 8
  %i.ap = or i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 7350000
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 652
  %i.at = load i32, ptr %i.as, align 4, !tbaa !43
  %i.au = add i32 %i.at, 4095
  %i.av = or i32 %i.ap, %i.au
  %i.aw = shl i32 %i.av, 20
  %i.ax = lshr i32 %i.aj, 4
  %i.ay = and i32 %i.ax, 1048575
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %i.af, align 1, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bc = load i64, ptr %i.ag, align 16, !tbaa !74 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = shl i32 %i.bd, 16
  %i.bf = and i32 %i.be, 251658240
  %i.bg = shl i32 %i.aj, 28
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = lshr exact i32 %i.bh, 24
  %i.bj = trunc nuw i32 %i.bi to i8
  store i8 %i.bj, ptr %i.bb, align 1, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.bl = trunc i64 %i.bc to i8
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 7387816 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !75
  %.not81 = icmp eq i32 %i.bo, 0
  br i1 %.not81, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !65
  %i.br = sext i32 %i.bq to i64
  %i.bs = tail call ptr @av_packet_new_side_data(ptr noundef %1, i32 noundef 1, i64 noundef %i.br) #13 ; 2 uses
  %.not82.not = icmp eq ptr %i.bs, null
  br i1 %.not82.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.bu = load i32, ptr %i.bp, align 8, !tbaa !65
  %i.bv = sext i32 %i.bu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 7387824
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !77
  store i32 1, ptr %3, align 4, !tbaa !47
  store i32 1, ptr %i.bn, align 8, !tbaa !75
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !79 ; 26 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 7349920 ; 16 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !84
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !46 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !43 ; 3 uses
  %i.ci = icmp eq i32 %i.cf, 2
  %i.cj = shl nsw i32 %i.ch, 1
  %i.ck = or disjoint i32 %i.cj, 1
  %i.cl = mul nsw i32 %i.ch, %i.cf
  %.pn14.i = select i1 %i.ci, i32 %i.ck, i32 %i.cl
  %i.cm = add nsw i32 %i.ch, 14
  %i.cn = sdiv i32 %i.cm, 8
  %i.co = mul nsw i32 %i.cn, %i.cf
  %.pn.in.in.i = mul nsw i32 %.pn14.i, %i.ca
  %.pn.in.i = add nsw i32 %.pn.in.in.i, 7
  %.pn.i = sdiv i32 %.pn.in.i, 8
  %.0.i = add i32 %i.co, 18
  %i.cp = add i32 %.0.i, %.pn.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 12 uses
  %i.cs = load i32, ptr @ff_flac_blocksize_table, align 16, !tbaa !47
  %i.ct = icmp eq i32 %i.ca, %i.cs
  br i1 %i.ct, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.034.lcssa.wide.i = phi i32 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 8, %bb.o ], [ 9, %bb.p ], [ 10, %bb.q ], [ 11, %bb.r ], [ 12, %bb.s ], [ 13, %bb.t ], [ 14, %bb.u ], [ 15, %bb.v ]
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 7349924
  store i32 %.034.lcssa.wide.i, ptr %i.cu, align 4, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 7349928
  store i32 0, ptr %i.cv, align 8, !tbaa !47
  br label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 4), align 4, !tbaa !47
  %i.cx = icmp eq i32 %i.ca, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 8), align 8, !tbaa !47
  %i.cz = icmp eq i32 %i.ca, %i.cy
  br i1 %i.cz, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 12), align 4, !tbaa !47
  %i.db = icmp eq i32 %i.ca, %i.da
  br i1 %i.db, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 16), align 16, !tbaa !47
  %i.dd = icmp eq i32 %i.ca, %i.dc
  br i1 %i.dd, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 20), align 4, !tbaa !47
  %i.df = icmp eq i32 %i.ca, %i.de
  br i1 %i.df, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 24), align 8, !tbaa !47
  %i.dh = icmp eq i32 %i.ca, %i.dg
  br i1 %i.dh, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 28), align 4, !tbaa !47
  %i.dj = icmp eq i32 %i.ca, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 32), align 16, !tbaa !47
  %i.dl = icmp eq i32 %i.ca, %i.dk
  br i1 %i.dl, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 36), align 4, !tbaa !47
  %i.dn = icmp eq i32 %i.ca, %i.dm
  br i1 %i.dn, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 40), align 8, !tbaa !47
  %i.dp = icmp eq i32 %i.ca, %i.do
  br i1 %i.dp, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 44), align 4, !tbaa !47
  %i.dr = icmp eq i32 %i.ca, %i.dq
  br i1 %i.dr, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 48), align 16, !tbaa !47
  %i.dt = icmp eq i32 %i.ca, %i.ds
  br i1 %i.dt, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 52), align 4, !tbaa !47
  %i.dv = icmp eq i32 %i.ca, %i.du
  br i1 %i.dv, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 56), align 8, !tbaa !47
  %i.dx = icmp eq i32 %i.ca, %i.dw
  br i1 %i.dx, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 60), align 4, !tbaa !47
  %i.dz = icmp eq i32 %i.ca, %i.dy
  br i1 %i.dz, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !85
  %i.ea = icmp slt i32 %i.ca, 257
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 7349924 ; 2 uses
  %i.ec = add nsw i32 %i.ca, -1                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 7349928 ; 2 uses
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 6, ptr %i.eb, align 4, !tbaa !47
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !47
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 7, ptr %i.eb, align 4, !tbaa !47
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.thread.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 8 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !46 ; 12 uses
  %i.eg = icmp slt i32 %i.ef, 1                   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 7350000
  %.pre = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !31 ; 5 uses
  br i1 %i.eg, label %init_frame.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 652
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !43 ; 11 uses
  %i.ej = icmp sgt i32 %i.ei, 16
  %wide.trip.count45.i = zext nneg i32 %i.ef to i64 ; 4 uses
  br i1 %i.ej, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count45.i, 3     ; 3 uses
  %i.ek = icmp ult i32 %i.ef, 4
  br i1 %i.ek, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %wide.trip.count45.i, 2147483644
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter610 = and i64 %wide.trip.count45.i, 3  ; 3 uses
  %i.el = icmp ult i32 %i.ef, 4
  br i1 %i.el, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter614 = and i64 %wide.trip.count45.i, 2147483644
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %indvars.iv.next43.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %niter615 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter615.next.3, %.lr.ph.split.us.i ]
  %i.em = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv42.i ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.ei, ptr %i.eo, align 8, !tbaa !89
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  store i32 5, ptr %i.ep, align 8, !tbaa !90
  %i.eq = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv42.i ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 853204
  store i32 0, ptr %i.er, align 4, !tbaa !86
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 853200
  store i32 %i.ei, ptr %i.es, align 8, !tbaa !89
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 853344
  store i32 5, ptr %i.et, align 8, !tbaa !90
  %i.eu = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv42.i ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1706396
  store i32 0, ptr %i.ev, align 4, !tbaa !86
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1706392
  store i32 %i.ei, ptr %i.ew, align 8, !tbaa !89
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 1706536
  store i32 5, ptr %i.ex, align 8, !tbaa !90
  %i.ey = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv42.i ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2559588
  store i32 0, ptr %i.ez, align 4, !tbaa !86
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 2559584
  store i32 %i.ei, ptr %i.fa, align 8, !tbaa !89
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 2559728
  store i32 5, ptr %i.fb, align 8, !tbaa !90
  %indvars.iv.next43.i.3 = add nuw nsw i64 %indvars.iv42.i, 4 ; 2 uses
  %niter615.next.3 = add i64 %niter615, 4         ; 2 uses
  %niter615.ncmp.3 = icmp eq i64 %niter615.next.3, %unroll_iter614
  br i1 %niter615.ncmp.3, label %init_frame.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !91

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  %i.fc = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv.i ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !86
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 %i.ei, ptr %i.fe, align 8, !tbaa !89
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  store i32 4, ptr %i.ff, align 8, !tbaa !90
  %i.fg = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv.i ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 853204
  store i32 0, ptr %i.fh, align 4, !tbaa !86
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 853200
  store i32 %i.ei, ptr %i.fi, align 8, !tbaa !89
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 853344
  store i32 4, ptr %i.fj, align 8, !tbaa !90
  %i.fk = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv.i ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1706396
  store i32 0, ptr %i.fl, align 4, !tbaa !86
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 1706392
  store i32 %i.ei, ptr %i.fm, align 8, !tbaa !89
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1706536
  store i32 4, ptr %i.fn, align 8, !tbaa !90
  %i.fo = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv.i ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2559588
  store i32 0, ptr %i.fp, align 4, !tbaa !86
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 2559584
  store i32 %i.ei, ptr %i.fq, align 8, !tbaa !89
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 2559728
  store i32 4, ptr %i.fr, align 8, !tbaa !90
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %init_frame.exit.loopexit608.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !91

init_frame.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.i
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod612.not, label %init_frame.exit, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %init_frame.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv42.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next43.i.3, %init_frame.exit.loopexit.unr-lcssa ]
  %lcmp.mod613 = icmp ne i64 %xtraiter610, 0
  tail call void @llvm.assume(i1 %lcmp.mod613)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv42.i.epil = phi i64 [ %indvars.iv.next43.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv42.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter611 = phi i64 [ %epil.iter611.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.fs = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv42.i.epil ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !86
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 %i.ei, ptr %i.fu, align 8, !tbaa !89
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 152
  store i32 5, ptr %i.fv, align 8, !tbaa !90
  %indvars.iv.next43.i.epil = add nuw nsw i64 %indvars.iv42.i.epil, 1
  %epil.iter611.next = add i64 %epil.iter611, 1   ; 2 uses
  %epil.iter611.cmp.not = icmp eq i64 %epil.iter611.next, %xtraiter610
  br i1 %epil.iter611.cmp.not, label %init_frame.exit, label %.lr.ph.split.us.i.epil, !llvm.loop !92

init_frame.exit.loopexit608.unr-lcssa:            ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %init_frame.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %init_frame.exit.loopexit608.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.3, %init_frame.exit.loopexit608.unr-lcssa ]
  %lcmp.mod609 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod609)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [853192 x i8], ptr %i.cr, i64 %indvars.iv.i.epil ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !86
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 %i.ei, ptr %i.fy, align 8, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  store i32 4, ptr %i.fz, align 8, !tbaa !90
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %init_frame.exit, label %.lr.ph.split.i.epil, !llvm.loop !94

init_frame.exit:                                  ; preds = %init_frame.exit.loopexit608.unr-lcssa, %.lr.ph.split.i.epil, %init_frame.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 7349940 ; 2 uses
  store i32 0, ptr %i.ga, align 4, !tbaa !95
  %i.gb = load ptr, ptr %2, align 8, !tbaa !96    ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 7350000 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre, i64 348
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !42
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %.preheader34.i, label %bb.ab

.preheader34.i:                                   ; preds = %init_frame.exit
  %i.gg = icmp slt i32 %i.ca, 1
  %brmerge = or i1 %i.eg, %i.gg
  br i1 %brmerge, label %copy_samples.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader34.i
  %wide.trip.count64.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter624 = and i64 %wide.trip.count64.i, 3  ; 3 uses
  %i.gh = add nsw i32 %i.ef, -1
  %i.gi = icmp ult i32 %i.gh, 3
  %unroll_iter629 = and i64 %wide.trip.count64.i, 2147483644
  %lcmp.mod626.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod628 = icmp ne i64 %xtraiter624, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge43.i, %.preheader.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge43.i ] ; 6 uses
  %.03045.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next58.i.lcssa, %._crit_edge43.i ] ; 2 uses
  br i1 %i.gi, label %.epil.preheader623, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv59.i.a = phi i64 [ %indvars.iv.next60.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.3, %.preheader.i.new ], [ %.03045.i, %.preheader.i ] ; 5 uses
  %niter630 = phi i64 [ %niter630.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %indvars.iv57.i
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !97
  %i.gl = sext i16 %i.gk to i32
  %i.gm = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv59.i.a
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 328968
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv66.i
  store i32 %i.gl, ptr %i.go, align 4, !tbaa !47
  %i.gp = getelementptr [2 x i8], ptr %i.gb, i64 %indvars.iv57.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !97
  %i.gs = sext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv59.i.a
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1182160
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv66.i
  store i32 %i.gs, ptr %i.gv, align 4, !tbaa !47
  %i.gw = getelementptr [2 x i8], ptr %i.gb, i64 %indvars.iv57.i
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !97
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv59.i.a
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 2035352
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv66.i
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !47
  %i.hd = getelementptr [2 x i8], ptr %i.gb, i64 %indvars.iv57.i
  %i.he = getelementptr i8, ptr %i.hd, i64 6
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !97
  %i.hg = sext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv59.i.a
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2888544
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv66.i
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !47
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i.a, 4 ; 2 uses
  %indvars.iv.next58.i.3 = add nsw i64 %indvars.iv57.i, 4 ; 3 uses
  %niter630.next.3 = add i64 %niter630, 4         ; 2 uses
  %niter630.ncmp.3 = icmp eq i64 %niter630.next.3, %unroll_iter629
  br i1 %niter630.ncmp.3, label %._crit_edge43.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !99

._crit_edge43.i.unr-lcssa:                        ; preds = %.preheader.i.new
  br i1 %lcmp.mod626.not, label %._crit_edge43.i, label %.epil.preheader623

.epil.preheader623:                               ; preds = %._crit_edge43.i.unr-lcssa, %.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next60.i.3, %._crit_edge43.i.unr-lcssa ]
  %indvars.iv57.i.epil.init = phi i64 [ %.03045.i, %.preheader.i ], [ %indvars.iv.next58.i.3, %._crit_edge43.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod628)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader623
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv59.i.epil.init, %.epil.preheader623 ], [ %indvars.iv.next60.i.epil, %bb.aa ] ; 2 uses
  %indvars.iv57.i.epil = phi i64 [ %indvars.iv57.i.epil.init, %.epil.preheader623 ], [ %indvars.iv.next58.i.epil, %bb.aa ] ; 2 uses
  %epil.iter625 = phi i64 [ 0, %.epil.preheader623 ], [ %epil.iter625.next, %bb.aa ]
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %indvars.iv57.i.epil
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !97
  %i.hm = sext i16 %i.hl to i32
  %i.hn = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv59.i.epil
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 328968
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv66.i
  store i32 %i.hm, ptr %i.hp, align 4, !tbaa !47
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %indvars.iv.next58.i.epil = add nsw i64 %indvars.iv57.i.epil, 1 ; 2 uses
  %epil.iter625.next = add i64 %epil.iter625, 1   ; 2 uses
  %epil.iter625.cmp.not = icmp eq i64 %epil.iter625.next, %xtraiter624
  br i1 %epil.iter625.cmp.not, label %._crit_edge43.i, label %bb.aa, !llvm.loop !100

._crit_edge43.i:                                  ; preds = %bb.aa, %._crit_edge43.i.unr-lcssa
  %indvars.iv.next58.i.lcssa = phi i64 [ %indvars.iv.next58.i.3, %._crit_edge43.i.unr-lcssa ], [ %indvars.iv.next58.i.epil, %bb.aa ]
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.hq = load i32, ptr %i.cb, align 16, !tbaa !85 ; 2 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next67.i, %i.hr
  br i1 %i.hs, label %.preheader.i, label %copy_samples.exit, !llvm.loop !101

bb.ab:                                            ; preds = %init_frame.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre, i64 652
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !43
  %i.hv = sub nsw i32 32, %i.hu                   ; 3 uses
  %i.hw = icmp slt i32 %i.ca, 1
  %brmerge133 = or i1 %i.eg, %i.hw
  br i1 %brmerge133, label %copy_samples.exit, label %.preheader35.preheader.i

.preheader35.preheader.i:                         ; preds = %bb.ab
  %wide.trip.count.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter616 = and i64 %wide.trip.count.i, 1
  %i.hx = icmp eq i32 %i.ef, 1
  %unroll_iter621 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  %lcmp.mod620 = trunc i32 %i.ef to i1
  br label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge.i, %.preheader35.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader35.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 4 uses
  %.239.i = phi i64 [ 0, %.preheader35.preheader.i ], [ %indvars.iv.next.i85.lcssa, %._crit_edge.i ] ; 2 uses
  br i1 %i.hx, label %.epil.preheader, label %.preheader35.i.new

.preheader35.i.new:                               ; preds = %.preheader35.i, %.preheader35.i.new
  %indvars.iv49.i.a = phi i64 [ %indvars.iv.next50.i.1.a, %.preheader35.i.new ], [ 0, %.preheader35.i ] ; 3 uses
  %indvars.iv.i84.a = phi i64 [ %indvars.iv.next.i85.1, %.preheader35.i.new ], [ %.239.i, %.preheader35.i ] ; 3 uses
  %niter622 = phi i64 [ %niter622.next.1, %.preheader35.i.new ], [ 0, %.preheader35.i ]
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %indvars.iv.i84.a
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !47
  %i.ia = ashr i32 %i.hz, %i.hv
  %i.ib = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv49.i.a
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 328968
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv54.i
  store i32 %i.ia, ptr %i.id, align 4, !tbaa !47
  %i.ie = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv.i84.a
  %i.if = getelementptr i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !47
  %i.ih = ashr i32 %i.ig, %i.hv
  %i.ii = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv49.i.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1182160
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv54.i
  store i32 %i.ih, ptr %i.ik, align 4, !tbaa !47
  %indvars.iv.next50.i.1.a = add nuw nsw i64 %indvars.iv49.i.a, 2 ; 2 uses
  %indvars.iv.next.i85.1 = add nsw i64 %indvars.iv.i84.a, 2 ; 3 uses
  %niter622.next.1 = add i64 %niter622, 2         ; 2 uses
  %niter622.ncmp.1 = icmp eq i64 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader35.i.new, !llvm.loop !102

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader35.i.new
  br i1 %lcmp.mod618.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader35.i
  %indvars.iv49.i.epil.init.a = phi i64 [ 0, %.preheader35.i ], [ %indvars.iv.next50.i.1.a, %._crit_edge.i.unr-lcssa ]
  %indvars.iv.i84.epil.init = phi i64 [ %.239.i, %.preheader35.i ], [ %indvars.iv.next.i85.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod620)
  %i.il = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %indvars.iv.i84.epil.init
  %i.im = load i32, ptr %i.il, align 4, !tbaa !47
  %i.in = ashr i32 %i.im, %i.hv
  %i.io = getelementptr inbounds nuw [853192 x i8], ptr %i.c, i64 %indvars.iv49.i.epil.init.a
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 328968
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv54.i
  store i32 %i.in, ptr %i.iq, align 4, !tbaa !47
  %indvars.iv.next.i85.epil = add nsw i64 %indvars.iv.i84.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i85.lcssa = phi i64 [ %indvars.iv.next.i85.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i85.epil, %.epil.preheader ]
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %i.ir = load i32, ptr %i.cb, align 16, !tbaa !85 ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next55.i, %i.is
  br i1 %i.it, label %.preheader35.i, label %copy_samples.exit, !llvm.loop !103

copy_samples.exit:                                ; preds = %._crit_edge.i, %._crit_edge43.i, %bb.ab, %.preheader34.i
  %i.iu = phi i32 [ %i.ca, %.preheader34.i ], [ %i.hq, %._crit_edge43.i ], [ %i.ca, %bb.ab ], [ %i.ir, %._crit_edge.i ] ; 22 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 328968 ; 20 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 1182160 ; 20 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 6825640 ; 12 uses
  %.not.i = icmp eq i32 %i.ef, 2
  br i1 %.not.i, label %bb.ac, label %channel_decorrelation.exit

bb.ac:                                            ; preds = %copy_samples.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 7349984
  %i.iz = load i32, ptr %i.iy, align 16, !tbaa !104 ; 2 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.jc = load i32, ptr %i.jb, align 16, !tbaa !90
  %i.jd = shl nuw i32 1, %i.jc
  %i.je = add nsw i32 %i.jd, -2                   ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre, i64 652
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.jh = icmp slt i32 %i.jg, 30
  %i.ji = icmp sgt i32 %i.iu, 2                   ; 2 uses
  br i1 %i.jh, label %.preheader.i.i, label %.preheader95.i.i

.preheader95.i.i:                                 ; preds = %bb.ad
  br i1 %i.ji, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader95.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.iu to i64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 328972
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !47 ; 2 uses
  %.phi.trans.insert161.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1182164
  %.pre162.i.i = load i32, ptr %.phi.trans.insert161.i.i, align 4, !tbaa !47 ; 2 uses
  %i.jj = add nsw i64 %wide.trip.count.i.i, -2    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jj, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.jj, -4                      ; 3 uses
  %i.jk = or disjoint i64 %n.vec, 2
  %vector.recur.init = insertelement <2 x i32> poison, i32 %.pre162.i.i, i64 1
  %vector.recur.init395 = insertelement <2 x i32> poison, i32 %.pre.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load408, %vector.body ]
  %vector.recur396 = phi <2 x i32> [ %vector.recur.init395, %vector.ph ], [ %wide.load404, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lc, %vector.body ]
  %vec.phi397 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ld, %vector.body ]
  %vec.phi398 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.li, %vector.body ]
  %vec.phi399 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lj, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lm, %vector.body ]
  %vec.phi401 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ln, %vector.body ]
  %vec.phi402 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lq, %vector.body ]
  %vec.phi403 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.lr, %vector.body ]
  %i.jl = or disjoint i64 %index, 2               ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %wide.load = load <2 x i32>, ptr %i.jm, align 4, !tbaa !47 ; 3 uses
  %wide.load404 = load <2 x i32>, ptr %i.jn, align 4, !tbaa !47 ; 4 uses
  %i.jo = shufflevector <2 x i32> %vector.recur396, <2 x i32> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.jp = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load404, <2 x i32> <i32 1, i32 2>
  %i.jq = sext <2 x i32> %wide.load to <2 x i64>
  %i.jr = sext <2 x i32> %wide.load404 to <2 x i64>
  %i.js = sext <2 x i32> %i.jo to <2 x i64>
  %i.jt = sext <2 x i32> %i.jp to <2 x i64>
  %i.ju = shl nsw <2 x i64> %i.js, splat (i64 1)
  %i.jv = shl nsw <2 x i64> %i.jt, splat (i64 1)
  %i.jw = sub nsw <2 x i64> %i.jq, %i.ju
  %i.jx = sub nsw <2 x i64> %i.jr, %i.jv
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %index ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %wide.load405 = load <2 x i32>, ptr %i.jy, align 4, !tbaa !47
  %wide.load406 = load <2 x i32>, ptr %i.jz, align 4, !tbaa !47
  %i.ka = sext <2 x i32> %wide.load405 to <2 x i64>
  %i.kb = sext <2 x i32> %wide.load406 to <2 x i64>
  %i.kc = add nsw <2 x i64> %i.jw, %i.ka          ; 3 uses
  %i.kd = add nsw <2 x i64> %i.jx, %i.kb          ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jl ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %wide.load407 = load <2 x i32>, ptr %i.ke, align 4, !tbaa !47 ; 3 uses
  %wide.load408 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !47 ; 4 uses
  %i.kg = shufflevector <2 x i32> %vector.recur, <2 x i32> %wide.load407, <2 x i32> <i32 1, i32 2>
  %i.kh = shufflevector <2 x i32> %wide.load407, <2 x i32> %wide.load408, <2 x i32> <i32 1, i32 2>
  %i.ki = sext <2 x i32> %wide.load407 to <2 x i64>
  %i.kj = sext <2 x i32> %wide.load408 to <2 x i64>
  %i.kk = sext <2 x i32> %i.kg to <2 x i64>
  %i.kl = sext <2 x i32> %i.kh to <2 x i64>
  %i.km = shl nsw <2 x i64> %i.kk, splat (i64 1)
  %i.kn = shl nsw <2 x i64> %i.kl, splat (i64 1)
  %i.ko = sub nsw <2 x i64> %i.ki, %i.km
  %i.kp = sub nsw <2 x i64> %i.kj, %i.kn
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %index ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %wide.load409 = load <2 x i32>, ptr %i.kq, align 4, !tbaa !47
  %wide.load410 = load <2 x i32>, ptr %i.kr, align 4, !tbaa !47
  %i.ks = sext <2 x i32> %wide.load409 to <2 x i64>
  %i.kt = sext <2 x i32> %wide.load410 to <2 x i64>
  %i.ku = add nsw <2 x i64> %i.ko, %i.ks          ; 3 uses
  %i.kv = add nsw <2 x i64> %i.kp, %i.kt          ; 3 uses
  %i.kw = add nsw <2 x i64> %i.ku, %i.kc
  %i.kx = add nsw <2 x i64> %i.kv, %i.kd
  %i.ky = ashr <2 x i64> %i.kw, splat (i64 1)
  %i.kz = ashr <2 x i64> %i.kx, splat (i64 1)
  %i.la = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ky, i1 true)
  %i.lb = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.kz, i1 true)
  %i.lc = add <2 x i64> %i.la, %vec.phi           ; 2 uses
  %i.ld = add <2 x i64> %i.lb, %vec.phi397        ; 2 uses
  %i.le = sub nsw <2 x i64> %i.kc, %i.ku
  %i.lf = sub nsw <2 x i64> %i.kd, %i.kv
  %i.lg = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.le, i1 true)
  %i.lh = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.lf, i1 true)
  %i.li = add <2 x i64> %i.lg, %vec.phi398        ; 2 uses
  %i.lj = add <2 x i64> %i.lh, %vec.phi399        ; 2 uses
  %i.lk = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.kc, i1 true)
  %i.ll = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.kd, i1 true)
  %i.lm = add <2 x i64> %i.lk, %vec.phi400        ; 2 uses
  %i.ln = add <2 x i64> %i.ll, %vec.phi401        ; 2 uses
  %i.lo = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ku, i1 true)
  %i.lp = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.kv, i1 true)
  %i.lq = add <2 x i64> %i.lo, %vec.phi402        ; 2 uses
  %i.lr = add <2 x i64> %i.lp, %vec.phi403        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ld, %i.lc
  %i.lt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx411 = add <2 x i64> %i.lj, %i.li
  %i.lu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx411) ; 2 uses
  %bin.rdx412 = add <2 x i64> %i.ln, %i.lm
  %i.lv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx412) ; 2 uses
  %bin.rdx413 = add <2 x i64> %i.lr, %i.lq
  %i.lw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx413) ; 2 uses
  %vector.recur.extract = extractelement <2 x i32> %wide.load408, i64 1
  %vector.recur.extract414 = extractelement <2 x i32> %wide.load404, i64 1
  %cmp.n = icmp eq i64 %i.jj, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.ph586 = phi i32 [ %.pre162.i.i, %.lr.ph.preheader.i.i ], [ %vector.recur.extract, %middle.block ]
  %.ph587 = phi i32 [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %vector.recur.extract414, %middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 2, %.lr.ph.preheader.i.i ], [ %i.jk, %middle.block ]
  %.ph588 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.lt, %middle.block ]
  %.ph589 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.lu, %middle.block ]
  %.ph590 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.lv, %middle.block ]
  %.ph591 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.lw, %middle.block ]
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.ad
  br i1 %i.ji, label %.lr.ph116.preheader.i.i, label %.loopexit.i.i

.lr.ph116.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count139.i.i = zext nneg i32 %i.iu to i64 ; 2 uses
  %.phi.trans.insert163.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 328972
  %.pre164.i.i = load i32, ptr %.phi.trans.insert163.i.i, align 4, !tbaa !47 ; 2 uses
  %.phi.trans.insert165.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1182164
  %.pre166.i.i = load i32, ptr %.phi.trans.insert165.i.i, align 4, !tbaa !47 ; 2 uses
  %i.lx = add nsw i64 %wide.trip.count139.i.i, -2 ; 3 uses
  %min.iters.check420 = icmp ult i64 %i.lx, 4
  br i1 %min.iters.check420, label %.lr.ph116.i.i.preheader, label %vector.ph421

vector.ph421:                                     ; preds = %.lr.ph116.preheader.i.i
  %n.vec422 = and i64 %i.lx, -4                   ; 3 uses
  %i.ly = or disjoint i64 %n.vec422, 2
  %vector.recur.init425 = insertelement <2 x i32> poison, i32 %.pre166.i.i, i64 1
  %vector.recur.init427 = insertelement <2 x i32> poison, i32 %.pre164.i.i, i64 1
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next445, %vector.body423 ] ; 4 uses
  %vector.recur426 = phi <2 x i32> [ %vector.recur.init425, %vector.ph421 ], [ %wide.load442, %vector.body423 ]
  %vector.recur428 = phi <2 x i32> [ %vector.recur.init427, %vector.ph421 ], [ %wide.load438, %vector.body423 ]
  %vec.phi429 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.ng, %vector.body423 ]
  %vec.phi430 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.nh, %vector.body423 ]
  %vec.phi431 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.no, %vector.body423 ]
  %vec.phi432 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.np, %vector.body423 ]
  %vec.phi433 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.nu, %vector.body423 ]
  %vec.phi434 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.nv, %vector.body423 ]
  %vec.phi435 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.oa, %vector.body423 ]
  %vec.phi436 = phi <2 x i64> [ zeroinitializer, %vector.ph421 ], [ %i.ob, %vector.body423 ]
  %i.lz = or disjoint i64 %index424, 2            ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %wide.load437 = load <2 x i32>, ptr %i.ma, align 4, !tbaa !47 ; 3 uses
  %wide.load438 = load <2 x i32>, ptr %i.mb, align 4, !tbaa !47 ; 4 uses
  %i.mc = shufflevector <2 x i32> %vector.recur428, <2 x i32> %wide.load437, <2 x i32> <i32 1, i32 2>
  %i.md = shufflevector <2 x i32> %wide.load437, <2 x i32> %wide.load438, <2 x i32> <i32 1, i32 2>
  %i.me = shl nsw <2 x i32> %i.mc, splat (i32 1)
  %i.mf = shl nsw <2 x i32> %i.md, splat (i32 1)
  %i.mg = sub nsw <2 x i32> %wide.load437, %i.me
  %i.mh = sub nsw <2 x i32> %wide.load438, %i.mf
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %index424 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
end_hunk_0
