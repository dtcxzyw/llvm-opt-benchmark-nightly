inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 78
begin_hunk_0_@decode_frame:bb.a

bytestream2_init.exit:                            ; preds = %bb.d
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bn, ptr %i.bs, align 8, !tbaa !50
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !51
  %i.bw = icmp eq i32 %i.bp, 0
  br i1 %i.bw, label %.thread, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bytestream2_init.exit
  %i.bx = load i8, ptr %i.bn, align 1, !tbaa !52  ; 2 uses
  switch i8 %i.bx, label %bb.aq [
    i8 2, label %bb.f
    i8 18, label %bb.g
    i8 34, label %bb.h
    i8 33, label %bb.ak
    i8 17, label %bb.ak
  ]

bb.f:                                             ; preds = %bytestream2_peek_byte.exit
  store i32 1, ptr %i.bb, align 8, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 36011968
  store ptr @get_freq0, ptr %i.by, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 36011976
  store ptr @decode0, ptr %i.bz, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !54
  %i.cc = or i32 %i.cb, 2
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !54
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !41
  %i.ch = sdiv i32 %i.cg, 4
  %i.ci = tail call fastcc i32 @decompress_i(ptr noundef nonnull %0, ptr noundef %i.ce, i32 noundef %i.ch)
  br label %.loopexit209

bb.g:                                             ; preds = %bytestream2_peek_byte.exit
  store i32 2, ptr %i.bb, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 36011968
  store ptr @get_freq, ptr %i.cj, align 8, !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 36011976
  store ptr @decode, ptr %i.ck, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !54
  %i.cn = or i32 %i.cm, 2
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !54
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !41
  %i.cs = sdiv i32 %i.cr, 4
  %i.ct = tail call fastcc i32 @decompress_i(ptr noundef nonnull %0, ptr noundef %i.cp, i32 noundef %i.cs)
  br label %.loopexit209

bb.h:                                             ; preds = %bytestream2_peek_byte.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !54
  %i.cw = or i32 %i.cv, 2
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !54
  store i32 3, ptr %i.bb, align 8, !tbaa !53
  %i.cx = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !59 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !41
  %i.db = sdiv i32 %i.da, 4                       ; 4 uses
  %i.dc = load ptr, ptr %i.ba, align 8, !tbaa !9  ; 175 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #12
  store i32 0, ptr %i.ap, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #12
  store i32 0, ptr %i.aq, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #12
  store i32 0, ptr %i.as, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #12
  store i32 0, ptr %i.at, align 4, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !60
  %i.dh = sub nsw i32 %i.db, %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51 ; 2 uses
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !49 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.dn, i64 1)
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %..i.i ; 3 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dl, %i.dp
  %i.dr = icmp slt i64 %i.dq, 4
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.dj, ptr %i.dd, align 8, !tbaa !49
  br label %init_rangecoder3.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.ds, ptr %i.dd, align 8, !tbaa !59
  %i.dt = load i32, ptr %i.do, align 1, !tbaa !52
  br label %init_rangecoder3.exit.i

init_rangecoder3.exit.i:                          ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i32 [ 0, %bb.i ], [ %i.dt, %bb.j ]
  store i32 %.0.i.i.i, ptr %i.de, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  store i32 0, ptr %i.du, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 13431376 ; 4 uses
  br label %bb.m

.preheader143.1.i.i:                              ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 20951632 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader143.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.preheader143.1.i.i ], [ %indvars.iv.next.1.i.i.3, %bb.k ] ; 5 uses
  %i.dx = getelementptr inbounds nuw [1836 x i8], ptr %i.dw, i64 %indvars.iv.1.i.i
  store i8 0, ptr %i.dx, align 4, !tbaa !63
  %i.dy = getelementptr inbounds nuw [1836 x i8], ptr %i.dw, i64 %indvars.iv.1.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1836
  store i8 0, ptr %i.dz, align 4, !tbaa !63
  %i.ea = getelementptr inbounds nuw [1836 x i8], ptr %i.dw, i64 %indvars.iv.1.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3672
  store i8 0, ptr %i.eb, align 4, !tbaa !63
  %i.ec = getelementptr inbounds nuw [1836 x i8], ptr %i.dw, i64 %indvars.iv.1.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 5508
  store i8 0, ptr %i.ed, align 4, !tbaa !63
  %indvars.iv.next.1.i.i.3 = add nuw nsw i64 %indvars.iv.1.i.i, 4 ; 2 uses
  %exitcond.1.not.i.i.3 = icmp eq i64 %indvars.iv.next.1.i.i.3, 4096
  br i1 %exitcond.1.not.i.i.3, label %.preheader143.2.i.i, label %bb.k, !llvm.loop !66

