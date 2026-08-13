inline.NumInlined: 3182
inline.NumDeleted: 940
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_Z16GifWriteLzwImageIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_PhjjjjjP10GifPalette:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #34
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.v, align 1, !tbaa !9
  %i.ay = load ptr, ptr %0, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.v, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #34
  store i8 0, ptr %i.u, align 1, !tbaa !9
  %i.bc = load ptr, ptr %0, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.u, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #34
  store i8 0, ptr %i.t, align 1, !tbaa !9
  %i.bg = load ptr, ptr %0, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.t, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #34
  store i8 44, ptr %i.s, align 1, !tbaa !9
  %i.bk = load ptr, ptr %0, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.s, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #34
  %i.bo = trunc i32 %2 to i8
  store i8 %i.bo, ptr %i.r, align 1, !tbaa !9
  %i.bp = load ptr, ptr %0, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.r, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #34
  %i.bt = lshr i32 %2, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.q, align 1, !tbaa !9
  %i.bv = load ptr, ptr %0, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.q, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34
  %i.bz = trunc i32 %3 to i8
  store i8 %i.bz, ptr %i.p, align 1, !tbaa !9
  %i.ca = load ptr, ptr %0, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.p, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #34
  %i.ce = lshr i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.o, align 1, !tbaa !9
  %i.cg = load ptr, ptr %0, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.o, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.ck = trunc i32 %4 to i8
  store i8 %i.ck, ptr %i.n, align 1, !tbaa !9
  %i.cl = load ptr, ptr %0, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.n, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  %i.cp = lshr i32 %4, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #34
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.m, align 1, !tbaa !9
  %i.cr = load ptr, ptr %0, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.m, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #34
  %i.cv = trunc i32 %5 to i8
  store i8 %i.cv, ptr %i.l, align 1, !tbaa !9
  %i.cw = load ptr, ptr %0, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  %i.da = lshr i32 %5, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.k, align 1, !tbaa !9
  %i.dc = load ptr, ptr %0, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  %i.dg = load i32, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.dh = trunc i32 %i.dg to i8
  %i.di = add i8 %i.dh, 127
  store i8 %i.di, ptr %i.j, align 1, !tbaa !9
  %i.dj = load ptr, ptr %0, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @_Z15GifWritePaletteIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPK10GifPalettePT_(ptr noundef nonnull %7, ptr noundef %0)
  %i.dn = load i32, ptr %7, align 4, !tbaa !7     ; 5 uses
  %i.do = shl nuw i32 1, %i.dn                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.dp = trunc i32 %i.dn to i8
  store i8 %i.dp, ptr %i.i, align 1, !tbaa !9
  %i.dq = load ptr, ptr %0, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef i64 %i.ds(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  %calloc = call dereferenceable_or_null(2097152) ptr @calloc(i64 1, i64 2097152) ; 3 uses
  %i.du = add i32 %i.dn, 1                        ; 5 uses
  %i.dv = add nuw i32 %i.do, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 21 uses
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i8 0, ptr %8, align 4, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 22 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.du, 0                  ; 2 uses
  br i1 %.not.i, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread, %.lr.ph.i
  %.pre12.i = phi i32 [ 0, %.lr.ph.i ], [ %.pre1213.i, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 3 uses
  %i.dz = phi i8 [ 0, %.lr.ph.i ], [ %i.ew, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ]
  %i.ea = phi i8 [ 0, %.lr.ph.i ], [ %i.ex, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 3 uses
  %.010.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ez, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 2 uses
  %.089.i = phi i32 [ %i.do, %.lr.ph.i ], [ %i.ey, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 2 uses
  %i.eb = and i32 %.089.i, 1
  %i.ec = zext nneg i8 %i.ea to i32
  %i.ed = shl nuw nsw i32 %i.eb, %i.ec
  %i.ee = trunc nuw i32 %i.ed to i8
  %i.ef = or i8 %i.dz, %i.ee                      ; 3 uses
  store i8 %i.ef, ptr %i.dw, align 1, !tbaa !28
  %i.eg = add nuw nsw i8 %i.ea, 1                 ; 2 uses
  store i8 %i.eg, ptr %8, align 4, !tbaa !26
  %i.eh = icmp ugt i8 %i.ea, 6
  br i1 %i.eh, label %_Z11GifWriteBitR12GifBitStatusj.exit.i, label %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread

_Z11GifWriteBitR12GifBitStatusj.exit.i:           ; preds = %bb.b
  %i.ei = add i32 %.pre12.i, 1                    ; 3 uses
  store i32 %i.ei, ptr %i.dx, align 4, !tbaa !29
  %i.ej = zext i32 %.pre12.i to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ej
  store i8 %i.ef, ptr %i.ek, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  %i.el = icmp eq i32 %i.ei, 255
  br i1 %i.el, label %bb.c, label %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread

bb.c:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  store i8 -1, ptr %i.h, align 1, !tbaa !9
  %i.em = load ptr, ptr %0, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.h, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  %i.eq = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.er = zext i32 %i.eq to i64
  %i.es = load ptr, ptr %0, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef i64 %i.eu(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.dy, i64 noundef %i.er), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread

_Z11GifWriteBitR12GifBitStatusj.exit.i.thread:    ; preds = %bb.b, %bb.c, %_Z11GifWriteBitR12GifBitStatusj.exit.i
  %.pre1213.i = phi i32 [ %i.ei, %_Z11GifWriteBitR12GifBitStatusj.exit.i ], [ 0, %bb.c ], [ %.pre12.i, %bb.b ] ; 2 uses
  %i.ew = phi i8 [ 0, %_Z11GifWriteBitR12GifBitStatusj.exit.i ], [ 0, %bb.c ], [ %i.ef, %bb.b ] ; 2 uses
  %i.ex = phi i8 [ 0, %_Z11GifWriteBitR12GifBitStatusj.exit.i ], [ 0, %bb.c ], [ %i.eg, %bb.b ] ; 2 uses
  %i.ey = lshr i32 %.089.i, 1
  %i.ez = add nuw i32 %.010.i, 1
  %exitcond.not.i = icmp eq i32 %.010.i, %i.dn
  br i1 %exitcond.not.i, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit, label %bb.b, !llvm.loop !761

_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit: ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread, %bb.a
  %.pre12.pre.i164.us233 = phi i32 [ 0, %bb.a ], [ %.pre1213.i, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 4 uses
  %.pre11.i163.us223 = phi i8 [ 0, %bb.a ], [ %i.ew, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 3 uses
  %.pre.i162.us216 = phi i8 [ 0, %bb.a ], [ %i.ex, %_Z11GifWriteBitR12GifBitStatusj.exit.i.thread ] ; 3 uses
  %.not205 = icmp eq i32 %5, 0
  br i1 %.not205, label %._crit_edge198, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit
  %.not206.a = icmp eq i32 %4, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %.not206.a, label %._crit_edge198, label %.preheader.us.a

.preheader.us.a:                                  ; preds = %.preheader.lr.ph
  %9 = zext i32 %4 to i64
  %10 = zext i32 %5 to i64
  %flatten.tripcount = mul nuw i64 %9, %10
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %.preheader.us.a
  %.pre12.pre.i177.us241 = phi i32 [ %.pre12.pre.i177.us242, %bb.q ], [ %.pre12.pre.i164.us233, %.preheader.us.a ] ; 4 uses
  %.pre12.pre.i164.us = phi i32 [ %.pre12.pre.i164.us228, %bb.q ], [ %.pre12.pre.i164.us233, %.preheader.us.a ] ; 5 uses
  %.pre11.i163.us = phi i8 [ %.pre11.i163.us219, %bb.q ], [ %.pre11.i163.us223, %.preheader.us.a ] ; 4 uses
  %.pre.i162.us = phi i8 [ %.pre.i162.us212, %bb.q ], [ %.pre.i162.us216, %.preheader.us.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader.us.a ] ; 2 uses
  %.1191.us = phi i32 [ %.2.us, %bb.q ], [ -1, %.preheader.us.a ] ; 3 uses
  %.191189.us = phi i32 [ %.3.us, %bb.q ], [ %i.dv, %.preheader.us.a ] ; 3 uses
  %.194188.us = phi i32 [ %.4.us, %bb.q ], [ %i.du, %.preheader.us.a ] ; 6 uses
  %11 = shl i64 %indvars.iv, 2
  %12 = and i64 %11, 4294967292
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9   ; 3 uses
  %i.fd = icmp slt i32 %.1191.us, 0
  br i1 %i.fd, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fe = zext nneg i32 %.1191.us to i64
  %i.ff = getelementptr inbounds nuw [512 x i8], ptr %calloc, i64 %i.fe
  %i.fg = zext i8 %i.fc to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fg ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !762 ; 2 uses
  %.not101.us = icmp eq i16 %i.fi, 0
  br i1 %.not101.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fj = zext i16 %i.fi to i32
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.not.i160.us = icmp eq i32 %.194188.us, 0
  br i1 %.not.i160.us, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us, label %.lr.ph.i161.us

.lr.ph.i161.us:                                   ; preds = %bb.g, %bb.j
  %.pre12.pre.i177.us239.a = phi i32 [ %.pre12.pre.i177.us237.a, %bb.j ], [ %.pre12.pre.i177.us241, %bb.g ]
  %.pre12.pre.i164.us225 = phi i32 [ %.pre12.pre.i164.us232, %bb.j ], [ %.pre12.pre.i164.us, %bb.g ]
  %.pre12.i165.us = phi i32 [ %.pre1213.i170.us, %bb.j ], [ %.pre12.pre.i164.us, %bb.g ] ; 3 uses
  %i.fk = phi i8 [ %i.gk, %bb.j ], [ %.pre11.i163.us, %bb.g ]
  %i.fl = phi i8 [ %i.gl, %bb.j ], [ %.pre.i162.us, %bb.g ] ; 2 uses
  %.010.i166.us = phi i32 [ %i.gm, %bb.j ], [ 0, %bb.g ]
  %.089.i167.us = phi i32 [ %i.fy, %bb.j ], [ %.1191.us, %bb.g ] ; 2 uses
  %i.fm = and i32 %.089.i167.us, 1
  %i.fn = zext nneg i8 %i.fl to i32
  %i.fo = shl nuw i32 %i.fm, %i.fn
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = or i8 %i.fk, %i.fp                      ; 3 uses
  store i8 %i.fq, ptr %i.dw, align 1, !tbaa !28
  %i.fr = add i8 %i.fl, 1                         ; 3 uses
  store i8 %i.fr, ptr %8, align 4, !tbaa !26
  %i.fs = icmp ugt i8 %i.fr, 7
  br i1 %i.fs, label %bb.h, label %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us

bb.h:                                             ; preds = %.lr.ph.i161.us
  %i.ft = add i32 %.pre12.i165.us, 1              ; 4 uses
  store i32 %i.ft, ptr %i.dx, align 4, !tbaa !29
  %i.fu = zext i32 %.pre12.i165.us to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fu
  store i8 %i.fq, ptr %i.fv, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us

_Z11GifWriteBitR12GifBitStatusj.exit.i168.us:     ; preds = %bb.h, %.lr.ph.i161.us
  %.pre12.pre.i177.us238.a = phi i32 [ %.pre12.pre.i177.us239.a, %.lr.ph.i161.us ], [ %i.ft, %bb.h ]
  %.pre12.pre.i164.us224 = phi i32 [ %.pre12.pre.i164.us225, %.lr.ph.i161.us ], [ %i.ft, %bb.h ]
  %.pre1214.i169.us = phi i32 [ %.pre12.i165.us, %.lr.ph.i161.us ], [ %i.ft, %bb.h ] ; 2 uses
  %i.fw = phi i8 [ %i.fq, %.lr.ph.i161.us ], [ 0, %bb.h ]
  %i.fx = phi i8 [ %i.fr, %.lr.ph.i161.us ], [ 0, %bb.h ]
  %i.fy = lshr i32 %.089.i167.us, 1
  %i.fz = icmp eq i32 %.pre1214.i169.us, 255
  br i1 %i.fz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i8 -1, ptr %i.d, align 1, !tbaa !9
  %i.ga = load ptr, ptr %0, align 8, !tbaa !30
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef i64 %i.gc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.ge = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.gf = zext i32 %i.ge to i64
  %i.gg = load ptr, ptr %0, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i64 %i.gi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.fa, i64 noundef %i.gf), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us
  %.pre12.pre.i177.us237.a = phi i32 [ %.pre12.pre.i177.us238.a, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us ], [ 0, %bb.i ] ; 2 uses
  %.pre12.pre.i164.us232 = phi i32 [ %.pre12.pre.i164.us224, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us ], [ 0, %bb.i ] ; 2 uses
  %.pre1213.i170.us = phi i32 [ %.pre1214.i169.us, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us ], [ 0, %bb.i ]
  %i.gk = phi i8 [ %i.fw, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us ], [ 0, %bb.i ] ; 2 uses
  %i.gl = phi i8 [ %i.fx, %_Z11GifWriteBitR12GifBitStatusj.exit.i168.us ], [ 0, %bb.i ] ; 2 uses
  %i.gm = add nuw i32 %.010.i166.us, 1            ; 2 uses
  %exitcond.not.i171.us = icmp eq i32 %i.gm, %.194188.us
  br i1 %exitcond.not.i171.us, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us, label %.lr.ph.i161.us, !llvm.loop !761

_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us: ; preds = %bb.j, %bb.g
  %.pre12.pre.i177.us = phi i32 [ %.pre12.pre.i177.us241, %bb.g ], [ %.pre12.pre.i177.us237.a, %bb.j ] ; 4 uses
  %.pre12.pre.i164.us231 = phi i32 [ %.pre12.pre.i164.us, %bb.g ], [ %.pre12.pre.i164.us232, %bb.j ] ; 2 uses
  %.pre11.i176.us = phi i8 [ %.pre11.i163.us, %bb.g ], [ %i.gk, %bb.j ] ; 3 uses
  %.pre.i175.us = phi i8 [ %.pre.i162.us, %bb.g ], [ %i.gl, %bb.j ] ; 3 uses
  %i.gn = add i32 %.191189.us, 1                  ; 4 uses
  %i.go = trunc i32 %i.gn to i16
  store i16 %i.go, ptr %i.fh, align 2, !tbaa !762
  %i.gp = zext i32 %i.gn to i64
  %i.gq = zext nneg i32 %.194188.us to i64
  %.highbits.us = lshr i64 %i.gp, %i.gq
  %.not102.us = icmp ne i64 %.highbits.us, 0
  %i.gr = zext i1 %.not102.us to i32
  %spec.select.us = add i32 %.194188.us, %i.gr    ; 3 uses
  %i.gs = icmp eq i32 %i.gn, 4095
  br i1 %i.gs, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us
  %.not.i173.us = icmp eq i32 %spec.select.us, 0
  br i1 %.not.i173.us, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us, label %.lr.ph.i174.us

.lr.ph.i174.us:                                   ; preds = %bb.k, %bb.n
  %.pre12.pre.i177.us235.a = phi i32 [ %.pre12.pre.i177.us245, %bb.n ], [ %.pre12.pre.i177.us, %bb.k ]
  %.pre12.i178.us = phi i32 [ %.pre1213.i183.us, %bb.n ], [ %.pre12.pre.i177.us, %bb.k ] ; 3 uses
  %i.gt = phi i8 [ %i.ht, %bb.n ], [ %.pre11.i176.us, %bb.k ]
  %i.gu = phi i8 [ %i.hu, %bb.n ], [ %.pre.i175.us, %bb.k ] ; 2 uses
  %.010.i179.us = phi i32 [ %i.hv, %bb.n ], [ 0, %bb.k ]
  %.089.i180.us = phi i32 [ %i.hh, %bb.n ], [ %i.do, %bb.k ] ; 2 uses
  %i.gv = and i32 %.089.i180.us, 1
  %i.gw = zext nneg i8 %i.gu to i32
  %i.gx = shl nuw i32 %i.gv, %i.gw
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = or i8 %i.gt, %i.gy                      ; 3 uses
  store i8 %i.gz, ptr %i.dw, align 1, !tbaa !28
  %i.ha = add i8 %i.gu, 1                         ; 3 uses
  store i8 %i.ha, ptr %8, align 4, !tbaa !26
  %i.hb = icmp ugt i8 %i.ha, 7
  br i1 %i.hb, label %bb.l, label %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us

bb.l:                                             ; preds = %.lr.ph.i174.us
  %i.hc = add i32 %.pre12.i178.us, 1              ; 3 uses
  store i32 %i.hc, ptr %i.dx, align 4, !tbaa !29
  %i.hd = zext i32 %.pre12.i178.us to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.hd
  store i8 %i.gz, ptr %i.he, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us

_Z11GifWriteBitR12GifBitStatusj.exit.i181.us:     ; preds = %bb.l, %.lr.ph.i174.us
  %.pre12.pre.i177.us234 = phi i32 [ %.pre12.pre.i177.us235.a, %.lr.ph.i174.us ], [ %i.hc, %bb.l ]
  %.pre1214.i182.us = phi i32 [ %.pre12.i178.us, %.lr.ph.i174.us ], [ %i.hc, %bb.l ] ; 2 uses
  %i.hf = phi i8 [ %i.gz, %.lr.ph.i174.us ], [ 0, %bb.l ]
  %i.hg = phi i8 [ %i.ha, %.lr.ph.i174.us ], [ 0, %bb.l ]
  %i.hh = lshr i32 %.089.i180.us, 1
  %i.hi = icmp eq i32 %.pre1214.i182.us, 255
  br i1 %i.hi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i8 -1, ptr %i.c, align 1, !tbaa !9
  %i.hj = load ptr, ptr %0, align 8, !tbaa !30
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call noundef i64 %i.hl(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.hn = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.ho = zext i32 %i.hn to i64
  %i.hp = load ptr, ptr %0, align 8, !tbaa !30
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef i64 %i.hr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.fa, i64 noundef %i.ho), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us
  %.pre12.pre.i177.us245 = phi i32 [ %.pre12.pre.i177.us234, %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us ], [ 0, %bb.m ] ; 2 uses
  %.pre1213.i183.us = phi i32 [ %.pre1214.i182.us, %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us ], [ 0, %bb.m ] ; 2 uses
  %i.ht = phi i8 [ %i.hf, %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us ], [ 0, %bb.m ] ; 2 uses
  %i.hu = phi i8 [ %i.hg, %_Z11GifWriteBitR12GifBitStatusj.exit.i181.us ], [ 0, %bb.m ] ; 2 uses
  %i.hv = add nuw i32 %.010.i179.us, 1            ; 2 uses
  %exitcond.not.i184.us = icmp eq i32 %i.hv, %spec.select.us
  br i1 %exitcond.not.i184.us, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us, label %.lr.ph.i174.us, !llvm.loop !761

_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us: ; preds = %bb.n, %bb.k
  %.pre12.pre.i177.us244 = phi i32 [ %.pre12.pre.i177.us, %bb.k ], [ %.pre12.pre.i177.us245, %bb.n ]
  %.pre12.pre.i164.us230 = phi i32 [ %.pre12.pre.i164.us231, %bb.k ], [ %.pre1213.i183.us, %bb.n ]
  %.pre11.i163.us221 = phi i8 [ %.pre11.i176.us, %bb.k ], [ %i.ht, %bb.n ]
  %.pre.i162.us214 = phi i8 [ %.pre.i175.us, %bb.k ], [ %i.hu, %bb.n ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2097152) %calloc, i8 0, i64 2097152, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us
  %.pre12.pre.i177.us243 = phi i32 [ %.pre12.pre.i177.us244, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %.pre12.pre.i177.us, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %.pre12.pre.i164.us229 = phi i32 [ %.pre12.pre.i164.us230, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %.pre12.pre.i164.us231, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %.pre11.i163.us220 = phi i8 [ %.pre11.i163.us221, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %.pre11.i176.us, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %.pre.i162.us213 = phi i8 [ %.pre.i162.us214, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %.pre.i175.us, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %.396.us = phi i32 [ %i.du, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %spec.select.us, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %.292.us = phi i32 [ %i.dv, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit185.us ], [ %i.gn, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit172.us ]
  %i.hw = zext i8 %i.fc to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.d
  %i.hx = zext i8 %i.fc to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.f
  %.pre12.pre.i177.us242 = phi i32 [ %.pre12.pre.i177.us241, %bb.p ], [ %.pre12.pre.i177.us241, %bb.f ], [ %.pre12.pre.i177.us243, %bb.o ] ; 2 uses
  %.pre12.pre.i164.us228 = phi i32 [ %.pre12.pre.i164.us, %bb.p ], [ %.pre12.pre.i164.us, %bb.f ], [ %.pre12.pre.i164.us229, %bb.o ]
  %.pre11.i163.us219 = phi i8 [ %.pre11.i163.us, %bb.p ], [ %.pre11.i163.us, %bb.f ], [ %.pre11.i163.us220, %bb.o ] ; 2 uses
  %.pre.i162.us212 = phi i8 [ %.pre.i162.us, %bb.p ], [ %.pre.i162.us, %bb.f ], [ %.pre.i162.us213, %bb.o ] ; 2 uses
  %.4.us = phi i32 [ %.194188.us, %bb.p ], [ %.194188.us, %bb.f ], [ %.396.us, %bb.o ] ; 2 uses
  %.3.us = phi i32 [ %.191189.us, %bb.p ], [ %.191189.us, %bb.f ], [ %.292.us, %bb.o ]
  %.2.us = phi i32 [ %i.hx, %bb.p ], [ %i.fj, %bb.f ], [ %i.hw, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %flatten.tripcount
  br i1 %exitcond.not, label %._crit_edge198, label %bb.d, !llvm.loop !764

._crit_edge198:                                   ; preds = %bb.q, %.preheader.lr.ph, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit
  %.pre12.pre.i125 = phi i32 [ %.pre12.pre.i164.us233, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit ], [ %.pre12.pre.i164.us233, %.preheader.lr.ph ], [ %.pre12.pre.i177.us242, %bb.q ] ; 2 uses
  %.pre11.i124 = phi i8 [ %.pre11.i163.us223, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit ], [ %.pre11.i163.us223, %.preheader.lr.ph ], [ %.pre11.i163.us219, %bb.q ] ; 2 uses
  %.pre.i123 = phi i8 [ %.pre.i162.us216, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit ], [ %.pre.i162.us216, %.preheader.lr.ph ], [ %.pre.i162.us212, %bb.q ] ; 2 uses
  %.093.lcssa = phi i32 [ %i.du, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit ], [ %i.du, %.preheader.lr.ph ], [ %.4.us, %bb.q ] ; 3 uses
  %.0.lcssa = phi i32 [ -1, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit ], [ -1, %.preheader.lr.ph ], [ %.2.us, %bb.q ]
  %.not.i121 = icmp eq i32 %.093.lcssa, 0
  br i1 %.not.i121, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %._crit_edge198
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i122
  %.pre12.i126 = phi i32 [ %.pre12.pre.i125, %.lr.ph.i122 ], [ %.pre12.pre.i138, %bb.u ] ; 3 uses
  %i.hz = phi i8 [ %.pre11.i124, %.lr.ph.i122 ], [ %.pre11.i137, %bb.u ]
  %i.ia = phi i8 [ %.pre.i123, %.lr.ph.i122 ], [ %.pre.i136, %bb.u ] ; 2 uses
  %.010.i127 = phi i32 [ 0, %.lr.ph.i122 ], [ %i.iz, %bb.u ]
  %.089.i128 = phi i32 [ %.0.lcssa, %.lr.ph.i122 ], [ %i.in, %bb.u ] ; 2 uses
  %i.ib = and i32 %.089.i128, 1
  %i.ic = zext nneg i8 %i.ia to i32
  %i.id = shl nuw i32 %i.ib, %i.ic
  %i.ie = trunc i32 %i.id to i8
  %i.if = or i8 %i.hz, %i.ie                      ; 3 uses
  store i8 %i.if, ptr %i.dw, align 1, !tbaa !28
  %i.ig = add i8 %i.ia, 1                         ; 3 uses
  store i8 %i.ig, ptr %8, align 4, !tbaa !26
  %i.ih = icmp ugt i8 %i.ig, 7
  br i1 %i.ih, label %bb.s, label %_Z11GifWriteBitR12GifBitStatusj.exit.i129

bb.s:                                             ; preds = %bb.r
  %i.ii = add i32 %.pre12.i126, 1                 ; 2 uses
  store i32 %i.ii, ptr %i.dx, align 4, !tbaa !29
  %i.ij = zext i32 %.pre12.i126 to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ij
  store i8 %i.if, ptr %i.ik, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i129

_Z11GifWriteBitR12GifBitStatusj.exit.i129:        ; preds = %bb.s, %bb.r
  %.pre1214.i130 = phi i32 [ %.pre12.i126, %bb.r ], [ %i.ii, %bb.s ] ; 2 uses
  %i.il = phi i8 [ %i.if, %bb.r ], [ 0, %bb.s ]
  %i.im = phi i8 [ %i.ig, %bb.r ], [ 0, %bb.s ]
  %i.in = lshr i32 %.089.i128, 1
  %i.io = icmp eq i32 %.pre1214.i130, 255
  br i1 %i.io, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  store i8 -1, ptr %i.g, align 1, !tbaa !9
  %i.ip = load ptr, ptr %0, align 8, !tbaa !30
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = call noundef i64 %i.ir(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.g, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  %i.it = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.iu = zext i32 %i.it to i64
  %i.iv = load ptr, ptr %0, align 8, !tbaa !30
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call noundef i64 %i.ix(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.hy, i64 noundef %i.iu), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z11GifWriteBitR12GifBitStatusj.exit.i129
  %.pre12.pre.i138 = phi i32 [ %.pre1214.i130, %_Z11GifWriteBitR12GifBitStatusj.exit.i129 ], [ 0, %bb.t ] ; 2 uses
  %.pre11.i137 = phi i8 [ %i.il, %_Z11GifWriteBitR12GifBitStatusj.exit.i129 ], [ 0, %bb.t ] ; 2 uses
  %.pre.i136 = phi i8 [ %i.im, %_Z11GifWriteBitR12GifBitStatusj.exit.i129 ], [ 0, %bb.t ] ; 2 uses
  %i.iz = add nuw i32 %.010.i127, 1               ; 2 uses
  %exitcond.not.i132 = icmp eq i32 %i.iz, %.093.lcssa
  br i1 %exitcond.not.i132, label %.lr.ph.i135, label %bb.r, !llvm.loop !761

.lr.ph.i135:                                      ; preds = %bb.u, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread
  %.pre12.i139 = phi i32 [ %.pre1213.i144, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ], [ %.pre12.pre.i138, %bb.u ] ; 3 uses
  %i.ja = phi i8 [ %i.jx, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ], [ %.pre11.i137, %bb.u ]
  %i.jb = phi i8 [ %i.jy, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ], [ %.pre.i136, %bb.u ] ; 3 uses
  %.010.i140 = phi i32 [ %i.ka, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ], [ 0, %bb.u ]
  %.089.i141 = phi i32 [ %i.jz, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ], [ %i.do, %bb.u ] ; 2 uses
  %i.jc = and i32 %.089.i141, 1
  %i.jd = zext nneg i8 %i.jb to i32
  %i.je = shl nuw nsw i32 %i.jc, %i.jd
  %i.jf = trunc nuw i32 %i.je to i8
  %i.jg = or i8 %i.ja, %i.jf                      ; 3 uses
  store i8 %i.jg, ptr %i.dw, align 1, !tbaa !28
  %i.jh = add nuw nsw i8 %i.jb, 1                 ; 2 uses
  store i8 %i.jh, ptr %8, align 4, !tbaa !26
  %i.ji = icmp ugt i8 %i.jb, 6
  br i1 %i.ji, label %_Z11GifWriteBitR12GifBitStatusj.exit.i142, label %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread

_Z11GifWriteBitR12GifBitStatusj.exit.i142:        ; preds = %.lr.ph.i135
  %i.jj = add i32 %.pre12.i139, 1                 ; 3 uses
  store i32 %i.jj, ptr %i.dx, align 4, !tbaa !29
  %i.jk = zext i32 %.pre12.i139 to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.jk
  store i8 %i.jg, ptr %i.jl, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  %i.jm = icmp eq i32 %i.jj, 255
  br i1 %i.jm, label %bb.v, label %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread

bb.v:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store i8 -1, ptr %i.f, align 1, !tbaa !9
  %i.jn = load ptr, ptr %0, align 8, !tbaa !30
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef i64 %i.jp(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.jr = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.js = zext i32 %i.jr to i64
  %i.jt = load ptr, ptr %0, align 8, !tbaa !30
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = call noundef i64 %i.jv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.hy, i64 noundef %i.js), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread

_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread: ; preds = %.lr.ph.i135, %bb.v, %_Z11GifWriteBitR12GifBitStatusj.exit.i142
  %.pre1213.i144 = phi i32 [ %i.jj, %_Z11GifWriteBitR12GifBitStatusj.exit.i142 ], [ 0, %bb.v ], [ %.pre12.i139, %.lr.ph.i135 ] ; 2 uses
  %i.jx = phi i8 [ 0, %_Z11GifWriteBitR12GifBitStatusj.exit.i142 ], [ 0, %bb.v ], [ %i.jg, %.lr.ph.i135 ] ; 2 uses
  %i.jy = phi i8 [ 0, %_Z11GifWriteBitR12GifBitStatusj.exit.i142 ], [ 0, %bb.v ], [ %i.jh, %.lr.ph.i135 ] ; 2 uses
  %i.jz = lshr i32 %.089.i141, 1
  %i.ka = add nuw i32 %.010.i140, 1               ; 2 uses
  %exitcond.not.i145 = icmp eq i32 %i.ka, %.093.lcssa
  br i1 %exitcond.not.i145, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146, label %.lr.ph.i135, !llvm.loop !761

_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146: ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread, %._crit_edge198
  %.pre12.pre.i151 = phi i32 [ %.pre12.pre.i125, %._crit_edge198 ], [ %.pre1213.i144, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ] ; 2 uses
  %.pre11.i150 = phi i8 [ %.pre11.i124, %._crit_edge198 ], [ %i.jx, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ] ; 2 uses
  %.pre.i149 = phi i8 [ %.pre.i123, %._crit_edge198 ], [ %i.jy, %_Z11GifWriteBitR12GifBitStatusj.exit.i142.thread ] ; 2 uses
  br i1 %.not.i, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i148
  %.pre12.i152 = phi i32 [ %.pre12.pre.i151, %.lr.ph.i148 ], [ %.pre1213.i157, %bb.z ] ; 3 uses
  %i.kc = phi i8 [ %.pre11.i150, %.lr.ph.i148 ], [ %i.lc, %bb.z ]
  %i.kd = phi i8 [ %.pre.i149, %.lr.ph.i148 ], [ %i.ld, %bb.z ] ; 2 uses
  %.010.i153 = phi i32 [ 0, %.lr.ph.i148 ], [ %i.le, %bb.z ] ; 2 uses
  %.089.i154 = phi i32 [ %i.dv, %.lr.ph.i148 ], [ %i.kq, %bb.z ] ; 2 uses
  %i.ke = and i32 %.089.i154, 1
  %i.kf = zext nneg i8 %i.kd to i32
  %i.kg = shl nuw i32 %i.ke, %i.kf
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = or i8 %i.kc, %i.kh                      ; 3 uses
  store i8 %i.ki, ptr %i.dw, align 1, !tbaa !28
  %i.kj = add i8 %i.kd, 1                         ; 3 uses
  store i8 %i.kj, ptr %8, align 4, !tbaa !26
  %i.kk = icmp ugt i8 %i.kj, 7
  br i1 %i.kk, label %bb.x, label %_Z11GifWriteBitR12GifBitStatusj.exit.i155

bb.x:                                             ; preds = %bb.w
  %i.kl = add i32 %.pre12.i152, 1                 ; 2 uses
  store i32 %i.kl, ptr %i.dx, align 4, !tbaa !29
  %i.km = zext i32 %.pre12.i152 to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.km
  store i8 %i.ki, ptr %i.kn, align 1, !tbaa !9
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  br label %_Z11GifWriteBitR12GifBitStatusj.exit.i155

_Z11GifWriteBitR12GifBitStatusj.exit.i155:        ; preds = %bb.x, %bb.w
  %.pre1214.i156 = phi i32 [ %.pre12.i152, %bb.w ], [ %i.kl, %bb.x ] ; 2 uses
  %i.ko = phi i8 [ %i.ki, %bb.w ], [ 0, %bb.x ]
  %i.kp = phi i8 [ %i.kj, %bb.w ], [ 0, %bb.x ]
  %i.kq = lshr i32 %.089.i154, 1
  %i.kr = icmp eq i32 %.pre1214.i156, 255
  br i1 %i.kr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit.i155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i8 -1, ptr %i.e, align 1, !tbaa !9
  %i.ks = load ptr, ptr %0, align 8, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = call noundef i64 %i.ku(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.e, i64 noundef 1), !inline_history !759 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.kw = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %0, align 8, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = call noundef i64 %i.la(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.kb, i64 noundef %i.kx), !inline_history !760 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_Z11GifWriteBitR12GifBitStatusj.exit.i155
  %.pre1213.i157 = phi i32 [ %.pre1214.i156, %_Z11GifWriteBitR12GifBitStatusj.exit.i155 ], [ 0, %bb.y ] ; 2 uses
  %i.lc = phi i8 [ %i.ko, %_Z11GifWriteBitR12GifBitStatusj.exit.i155 ], [ 0, %bb.y ] ; 2 uses
  %i.ld = phi i8 [ %i.kp, %_Z11GifWriteBitR12GifBitStatusj.exit.i155 ], [ 0, %bb.y ] ; 2 uses
  %i.le = add nuw i32 %.010.i153, 1
  %exitcond.not.i158 = icmp eq i32 %.010.i153, %i.dn
  br i1 %exitcond.not.i158, label %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159, label %bb.w, !llvm.loop !761

_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159: ; preds = %bb.z, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146
  %.promoted202 = phi i8 [ %.pre11.i150, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146 ], [ %i.lc, %bb.z ]
  %.promoted203 = phi i32 [ %.pre12.pre.i151, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146 ], [ %.pre1213.i157, %bb.z ] ; 4 uses
  %.promoted = phi i8 [ %.pre.i149, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit146 ], [ %i.ld, %bb.z ] ; 2 uses
  %.not204 = icmp eq i8 %.promoted, 0
  br i1 %.not204, label %bb.ab, label %.lr.ph

.lr.ph:                                           ; preds = %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_Z11GifWriteBitR12GifBitStatusj.exit
  %i.lg = phi i8 [ %.promoted, %.lr.ph ], [ %i.lh, %_Z11GifWriteBitR12GifBitStatusj.exit ]
  %i.lh = add i8 %i.lg, 1                         ; 3 uses
  %i.li = icmp ugt i8 %i.lh, 7
  br i1 %i.li, label %_Z11GifWriteBitR12GifBitStatusj.exit.thread, label %_Z11GifWriteBitR12GifBitStatusj.exit

_Z11GifWriteBitR12GifBitStatusj.exit.thread:      ; preds = %bb.aa
  %i.lj = add i32 %.promoted203, 1                ; 2 uses
  store i32 %i.lj, ptr %i.dx, align 4, !tbaa !29
  %i.lk = zext i32 %.promoted203 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lk
  store i8 %.promoted202, ptr %i.ll, align 1, !tbaa !9
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  br label %._crit_edge

_Z11GifWriteBitR12GifBitStatusj.exit:             ; preds = %bb.aa
  %.not = icmp eq i8 %i.lh, 0
  br i1 %.not, label %._crit_edge, label %bb.aa, !llvm.loop !765

._crit_edge:                                      ; preds = %_Z11GifWriteBitR12GifBitStatusj.exit, %_Z11GifWriteBitR12GifBitStatusj.exit.thread
  %i.lm = phi i32 [ %i.lj, %_Z11GifWriteBitR12GifBitStatusj.exit.thread ], [ %.promoted203, %_Z11GifWriteBitR12GifBitStatusj.exit ]
  store i8 0, ptr %8, align 4, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159
  %i.ln = phi i32 [ %i.lm, %._crit_edge ], [ %.promoted203, %_Z12GifWriteCodeIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_R12GifBitStatusjj.exit159 ] ; 2 uses
  %.not100 = icmp eq i32 %i.ln, 0
  br i1 %.not100, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.lo = trunc i32 %i.ln to i8
  store i8 %i.lo, ptr %i.b, align 1, !tbaa !9
  %i.lp = load ptr, ptr %0, align 8, !tbaa !30
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = call noundef i64 %i.lr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.lt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lu = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.lv = zext i32 %i.lu to i64
  %i.lw = load ptr, ptr %0, align 8, !tbaa !30
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 64
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = call noundef i64 %i.ly(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.lt, i64 noundef %i.lv), !inline_history !767 ; 0 uses
  store i8 0, ptr %8, align 4, !tbaa !26
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i32 0, ptr %i.dx, align 4, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.ma = load ptr, ptr %0, align 8, !tbaa !30
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = call noundef i64 %i.mc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @free(ptr noundef %calloc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15GifWritePaletteIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPK10GifPalettePT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store i8 0, ptr %i.f, align 1, !tbaa !9
  %i.g = load ptr, ptr %1, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.f, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i8 0, ptr %i.e, align 1, !tbaa !9
  %i.k = load ptr, ptr %1, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.e, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i8 0, ptr %i.d, align 1, !tbaa !9
  %i.o = load ptr, ptr %1, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.s = load i32, ptr %0, align 4, !tbaa !7
  %i.t = shl nuw i32 1, %i.s
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 516
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i8 %i.z, ptr %i.c, align 1, !tbaa !9
  %i.ae = load ptr, ptr %1, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !9
  %i.ai = load ptr, ptr %1, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 %i.ad, ptr %i.a, align 1, !tbaa !9
  %i.am = load ptr, ptr %1, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %0, align 4, !tbaa !7
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !768
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #28

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { builtin nounwind }
attributes #37 = { cold nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { noreturn }
attributes #40 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTS10GifPalette", !4, i64 0, !5, i64 4, !5, i64 260, !5, i64 516, !5, i64 772, !5, i64 1028}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !11, !19, !18}
!21 = distinct !{!21, !11, !18, !19}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11, !19, !18}
!25 = distinct !{!25, !11}
!26 = !{!27, !5, i64 0}
!27 = !{!"_ZTS12GifBitStatus", !5, i64 0, !5, i64 1, !4, i64 4, !5, i64 8}
!28 = !{!27, !5, i64 1}
!29 = !{!27, !4, i64 4}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !6, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !35, i64 0}
!35 = !{!"any pointer", !5, i64 0}
!36 = !{!37, !4, i64 216}
!37 = !{!"_ZTSN11OpenImageIO4v3_19GIFOutputE", !38, i64 0, !67, i64 184, !4, i64 216, !4, i64 220, !51, i64 224, !69, i64 232, !74, i64 256, !76, i64 280, !4, i64 304}
!38 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !39, i64 8, !58, i64 168}
!39 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !40, i64 64, !41, i64 72, !46, i64 96, !4, i64 120, !4, i64 124, !51, i64 128, !52, i64 136}
!40 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!41 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !35, i64 0}
!46 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0}
!51 = !{!"bool", !5, i64 0}
!52 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !53, i64 0}
!53 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !35, i64 0}
!58 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !60, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !61, i64 0}
!61 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !62, i64 0}
!62 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !63, i64 0, !65, i64 8}
!63 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !64, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !35, i64 0}
!65 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !66, i64 0}
!66 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !35, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !68, i64 8, !5, i64 16}
!68 = !{!"long", !5, i64 0}
!69 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE12_Vector_implE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !35, i64 0}
!74 = !{!"_ZTS9GifWriterIN11OpenImageIO4v3_110Filesystem7IOProxyEE", !75, i64 0, !34, i64 8, !51, i64 16}
!75 = !{!"p1 _ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !35, i64 0}
!76 = !{!"_ZTSSt6vectorIhSaIhEE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!80 = !{!37, !51, i64 224}
!81 = !{!79, !34, i64 0}
!82 = !{!79, !34, i64 16}
end_hunk_0
begin_hunk_1_@llvm.smax.v2i32
!566 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !409, i64 0, !4, i64 16}
!567 = !{!566, !4, i64 16}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!570 = distinct !{!570, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!571 = distinct !{!571, !11}
!572 = !{!573, !575}
!573 = distinct !{!573, !574, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!574 = distinct !{!574, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!575 = distinct !{!575, !576, !"_ZNK3fmt3v127context3argEi: argument 0"}
!576 = distinct !{!576, !"_ZNK3fmt3v127context3argEi"}
!577 = !{!578, !580}
!578 = distinct !{!578, !579, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!579 = distinct !{!579, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!580 = distinct !{!580, !581, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!581 = distinct !{!581, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!582 = !{!583, !583, i64 0}
!583 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !5, i64 0}
!584 = !{!585, !585, i64 0}
!585 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !35, i64 0}
!586 = !{!587, !587, i64 0}
!587 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !35, i64 0}
!588 = !{!589, !587, i64 8}
!589 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !585, i64 0, !587, i64 8, !35, i64 16}
!590 = !{!589, !35, i64 16}
!591 = !{!589, !585, i64 0}
!592 = distinct !{!592, !11}
!593 = distinct !{!593, !11}
!594 = distinct !{null, null, null, null}
!595 = distinct !{null, null, null, null, null}
!596 = distinct !{null, null, null}
!597 = distinct !{null, null, null, null}
!598 = distinct !{!598, !11}
!599 = distinct !{!599, !11}
!600 = distinct !{null, null, null, null}
!601 = distinct !{null, null, null, null, null}
!602 = distinct !{null, null, null}
!603 = distinct !{null, null, null, null}
!604 = distinct !{!604, !11}
!605 = distinct !{!605, !11}
!606 = distinct !{!606, !11, !18, !19}
!607 = distinct !{!607, !11, !18, !19}
!608 = distinct !{!608, !197}
!609 = distinct !{!609, !11, !18}
!610 = distinct !{!610, !11}
!611 = !{!612, !612, i64 0}
!612 = !{!"char32_t", !5, i64 0}
!613 = distinct !{!613, !11}
!614 = distinct !{!614, !11}
!615 = distinct !{!615, !11}
!616 = !{!617, !313, i64 0}
!617 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !313, i64 0, !318, i64 4, !4, i64 12, !5, i64 16, !4, i64 20, !5, i64 24, !4, i64 28}
!618 = !{!617, !4, i64 12}
!619 = !{!617, !5, i64 16}
!620 = !{!617, !4, i64 20}
!621 = !{!617, !5, i64 24}
!622 = !{!617, !4, i64 28}
!623 = distinct !{null, null, null, null}
!624 = distinct !{null}
!625 = distinct !{null}
!626 = distinct !{null, null, null, null}
!627 = !{!617, !4, i64 4}
!628 = !{!629, !35, i64 0}
!629 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !35, i64 0, !320, i64 8, !254, i64 16, !254, i64 24, !34, i64 32, !256, i64 40, !254, i64 48}
!630 = distinct !{null, null, null, null}
!631 = !{!629, !320, i64 8}
!632 = !{!629, !254, i64 16}
!633 = !{!629, !254, i64 24}
!634 = !{!629, !34, i64 32}
!635 = !{!629, !256, i64 40}
!636 = !{!629, !254, i64 48}
!637 = distinct !{null, null, null, null, null}
!638 = !{!639, !35, i64 0}
!639 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !35, i64 0, !326, i64 8, !34, i64 16, !254, i64 24, !320, i64 32, !254, i64 40}
!640 = !{!639, !326, i64 8}
!641 = !{!639, !34, i64 16}
!642 = !{!639, !254, i64 24}
!643 = !{!639, !320, i64 32}
!644 = !{!639, !254, i64 40}
!645 = !{!646, !313, i64 0}
!646 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !313, i64 0, !364, i64 8, !4, i64 24, !5, i64 28, !4, i64 32, !5, i64 36, !4, i64 40}
!647 = !{i64 0, i64 8, !144, i64 8, i64 4, !3}
!648 = !{!646, !4, i64 24}
!649 = !{!646, !5, i64 28}
!650 = !{!646, !4, i64 32}
!651 = !{!646, !5, i64 36}
!652 = !{!646, !4, i64 40}
!653 = distinct !{null, null, null, null}
!654 = distinct !{null}
!655 = distinct !{null}
!656 = distinct !{null, null, null, null}
!657 = !{!646, !68, i64 8}
!658 = !{!659, !35, i64 0}
!659 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !35, i64 0, !366, i64 8, !254, i64 16, !254, i64 24, !34, i64 32, !256, i64 40, !254, i64 48}
!660 = distinct !{null, null, null, null}
!661 = !{!659, !366, i64 8}
!662 = !{!659, !254, i64 16}
!663 = !{!659, !254, i64 24}
!664 = !{!659, !34, i64 32}
!665 = !{!659, !256, i64 40}
!666 = !{!659, !254, i64 48}
!667 = distinct !{null, null, null, null, null}
!668 = !{!669, !35, i64 0}
!669 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !35, i64 0, !326, i64 8, !34, i64 16, !254, i64 24, !366, i64 32, !254, i64 40}
!670 = !{!669, !326, i64 8}
!671 = !{!669, !34, i64 16}
!672 = !{!669, !254, i64 24}
!673 = !{!669, !366, i64 32}
!674 = !{!669, !254, i64 40}
!675 = distinct !{null, null, null}
!676 = distinct !{!676, !11, !18, !19}
!677 = distinct !{!677, !11, !18, !19}
!678 = distinct !{!678, !197}
!679 = distinct !{!679, !11, !18}
!680 = !{!681, !681, i64 0}
!681 = !{!"p1 long", !35, i64 0}
!682 = !{!683, !683, i64 0}
!683 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !35, i64 0}
!684 = !{!685, !51, i64 0}
!685 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !51, i64 0, !68, i64 8, !152, i64 16}
!686 = !{!685, !68, i64 8}
!687 = !{i64 0, i64 8, !84, i64 8, i64 8, !144}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!690 = distinct !{!690, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!691 = distinct !{!691, !11, !18, !19}
!692 = distinct !{!692, !11, !18, !19}
!693 = distinct !{!693, !197}
!694 = distinct !{!694, !11, !18}
!695 = distinct !{!695, !11}
!696 = !{i64 0, i64 8, !325, i64 8, i64 8, !680, i64 16, i64 8, !680, i64 24, i64 8, !680, i64 32, i64 8, !682}
!697 = distinct !{!697, !11}
!698 = distinct !{!698, !11, !18, !19}
!699 = distinct !{!699, !11, !18, !19}
!700 = distinct !{!700, !197}
!701 = distinct !{!701, !11, !18}
!702 = distinct !{!702, !11}
!703 = distinct !{null, null, null}
!704 = distinct !{!704, !11, !18, !19}
!705 = distinct !{!705, !11, !18, !19}
!706 = distinct !{!706, !197}
!707 = distinct !{!707, !11, !18}
!708 = distinct !{!708, !11}
!709 = distinct !{!709, !11, !18, !19}
!710 = distinct !{!710, !11, !18, !19}
!711 = distinct !{!711, !197}
!712 = distinct !{!712, !11, !18}
!713 = distinct !{!713, !11}
!714 = !{!715, !326, i64 0}
!715 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !326, i64 0, !681, i64 8, !681, i64 16, !681, i64 24, !683, i64 32}
!716 = !{!717, !68, i64 288}
!717 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !137, i64 0, !5, i64 32, !68, i64 288}
!718 = !{!715, !681, i64 8}
!719 = !{!715, !681, i64 16}
!720 = !{!715, !681, i64 24}
!721 = !{!715, !683, i64 32}
!722 = distinct !{null, null, null, null}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!725 = distinct !{!725, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!726 = distinct !{null, null, null, null, null}
!727 = distinct !{!727, !11}
!728 = distinct !{!728, !11}
!729 = distinct !{null, null, null, null, null}
!730 = distinct !{!730, !11}
!731 = distinct !{!731, !11}
!732 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!733 = !{!44, !45, i64 8}
!734 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!735 = distinct !{!735, !11, !18, !19}
!736 = distinct !{!736, !11, !18}
!737 = distinct !{!737, !11}
!738 = !{!50, !50, i64 0}
!739 = distinct !{!739, !11}
!740 = distinct !{!740, !11}
!741 = distinct !{!741, !11}
!742 = distinct !{!742, !11}
!743 = distinct !{!743, !11}
!744 = !{!57, !57, i64 0}
!745 = distinct !{!745, !11}
!746 = distinct !{!746, !11}
!747 = !{!748, !34, i64 0}
!748 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !34, i64 0}
!749 = !{!40, !4, i64 4}
!750 = !{!751, !4, i64 32}
!751 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !748, i64 0, !40, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !51, i64 37, !51, i64 38}
!752 = !{!751, !5, i64 36}
!753 = !{!751, !51, i64 38}
!754 = distinct !{!754, !11}
!755 = distinct !{!755, !11}
!756 = !{!45, !45, i64 0}
!757 = distinct !{!757, !11, !18, !19}
!758 = distinct !{!758, !11, !18}
!759 = distinct !{null, null, null}
!760 = distinct !{null, null, null}
!761 = distinct !{!761, !11}
!762 = !{!763, !763, i64 0}
!763 = !{!"short", !5, i64 0}
!764 = distinct !{!764, !11}
!765 = distinct !{!765, !11}
!766 = distinct !{null, null}
!767 = distinct !{null, null}
!768 = distinct !{!768, !11}
end_hunk_1