.preheader143.2.i.i:                              ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 28471888 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader143.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %.preheader143.2.i.i ], [ %indvars.iv.next.2.i.i.3, %bb.l ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [1836 x i8], ptr %i.ee, i64 %indvars.iv.2.i.i
  store i8 0, ptr %i.ef, align 4, !tbaa !63
  %i.eg = getelementptr inbounds nuw [1836 x i8], ptr %i.ee, i64 %indvars.iv.2.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1836
  store i8 0, ptr %i.eh, align 4, !tbaa !63
  %i.ei = getelementptr inbounds nuw [1836 x i8], ptr %i.ee, i64 %indvars.iv.2.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 3672
  store i8 0, ptr %i.ej, align 4, !tbaa !63
  %i.ek = getelementptr inbounds nuw [1836 x i8], ptr %i.ee, i64 %indvars.iv.2.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 5508
  store i8 0, ptr %i.el, align 4, !tbaa !63
  %indvars.iv.next.2.i.i.3 = add nuw nsw i64 %indvars.iv.2.i.i, 4 ; 2 uses
  %exitcond.2.not.i.i.3 = icmp eq i64 %indvars.iv.next.2.i.i.3, 4096
  br i1 %exitcond.2.not.i.i.3, label %.preheader142.i.i, label %bb.l, !llvm.loop !66

.preheader142.i.i:                                ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 35992144 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dc, i64 35992148 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 35992660 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 35993172 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dc, i64 35993684 ; 2 uses
  store i32 2048, ptr %i.em, align 8, !tbaa !41
  br label %bb.p

bb.m:                                             ; preds = %bb.m, %init_rangecoder3.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %init_rangecoder3.exit.i ], [ %indvars.iv.next.i.i.3, %bb.m ] ; 5 uses
  %i.er = getelementptr inbounds nuw [1836 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  store i8 0, ptr %i.er, align 4, !tbaa !63
  %i.es = getelementptr inbounds nuw [1836 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1836
  store i8 0, ptr %i.et, align 4, !tbaa !63
  %i.eu = getelementptr inbounds nuw [1836 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3672
  store i8 0, ptr %i.ev, align 4, !tbaa !63
  %i.ew = getelementptr inbounds nuw [1836 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 5508
  store i8 0, ptr %i.ex, align 4, !tbaa !63
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 4096
  br i1 %exitcond.not.i.i.3, label %.preheader143.1.i.i, label %bb.m, !llvm.loop !66

bb.n:                                             ; preds = %renew_table3.exit104.5.i.i, %._crit_edge.i.i.i
  %indvar.i.i.i = phi i64 [ 0, %renew_table3.exit104.5.i.i ], [ %indvar.next.i.i.i, %._crit_edge.i.i.i ] ; 6 uses
  %.02932.i.i.i = phi i32 [ 0, %renew_table3.exit104.5.i.i ], [ %i.fe, %._crit_edge.i.i.i ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvar.i.i.i
  store i16 16, ptr %i.ey, align 2, !tbaa !68
  %i.ez = trunc i32 %.02932.i.i.i to i16
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %indvar.i.i.i
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !68
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvar.i.i.i
  store i16 8, ptr %i.fb, align 2, !tbaa !68
  %i.fc = add nuw nsw i32 %.02932.i.i.i, 112
  %i.fd = lshr i32 %i.fc, 7                       ; 2 uses
  %i.fe = add nuw nsw i32 %.02932.i.i.i, 16
  %i.ff = lshr i32 %.02932.i.i.i, 7               ; 2 uses
  %.not30.i.i.i = icmp samesign ugt i32 %i.fd, %i.ff
  br i1 %.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %4 = trunc i64 %indvar.i.i.i to i8
  %5 = shl nuw nsw i64 %indvar.i.i.i, 4
  %6 = add nuw nsw i64 %5, 112
  %7 = lshr i64 %6, 7
  %scevgep.i.i.i = getelementptr i8, ptr %i.jh, i64 %7
  %8 = add nuw nsw i32 %i.ff, 1
  %narrow.i.i.i = sub nuw nsw i32 %8, %i.fd
  %i.fg = zext nneg i32 %narrow.i.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 %4, i64 %i.fg, i1 false), !tbaa !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.n
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvar.next.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i81.4.i.i, label %bb.n, !llvm.loop !69

._crit_edge.i81.4.i.i:                            ; preds = %._crit_edge.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004720
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004724
  store i32 2050, ptr %i.fh, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004754
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fj, i8 0, i64 7, i1 false), !tbaa !52
  %scevgep.i79.1.i.i = getelementptr i8, ptr %i.dc, i64 36004761
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i79.1.i.i, i8 1, i64 6, i1 false), !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004748
  store i16 410, ptr %i.fk, align 4, !tbaa !68
  %scevgep.i79.2.i.i = getelementptr i8, ptr %i.dc, i64 36004767
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i79.2.i.i, i8 2, i64 7, i1 false), !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004740
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004750
  store i16 410, ptr %i.fm, align 2, !tbaa !68
  %scevgep.i79.3.i.i = getelementptr i8, ptr %i.dc, i64 36004774
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i79.3.i.i, i8 3, i64 6, i1 false), !tbaa !52
  store <8 x i16> <i16 819, i16 819, i16 819, i16 819, i16 819, i16 0, i16 819, i16 1638>, ptr %i.fi, align 4, !tbaa !68
  store <4 x i16> <i16 2457, i16 3276, i16 410, i16 410>, ptr %i.fl, align 4, !tbaa !68
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004752
  store i16 410, ptr %i.fn, align 8, !tbaa !68
  %scevgep.i79.4.i.i = getelementptr i8, ptr %i.dc, i64 36004780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i79.4.i.i, i8 4, i64 6, i1 false), !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dc, i64 36003148
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dc, i64 36003152
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36003664
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004176
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004688
  store i32 2048, ptr %i.fo, align 4, !tbaa !41
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i91.i.i, %._crit_edge.i81.4.i.i
  %indvar.i85.i.i = phi i64 [ 0, %._crit_edge.i81.4.i.i ], [ %indvar.next.i92.i.i, %._crit_edge.i91.i.i ] ; 6 uses
  %.02932.i86.i.i = phi i32 [ 0, %._crit_edge.i81.4.i.i ], [ %i.fz, %._crit_edge.i91.i.i ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvar.i85.i.i
  store i16 16, ptr %i.ft, align 2, !tbaa !68
  %i.fu = trunc i32 %.02932.i86.i.i to i16
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvar.i85.i.i
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !68
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvar.i85.i.i
  store i16 8, ptr %i.fw, align 2, !tbaa !68
  %i.fx = add nuw nsw i32 %.02932.i86.i.i, 112
  %i.fy = lshr i32 %i.fx, 7                       ; 2 uses
  %i.fz = add nuw nsw i32 %.02932.i86.i.i, 16
  %i.ga = lshr i32 %.02932.i86.i.i, 7             ; 2 uses
  %.not30.i87.i.i = icmp samesign ugt i32 %i.fy, %i.ga
  br i1 %.not30.i87.i.i, label %._crit_edge.i91.i.i, label %.lr.ph.i88.i.i

.lr.ph.i88.i.i:                                   ; preds = %bb.o
  %9 = trunc i64 %indvar.i85.i.i to i8
  %10 = shl nuw nsw i64 %indvar.i85.i.i, 4
  %11 = add nuw nsw i64 %10, 112
  %12 = lshr i64 %11, 7
  %scevgep.i89.i.i = getelementptr i8, ptr %i.fs, i64 %12
  %13 = add nuw nsw i32 %i.ga, 1
  %narrow.i90.i.i = sub nuw nsw i32 %13, %i.fy
  %i.gb = zext nneg i32 %narrow.i90.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i89.i.i, i8 %9, i64 %i.gb, i1 false), !tbaa !52
  br label %._crit_edge.i91.i.i

._crit_edge.i91.i.i:                              ; preds = %.lr.ph.i88.i.i, %bb.o
  %indvar.next.i92.i.i = add nuw nsw i64 %indvar.i85.i.i, 1 ; 2 uses
  %exitcond.not.i93.i.i = icmp eq i64 %indvar.next.i92.i.i, 256
  br i1 %exitcond.not.i93.i.i, label %._crit_edge.i111.15.3.i.i, label %bb.o, !llvm.loop !69

bb.p:                                             ; preds = %._crit_edge.i101.i.i, %.preheader142.i.i
  %indvar.i95.i.i = phi i64 [ 0, %.preheader142.i.i ], [ %indvar.next.i102.i.i, %._crit_edge.i101.i.i ] ; 6 uses
  %.02932.i96.i.i = phi i32 [ 0, %.preheader142.i.i ], [ %i.gi, %._crit_edge.i101.i.i ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvar.i95.i.i
  store i16 16, ptr %i.gc, align 2, !tbaa !68
  %i.gd = trunc i32 %.02932.i96.i.i to i16
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvar.i95.i.i
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !68
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvar.i95.i.i
  store i16 8, ptr %i.gf, align 2, !tbaa !68
  %i.gg = add nuw nsw i32 %.02932.i96.i.i, 112
  %i.gh = lshr i32 %i.gg, 7                       ; 2 uses
  %i.gi = add nuw nsw i32 %.02932.i96.i.i, 16
  %i.gj = lshr i32 %.02932.i96.i.i, 7             ; 2 uses
  %.not30.i97.i.i = icmp samesign ugt i32 %i.gh, %i.gj
  br i1 %.not30.i97.i.i, label %._crit_edge.i101.i.i, label %.lr.ph.i98.i.i

.lr.ph.i98.i.i:                                   ; preds = %bb.p
  %14 = trunc i64 %indvar.i95.i.i to i8
  %15 = shl nuw nsw i64 %indvar.i95.i.i, 4
  %16 = add nuw nsw i64 %15, 112
  %17 = lshr i64 %16, 7
  %scevgep.i99.i.i = getelementptr i8, ptr %i.eq, i64 %17
  %18 = add nuw nsw i32 %i.gj, 1
  %narrow.i100.i.i = sub nuw nsw i32 %18, %i.gh
  %i.gk = zext nneg i32 %narrow.i100.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.i.i, i8 %14, i64 %i.gk, i1 false), !tbaa !52
  br label %._crit_edge.i101.i.i

._crit_edge.i101.i.i:                             ; preds = %.lr.ph.i98.i.i, %bb.p
  %indvar.next.i102.i.i = add nuw nsw i64 %indvar.i95.i.i, 1 ; 2 uses
  %exitcond.not.i103.i.i = icmp eq i64 %indvar.next.i102.i.i, 256
  br i1 %exitcond.not.i103.i.i, label %renew_table3.exit104.i.i, label %bb.p, !llvm.loop !69

renew_table3.exit104.i.i:                         ; preds = %._crit_edge.i101.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dc, i64 35993716
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dc, i64 35993720
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dc, i64 35994232
  %i.go = getelementptr inbounds nuw i8, ptr %i.dc, i64 35994744
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dc, i64 35995256
  store i32 2048, ptr %i.gl, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i101.1.i.i, %renew_table3.exit104.i.i
  %indvar.i95.1.i.i = phi i64 [ 0, %renew_table3.exit104.i.i ], [ %indvar.next.i102.1.i.i, %._crit_edge.i101.1.i.i ] ; 6 uses
  %.02932.i96.1.i.i = phi i32 [ 0, %renew_table3.exit104.i.i ], [ %i.gw, %._crit_edge.i101.1.i.i ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %indvar.i95.1.i.i
  store i16 16, ptr %i.gq, align 2, !tbaa !68
  %i.gr = trunc i32 %.02932.i96.1.i.i to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %indvar.i95.1.i.i
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !68
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %indvar.i95.1.i.i
  store i16 8, ptr %i.gt, align 2, !tbaa !68
  %i.gu = add nuw nsw i32 %.02932.i96.1.i.i, 112
  %i.gv = lshr i32 %i.gu, 7                       ; 2 uses
  %i.gw = add nuw nsw i32 %.02932.i96.1.i.i, 16
  %i.gx = lshr i32 %.02932.i96.1.i.i, 7           ; 2 uses
  %.not30.i97.1.i.i = icmp samesign ugt i32 %i.gv, %i.gx
  br i1 %.not30.i97.1.i.i, label %._crit_edge.i101.1.i.i, label %.lr.ph.i98.1.i.i

.lr.ph.i98.1.i.i:                                 ; preds = %bb.q
  %19 = trunc i64 %indvar.i95.1.i.i to i8
  %20 = shl nuw nsw i64 %indvar.i95.1.i.i, 4
  %21 = add nuw nsw i64 %20, 112
  %22 = lshr i64 %21, 7
  %scevgep.i99.1.i.i = getelementptr i8, ptr %i.gp, i64 %22
  %23 = add nuw nsw i32 %i.gx, 1
  %narrow.i100.1.i.i = sub nuw nsw i32 %23, %i.gv
  %i.gy = zext nneg i32 %narrow.i100.1.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.1.i.i, i8 %19, i64 %i.gy, i1 false), !tbaa !52
  br label %._crit_edge.i101.1.i.i

._crit_edge.i101.1.i.i:                           ; preds = %.lr.ph.i98.1.i.i, %bb.q
  %indvar.next.i102.1.i.i = add nuw nsw i64 %indvar.i95.1.i.i, 1 ; 2 uses
  %exitcond.not.i103.1.i.i = icmp eq i64 %indvar.next.i102.1.i.i, 256
  br i1 %exitcond.not.i103.1.i.i, label %renew_table3.exit104.1.i.i, label %bb.q, !llvm.loop !69

renew_table3.exit104.1.i.i:                       ; preds = %._crit_edge.i101.1.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dc, i64 35995288
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dc, i64 35995292
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dc, i64 35995804
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dc, i64 35996316
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dc, i64 35996828
  store i32 2048, ptr %i.gz, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i101.2.i.i, %renew_table3.exit104.1.i.i
  %indvar.i95.2.i.i = phi i64 [ 0, %renew_table3.exit104.1.i.i ], [ %indvar.next.i102.2.i.i, %._crit_edge.i101.2.i.i ] ; 6 uses
  %.02932.i96.2.i.i = phi i32 [ 0, %renew_table3.exit104.1.i.i ], [ %i.hk, %._crit_edge.i101.2.i.i ] ; 4 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %indvar.i95.2.i.i
  store i16 16, ptr %i.he, align 2, !tbaa !68
  %i.hf = trunc i32 %.02932.i96.2.i.i to i16
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvar.i95.2.i.i
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !68
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvar.i95.2.i.i
  store i16 8, ptr %i.hh, align 2, !tbaa !68
  %i.hi = add nuw nsw i32 %.02932.i96.2.i.i, 112
  %i.hj = lshr i32 %i.hi, 7                       ; 2 uses
  %i.hk = add nuw nsw i32 %.02932.i96.2.i.i, 16
  %i.hl = lshr i32 %.02932.i96.2.i.i, 7           ; 2 uses
  %.not30.i97.2.i.i = icmp samesign ugt i32 %i.hj, %i.hl
  br i1 %.not30.i97.2.i.i, label %._crit_edge.i101.2.i.i, label %.lr.ph.i98.2.i.i

.lr.ph.i98.2.i.i:                                 ; preds = %bb.r
  %24 = trunc i64 %indvar.i95.2.i.i to i8
  %25 = shl nuw nsw i64 %indvar.i95.2.i.i, 4
  %26 = add nuw nsw i64 %25, 112
  %27 = lshr i64 %26, 7
  %scevgep.i99.2.i.i = getelementptr i8, ptr %i.hd, i64 %27
  %28 = add nuw nsw i32 %i.hl, 1
  %narrow.i100.2.i.i = sub nuw nsw i32 %28, %i.hj
  %i.hm = zext nneg i32 %narrow.i100.2.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.2.i.i, i8 %24, i64 %i.hm, i1 false), !tbaa !52
  br label %._crit_edge.i101.2.i.i

._crit_edge.i101.2.i.i:                           ; preds = %.lr.ph.i98.2.i.i, %bb.r
  %indvar.next.i102.2.i.i = add nuw nsw i64 %indvar.i95.2.i.i, 1 ; 2 uses
  %exitcond.not.i103.2.i.i = icmp eq i64 %indvar.next.i102.2.i.i, 256
  br i1 %exitcond.not.i103.2.i.i, label %renew_table3.exit104.2.i.i, label %bb.r, !llvm.loop !69

renew_table3.exit104.2.i.i:                       ; preds = %._crit_edge.i101.2.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dc, i64 35996860
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dc, i64 35996864
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dc, i64 35997376
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dc, i64 35997888
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dc, i64 35998400
  store i32 2048, ptr %i.hn, align 4, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i101.3.i.i, %renew_table3.exit104.2.i.i
  %indvar.i95.3.i.i = phi i64 [ 0, %renew_table3.exit104.2.i.i ], [ %indvar.next.i102.3.i.i, %._crit_edge.i101.3.i.i ] ; 6 uses
  %.02932.i96.3.i.i = phi i32 [ 0, %renew_table3.exit104.2.i.i ], [ %i.hy, %._crit_edge.i101.3.i.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvar.i95.3.i.i
  store i16 16, ptr %i.hs, align 2, !tbaa !68
  %i.ht = trunc i32 %.02932.i96.3.i.i to i16
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvar.i95.3.i.i
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !68
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvar.i95.3.i.i
  store i16 8, ptr %i.hv, align 2, !tbaa !68
  %i.hw = add nuw nsw i32 %.02932.i96.3.i.i, 112
  %i.hx = lshr i32 %i.hw, 7                       ; 2 uses
  %i.hy = add nuw nsw i32 %.02932.i96.3.i.i, 16
  %i.hz = lshr i32 %.02932.i96.3.i.i, 7           ; 2 uses
  %.not30.i97.3.i.i = icmp samesign ugt i32 %i.hx, %i.hz
  br i1 %.not30.i97.3.i.i, label %._crit_edge.i101.3.i.i, label %.lr.ph.i98.3.i.i

.lr.ph.i98.3.i.i:                                 ; preds = %bb.s
  %29 = trunc i64 %indvar.i95.3.i.i to i8
  %30 = shl nuw nsw i64 %indvar.i95.3.i.i, 4
  %31 = add nuw nsw i64 %30, 112
  %32 = lshr i64 %31, 7
  %scevgep.i99.3.i.i = getelementptr i8, ptr %i.hr, i64 %32
  %33 = add nuw nsw i32 %i.hz, 1
  %narrow.i100.3.i.i = sub nuw nsw i32 %33, %i.hx
  %i.ia = zext nneg i32 %narrow.i100.3.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.3.i.i, i8 %29, i64 %i.ia, i1 false), !tbaa !52
  br label %._crit_edge.i101.3.i.i

._crit_edge.i101.3.i.i:                           ; preds = %.lr.ph.i98.3.i.i, %bb.s
  %indvar.next.i102.3.i.i = add nuw nsw i64 %indvar.i95.3.i.i, 1 ; 2 uses
  %exitcond.not.i103.3.i.i = icmp eq i64 %indvar.next.i102.3.i.i, 256
  br i1 %exitcond.not.i103.3.i.i, label %renew_table3.exit104.3.i.i, label %bb.s, !llvm.loop !69

renew_table3.exit104.3.i.i:                       ; preds = %._crit_edge.i101.3.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dc, i64 35998432
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dc, i64 35998436
  %i.id = getelementptr inbounds nuw i8, ptr %i.dc, i64 35998948
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dc, i64 35999460
  %i.if = getelementptr inbounds nuw i8, ptr %i.dc, i64 35999972
  store i32 2048, ptr %i.ib, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i101.4.i.i, %renew_table3.exit104.3.i.i
  %indvar.i95.4.i.i = phi i64 [ 0, %renew_table3.exit104.3.i.i ], [ %indvar.next.i102.4.i.i, %._crit_edge.i101.4.i.i ] ; 6 uses
  %.02932.i96.4.i.i = phi i32 [ 0, %renew_table3.exit104.3.i.i ], [ %i.im, %._crit_edge.i101.4.i.i ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvar.i95.4.i.i
  store i16 16, ptr %i.ig, align 2, !tbaa !68
  %i.ih = trunc i32 %.02932.i96.4.i.i to i16
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %indvar.i95.4.i.i
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !68
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvar.i95.4.i.i
  store i16 8, ptr %i.ij, align 2, !tbaa !68
  %i.ik = add nuw nsw i32 %.02932.i96.4.i.i, 112
  %i.il = lshr i32 %i.ik, 7                       ; 2 uses
  %i.im = add nuw nsw i32 %.02932.i96.4.i.i, 16
  %i.in = lshr i32 %.02932.i96.4.i.i, 7           ; 2 uses
  %.not30.i97.4.i.i = icmp samesign ugt i32 %i.il, %i.in
  br i1 %.not30.i97.4.i.i, label %._crit_edge.i101.4.i.i, label %.lr.ph.i98.4.i.i

.lr.ph.i98.4.i.i:                                 ; preds = %bb.t
  %34 = trunc i64 %indvar.i95.4.i.i to i8
  %35 = shl nuw nsw i64 %indvar.i95.4.i.i, 4
  %36 = add nuw nsw i64 %35, 112
  %37 = lshr i64 %36, 7
  %scevgep.i99.4.i.i = getelementptr i8, ptr %i.if, i64 %37
  %38 = add nuw nsw i32 %i.in, 1
  %narrow.i100.4.i.i = sub nuw nsw i32 %38, %i.il
  %i.io = zext nneg i32 %narrow.i100.4.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.4.i.i, i8 %34, i64 %i.io, i1 false), !tbaa !52
  br label %._crit_edge.i101.4.i.i

._crit_edge.i101.4.i.i:                           ; preds = %.lr.ph.i98.4.i.i, %bb.t
  %indvar.next.i102.4.i.i = add nuw nsw i64 %indvar.i95.4.i.i, 1 ; 2 uses
  %exitcond.not.i103.4.i.i = icmp eq i64 %indvar.next.i102.4.i.i, 256
  br i1 %exitcond.not.i103.4.i.i, label %renew_table3.exit104.4.i.i, label %bb.t, !llvm.loop !69

renew_table3.exit104.4.i.i:                       ; preds = %._crit_edge.i101.4.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dc, i64 36000004
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36000008
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dc, i64 36000520
  %i.is = getelementptr inbounds nuw i8, ptr %i.dc, i64 36001032
  %i.it = getelementptr inbounds nuw i8, ptr %i.dc, i64 36001544
  store i32 2048, ptr %i.ip, align 4, !tbaa !41
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i101.5.i.i, %renew_table3.exit104.4.i.i
  %indvar.i95.5.i.i = phi i64 [ 0, %renew_table3.exit104.4.i.i ], [ %indvar.next.i102.5.i.i, %._crit_edge.i101.5.i.i ] ; 6 uses
  %.02932.i96.5.i.i = phi i32 [ 0, %renew_table3.exit104.4.i.i ], [ %i.ja, %._crit_edge.i101.5.i.i ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %indvar.i95.5.i.i
  store i16 16, ptr %i.iu, align 2, !tbaa !68
  %i.iv = trunc i32 %.02932.i96.5.i.i to i16
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvar.i95.5.i.i
  store i16 %i.iv, ptr %i.iw, align 2, !tbaa !68
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %indvar.i95.5.i.i
  store i16 8, ptr %i.ix, align 2, !tbaa !68
  %i.iy = add nuw nsw i32 %.02932.i96.5.i.i, 112
  %i.iz = lshr i32 %i.iy, 7                       ; 2 uses
  %i.ja = add nuw nsw i32 %.02932.i96.5.i.i, 16
  %i.jb = lshr i32 %.02932.i96.5.i.i, 7           ; 2 uses
  %.not30.i97.5.i.i = icmp samesign ugt i32 %i.iz, %i.jb
  br i1 %.not30.i97.5.i.i, label %._crit_edge.i101.5.i.i, label %.lr.ph.i98.5.i.i

.lr.ph.i98.5.i.i:                                 ; preds = %bb.u
  %39 = trunc i64 %indvar.i95.5.i.i to i8
  %40 = shl nuw nsw i64 %indvar.i95.5.i.i, 4
  %41 = add nuw nsw i64 %40, 112
  %42 = lshr i64 %41, 7
  %scevgep.i99.5.i.i = getelementptr i8, ptr %i.it, i64 %42
  %43 = add nuw nsw i32 %i.jb, 1
  %narrow.i100.5.i.i = sub nuw nsw i32 %43, %i.iz
  %i.jc = zext nneg i32 %narrow.i100.5.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i99.5.i.i, i8 %39, i64 %i.jc, i1 false), !tbaa !52
  br label %._crit_edge.i101.5.i.i

._crit_edge.i101.5.i.i:                           ; preds = %.lr.ph.i98.5.i.i, %bb.u
  %indvar.next.i102.5.i.i = add nuw nsw i64 %indvar.i95.5.i.i, 1 ; 2 uses
  %exitcond.not.i103.5.i.i = icmp eq i64 %indvar.next.i102.5.i.i, 256
  br i1 %exitcond.not.i103.5.i.i, label %renew_table3.exit104.5.i.i, label %bb.u, !llvm.loop !69

renew_table3.exit104.5.i.i:                       ; preds = %._crit_edge.i101.5.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dc, i64 36001576
  %i.je = getelementptr inbounds nuw i8, ptr %i.dc, i64 36001580
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dc, i64 36002092
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dc, i64 36002604
  %i.jh = getelementptr inbounds nuw i8, ptr %i.dc, i64 36003116
  store i32 2048, ptr %i.jd, align 8, !tbaa !41
  br label %bb.n

._crit_edge.i111.15.3.i.i:                        ; preds = %._crit_edge.i91.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004788
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004792
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004824
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004856
  store i32 2048, ptr %i.ji, align 4, !tbaa !41
  %i.jm = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004888
  store <8 x i16> splat (i16 256), ptr %i.jj, align 8, !tbaa !68
  store <8 x i16> <i16 0, i16 256, i16 512, i16 768, i16 1024, i16 1280, i16 1536, i16 1792>, ptr %i.jk, align 8, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.jl, align 8, !tbaa !68
  store <8 x i16> <i16 0, i16 257, i16 514, i16 771, i16 1028, i16 1285, i16 1542, i16 1799>, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004808
  %i.jo = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004840
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004872
  %scevgep.i109.8.i.i = getelementptr i8, ptr %i.dc, i64 36004904
  store <8 x i16> splat (i16 256), ptr %i.jn, align 8, !tbaa !68
  store <8 x i16> <i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840>, ptr %i.jo, align 8, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.jp, align 8, !tbaa !68
  store <8 x i16> <i16 2056, i16 2313, i16 2570, i16 2827, i16 3084, i16 3341, i16 3598, i16 3855>, ptr %scevgep.i109.8.i.i, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004920
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004924
  %i.js = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004956
  %i.jt = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004988
  store i32 2048, ptr %i.jq, align 8, !tbaa !41
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005020
  store <8 x i16> splat (i16 256), ptr %i.jr, align 4, !tbaa !68
  store <8 x i16> <i16 0, i16 256, i16 512, i16 768, i16 1024, i16 1280, i16 1536, i16 1792>, ptr %i.js, align 4, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.jt, align 4, !tbaa !68
  store <8 x i16> <i16 0, i16 257, i16 514, i16 771, i16 1028, i16 1285, i16 1542, i16 1799>, ptr %i.ju, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004940
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dc, i64 36004972
  %i.jx = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005004
  %scevgep.i109.8.1.i.i = getelementptr i8, ptr %i.dc, i64 36005036
  store <8 x i16> splat (i16 256), ptr %i.jv, align 4, !tbaa !68
  store <8 x i16> <i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840>, ptr %i.jw, align 4, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.jx, align 4, !tbaa !68
  store <8 x i16> <i16 2056, i16 2313, i16 2570, i16 2827, i16 3084, i16 3341, i16 3598, i16 3855>, ptr %scevgep.i109.8.1.i.i, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005052
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005056
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005088
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005120
  store i32 2048, ptr %i.jy, align 4, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005152
  store <8 x i16> splat (i16 256), ptr %i.jz, align 8, !tbaa !68
  store <8 x i16> <i16 0, i16 256, i16 512, i16 768, i16 1024, i16 1280, i16 1536, i16 1792>, ptr %i.ka, align 8, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.kb, align 8, !tbaa !68
  store <8 x i16> <i16 0, i16 257, i16 514, i16 771, i16 1028, i16 1285, i16 1542, i16 1799>, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005072
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005104
  %i.kf = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005136
  %scevgep.i109.8.2.i.i = getelementptr i8, ptr %i.dc, i64 36005168
  store <8 x i16> splat (i16 256), ptr %i.kd, align 8, !tbaa !68
  store <8 x i16> <i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840>, ptr %i.ke, align 8, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.kf, align 8, !tbaa !68
  store <8 x i16> <i16 2056, i16 2313, i16 2570, i16 2827, i16 3084, i16 3341, i16 3598, i16 3855>, ptr %scevgep.i109.8.2.i.i, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005184
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005188
  %i.ki = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005220
  %i.kj = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005252
  store i32 2048, ptr %i.kg, align 8, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005284
  store <8 x i16> splat (i16 256), ptr %i.kh, align 4, !tbaa !68
  store <8 x i16> <i16 0, i16 256, i16 512, i16 768, i16 1024, i16 1280, i16 1536, i16 1792>, ptr %i.ki, align 4, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.kj, align 4, !tbaa !68
  store <8 x i16> <i16 0, i16 257, i16 514, i16 771, i16 1028, i16 1285, i16 1542, i16 1799>, ptr %i.kk, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005204
  %i.km = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005236
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005268
  %scevgep.i109.8.3.i.i = getelementptr i8, ptr %i.dc, i64 36005300
  store <8 x i16> splat (i16 256), ptr %i.kl, align 4, !tbaa !68
  store <8 x i16> <i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840>, ptr %i.km, align 4, !tbaa !68
  store <8 x i16> splat (i16 128), ptr %i.kn, align 4, !tbaa !68
  store <8 x i16> <i16 2056, i16 2313, i16 2570, i16 2827, i16 3084, i16 3341, i16 3598, i16 3855>, ptr %scevgep.i109.8.3.i.i, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005316
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dc, i64 36005320
  %i.kq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36006344
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dc, i64 36007368
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dc, i64 36008392
  store i32 2048, ptr %i.ko, align 4, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i121.i.i, %._crit_edge.i111.15.3.i.i
  %indvar.i115.i.i = phi i64 [ 0, %._crit_edge.i111.15.3.i.i ], [ %indvar.next.i122.i.i, %._crit_edge.i121.i.i ] ; 6 uses
  %.02932.i116.i.i = phi i32 [ 0, %._crit_edge.i111.15.3.i.i ], [ %i.kz, %._crit_edge.i121.i.i ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %indvar.i115.i.i
  store i16 8, ptr %i.kt, align 2, !tbaa !68
  %i.ku = trunc i32 %.02932.i116.i.i to i16
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %indvar.i115.i.i
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !68
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %indvar.i115.i.i
  store i16 4, ptr %i.kw, align 2, !tbaa !68
  %i.kx = add nuw nsw i32 %.02932.i116.i.i, 120
  %i.ky = lshr i32 %i.kx, 7                       ; 2 uses
  %i.kz = add nuw nsw i32 %.02932.i116.i.i, 8
  %i.la = lshr i32 %.02932.i116.i.i, 7            ; 2 uses
  %.not30.i117.i.i = icmp samesign ugt i32 %i.ky, %i.la
  br i1 %.not30.i117.i.i, label %._crit_edge.i121.i.i, label %.lr.ph.i118.i.i

.lr.ph.i118.i.i:                                  ; preds = %bb.v
  %44 = trunc i64 %indvar.i115.i.i to i8
  %45 = shl nuw nsw i64 %indvar.i115.i.i, 3
  %46 = add nuw nsw i64 %45, 120
  %47 = lshr i64 %46, 7
  %scevgep.i119.i.i = getelementptr i8, ptr %i.ks, i64 %47
  %48 = add nuw nsw i32 %i.la, 1
  %narrow.i120.i.i = sub nuw nsw i32 %48, %i.ky
  %i.lb = zext nneg i32 %narrow.i120.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i119.i.i, i8 %44, i64 %i.lb, i1 false), !tbaa !52
  br label %._crit_edge.i121.i.i

._crit_edge.i121.i.i:                             ; preds = %.lr.ph.i118.i.i, %bb.v
  %indvar.next.i122.i.i = add nuw nsw i64 %indvar.i115.i.i, 1 ; 2 uses
  %exitcond.not.i123.i.i = icmp eq i64 %indvar.next.i122.i.i, 512
  br i1 %exitcond.not.i123.i.i, label %renew_table3.exit124.i.i, label %bb.v, !llvm.loop !69

renew_table3.exit124.i.i:                         ; preds = %._crit_edge.i121.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dc, i64 36008424
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dc, i64 36008428
  %i.le = getelementptr inbounds nuw i8, ptr %i.dc, i64 36009452
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dc, i64 36010476
  %i.lg = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011500
  store i32 2048, ptr %i.lc, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i121.1.i.i, %renew_table3.exit124.i.i
  %indvar.i115.1.i.i = phi i64 [ 0, %renew_table3.exit124.i.i ], [ %indvar.next.i122.1.i.i, %._crit_edge.i121.1.i.i ] ; 6 uses
  %.02932.i116.1.i.i = phi i32 [ 0, %renew_table3.exit124.i.i ], [ %i.ln, %._crit_edge.i121.1.i.i ] ; 4 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %indvar.i115.1.i.i
  store i16 8, ptr %i.lh, align 2, !tbaa !68
  %i.li = trunc i32 %.02932.i116.1.i.i to i16
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %indvar.i115.1.i.i
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !68
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %indvar.i115.1.i.i
  store i16 4, ptr %i.lk, align 2, !tbaa !68
  %i.ll = add nuw nsw i32 %.02932.i116.1.i.i, 120
  %i.lm = lshr i32 %i.ll, 7                       ; 2 uses
  %i.ln = add nuw nsw i32 %.02932.i116.1.i.i, 8
  %i.lo = lshr i32 %.02932.i116.1.i.i, 7          ; 2 uses
  %.not30.i117.1.i.i = icmp samesign ugt i32 %i.lm, %i.lo
  br i1 %.not30.i117.1.i.i, label %._crit_edge.i121.1.i.i, label %.lr.ph.i118.1.i.i

.lr.ph.i118.1.i.i:                                ; preds = %bb.w
  %49 = trunc i64 %indvar.i115.1.i.i to i8
  %50 = shl nuw nsw i64 %indvar.i115.1.i.i, 3
  %51 = add nuw nsw i64 %50, 120
  %52 = lshr i64 %51, 7
  %scevgep.i119.1.i.i = getelementptr i8, ptr %i.lg, i64 %52
  %53 = add nuw nsw i32 %i.lo, 1
  %narrow.i120.1.i.i = sub nuw nsw i32 %53, %i.lm
  %i.lp = zext nneg i32 %narrow.i120.1.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i119.1.i.i, i8 %49, i64 %i.lp, i1 false), !tbaa !52
  br label %._crit_edge.i121.1.i.i

._crit_edge.i121.1.i.i:                           ; preds = %.lr.ph.i118.1.i.i, %bb.w
  %indvar.next.i122.1.i.i = add nuw nsw i64 %indvar.i115.1.i.i, 1 ; 2 uses
  %exitcond.not.i123.1.i.i = icmp eq i64 %indvar.next.i122.1.i.i, 512
  br i1 %exitcond.not.i123.1.i.i, label %reinit_tables3.exit.i, label %bb.w, !llvm.loop !69

reinit_tables3.exit.i:                            ; preds = %._crit_edge.i121.1.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011532 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011536
  store i32 2046, ptr %i.lq, align 4, !tbaa !41
  %i.ls = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ls, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.i.i = getelementptr i8, ptr %i.dc, i64 36011578
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011552
  %scevgep.i129.2.i.i = getelementptr i8, ptr %i.dc, i64 36011583
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.i.i = getelementptr i8, ptr %i.dc, i64 36011588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011568
  store i16 341, ptr %i.lu, align 8, !tbaa !68
  %scevgep.i129.4.i.i = getelementptr i8, ptr %i.dc, i64 36011594
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.lr, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.lt, align 8, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011570
  store i16 341, ptr %i.lv, align 2, !tbaa !68
  %scevgep.i129.5.i.i = getelementptr i8, ptr %i.dc, i64 36011599
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %i.lw = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011604
  %i.lx = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011608
  store i32 2046, ptr %i.lw, align 4, !tbaa !41
  %i.ly = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ly, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.1.i.i = getelementptr i8, ptr %i.dc, i64 36011650
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.1.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.lz = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011624
  %scevgep.i129.2.1.i.i = getelementptr i8, ptr %i.dc, i64 36011655
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.1.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.1.i.i = getelementptr i8, ptr %i.dc, i64 36011660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.1.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011640
  store i16 341, ptr %i.ma, align 8, !tbaa !68
  %scevgep.i129.4.1.i.i = getelementptr i8, ptr %i.dc, i64 36011666
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.1.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.lx, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.lz, align 8, !tbaa !68
  %i.mb = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011642
  store i16 341, ptr %i.mb, align 2, !tbaa !68
  %scevgep.i129.5.1.i.i = getelementptr i8, ptr %i.dc, i64 36011671
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.1.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %i.mc = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011676
  %i.md = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011680
  store i32 2046, ptr %i.mc, align 4, !tbaa !41
  %i.me = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.me, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.2.i.i = getelementptr i8, ptr %i.dc, i64 36011722
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.2.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.mf = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011696
  %scevgep.i129.2.2.i.i = getelementptr i8, ptr %i.dc, i64 36011727
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.2.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.2.i.i = getelementptr i8, ptr %i.dc, i64 36011732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.2.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.mg = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011712
  store i16 341, ptr %i.mg, align 8, !tbaa !68
  %scevgep.i129.4.2.i.i = getelementptr i8, ptr %i.dc, i64 36011738
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.2.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.md, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.mf, align 8, !tbaa !68
  %i.mh = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011714
  store i16 341, ptr %i.mh, align 2, !tbaa !68
  %scevgep.i129.5.2.i.i = getelementptr i8, ptr %i.dc, i64 36011743
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.2.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %i.mi = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011748
  %i.mj = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011752
  store i32 2046, ptr %i.mi, align 4, !tbaa !41
  %i.mk = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011788
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mk, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.3.i.i = getelementptr i8, ptr %i.dc, i64 36011794
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.3.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.ml = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011768
  %scevgep.i129.2.3.i.i = getelementptr i8, ptr %i.dc, i64 36011799
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.3.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.3.i.i = getelementptr i8, ptr %i.dc, i64 36011804
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.3.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011784
  store i16 341, ptr %i.mm, align 8, !tbaa !68
  %scevgep.i129.4.3.i.i = getelementptr i8, ptr %i.dc, i64 36011810
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.3.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.mj, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.ml, align 8, !tbaa !68
  %i.mn = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011786
  store i16 341, ptr %i.mn, align 2, !tbaa !68
  %scevgep.i129.5.3.i.i = getelementptr i8, ptr %i.dc, i64 36011815
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.3.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011820
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011824
  store i32 2046, ptr %i.mo, align 4, !tbaa !41
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011860
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mq, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.4.i.i = getelementptr i8, ptr %i.dc, i64 36011866
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.4.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.mr = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011840
  %scevgep.i129.2.4.i.i = getelementptr i8, ptr %i.dc, i64 36011871
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.4.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.4.i.i = getelementptr i8, ptr %i.dc, i64 36011876
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.4.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.ms = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011856
  store i16 341, ptr %i.ms, align 8, !tbaa !68
  %scevgep.i129.4.4.i.i = getelementptr i8, ptr %i.dc, i64 36011882
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.4.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.mp, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.mr, align 8, !tbaa !68
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011858
  store i16 341, ptr %i.mt, align 2, !tbaa !68
  %scevgep.i129.5.4.i.i = getelementptr i8, ptr %i.dc, i64 36011887
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.4.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011892
  %i.mv = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011896
  store i32 2046, ptr %i.mu, align 4, !tbaa !41
  %i.mw = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011932
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mw, i8 0, i64 6, i1 false), !tbaa !52
  %scevgep.i129.1.5.i.i = getelementptr i8, ptr %i.dc, i64 36011938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.1.5.i.i, i8 1, i64 5, i1 false), !tbaa !52
  %i.mx = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011912
  %scevgep.i129.2.5.i.i = getelementptr i8, ptr %i.dc, i64 36011943
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.2.5.i.i, i8 2, i64 5, i1 false), !tbaa !52
  %scevgep.i129.3.5.i.i = getelementptr i8, ptr %i.dc, i64 36011948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep.i129.3.5.i.i, i8 3, i64 6, i1 false), !tbaa !52
  %i.my = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011928
  store i16 341, ptr %i.my, align 8, !tbaa !68
  %scevgep.i129.4.5.i.i = getelementptr i8, ptr %i.dc, i64 36011954
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.4.5.i.i, i8 4, i64 5, i1 false), !tbaa !52
  store <8 x i16> <i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 0, i16 682>, ptr %i.mv, align 8, !tbaa !68
  store <8 x i16> <i16 1364, i16 2046, i16 2728, i16 3410, i16 341, i16 341, i16 341, i16 341>, ptr %i.mx, align 8, !tbaa !68
  %i.mz = getelementptr inbounds nuw i8, ptr %i.dc, i64 36011930
  store i16 341, ptr %i.mz, align 2, !tbaa !68
  %scevgep.i129.5.5.i.i = getelementptr i8, ptr %i.dc, i64 36011959
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.i129.5.5.i.i, i8 5, i64 5, i1 false), !tbaa !52
  %.promoted105.i = load i32, ptr %i.as, align 4  ; 2 uses
  %.promoted109.i = load i32, ptr %i.at, align 4  ; 2 uses
  %.promoted113.i = load i32, ptr %i.au, align 4
  %.promoted117.i = load i32, ptr %i.av, align 4
  %i.na = load i32, ptr %i.df, align 8, !tbaa !60
  %.not121.i = icmp slt i32 %i.na, 0
  br i1 %.not121.i, label %._crit_edge.i, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %reinit_tables3.exit.i
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.x

.loopexit.i:                                      ; preds = %bb.aa
  store i32 -1, ptr %i.ar, align 4, !tbaa !41
  %.not.i = icmp sgt i32 %i.np, %i.nz
  br i1 %.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !70

bb.x:                                             ; preds = %.loopexit.i, %.lr.ph127.i
  %.058126.i = phi i32 [ 0, %.lr.ph127.i ], [ %i.np, %.loopexit.i ]
  %.lcssa90106125.i = phi i32 [ %.promoted105.i, %.lr.ph127.i ], [ %spec.select133.i, %.loopexit.i ]
  %.lcssa93110124.i = phi i32 [ %.promoted109.i, %.lr.ph127.i ], [ %spec.select.i, %.loopexit.i ]
  %i.nc = call fastcc i32 @decode_units3(ptr noundef %i.dc, ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ap, ptr noundef %i.aq) ; 2 uses
  %i.nd = icmp slt i32 %i.nc, 0
  br i1 %i.nd, label %decompress_i3.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ne = call fastcc i32 @decode_value3(ptr noundef %i.dc, i32 noundef 255, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.eq, ptr noundef %i.ar) ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 0
  br i1 %i.nf, label %decompress_i3.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ng = load i32, ptr %i.ar, align 4, !tbaa !41 ; 3 uses
  %i.nh = icmp slt i32 %i.ng, 1
  br i1 %i.nh, label %decompress_i3.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.ni = load i32, ptr %i.az, align 4, !tbaa !41
  %i.nj = shl i32 %i.ni, 16
  %i.nk = load i32, ptr %i.ay, align 4, !tbaa !41
  %i.nl = shl i32 %i.nk, 8
  %i.nm = add i32 %i.nl, %i.nj
  %i.nn = load i32, ptr %i.ax, align 4, !tbaa !41
  %i.no = add i32 %i.nm, %i.nn                    ; 2 uses
  %i.np = add nuw nsw i32 %i.ng, %.058126.i       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i
  %.in.i = phi i32 [ %i.nt, %bb.aa ], [ %i.ng, %.lr.ph.preheader.i ] ; 2 uses
  %i.nq = phi i32 [ %spec.select133.i, %bb.aa ], [ %.lcssa90106125.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.nr = phi i32 [ %spec.select.i, %bb.aa ], [ %.lcssa93110124.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ns = load i32, ptr %i.nb, align 4, !tbaa !71
  %.not70.i = icmp slt i32 %i.nq, %i.ns
  br i1 %.not70.i, label %bb.aa, label %decompress_i3.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.nt = add nsw i32 %.in.i, -1
  %i.nu = mul nsw i32 %i.nq, %i.db
  %i.nv = add nsw i32 %i.nr, %i.nu
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.nw
end_hunk_0
