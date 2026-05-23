inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@ZSTD_decodeLiteralsBlock:bb.a
  %.0210 = zext nneg i32 %.0210.in to i64         ; 12 uses
  %i.ao = icmp ne i32 %.0210.in, 0
  %i.ap = icmp eq ptr %3, null
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.bw, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp samesign ult i64 %i.i, %.0210
  br i1 %i.aq, label %bb.bw, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp samesign ult i32 %.0210.in, 6
  %or.cond9 = select i1 %.0215, i1 %i.ar, i1 false
  br i1 %or.cond9, label %bb.bw, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = add nuw nsw i64 %.0209, %.0214          ; 3 uses
  %i.at = icmp ugt i64 %i.as, %2
  br i1 %i.at, label %bb.bw, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp samesign ult i64 %i.p, %.0210
  br i1 %i.au, label %bb.bw, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !27
  %i.ax = zext i32 %i.aw to i64
  br label %ZSTD_blockSizeMax.exit.i

ZSTD_blockSizeMax.exit.i:                         ; preds = %bb.p, %bb.o
  %i.ay = phi i64 [ %i.ax, %bb.p ], [ 131072, %bb.o ] ; 2 uses
  %i.az = icmp eq i32 %5, 0
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %ZSTD_blockSizeMax.exit.i
  %i.ba = add nuw nsw i64 %.0210, 64
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = icmp ugt i64 %4, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0210
  br label %ZSTD_allocateLiteralsBuffer.exit

bb.s:                                             ; preds = %bb.q, %ZSTD_blockSizeMax.exit.i
  %i.bh = icmp samesign ult i32 %.0210.in, 65537
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0210
  br label %ZSTD_allocateLiteralsBuffer.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %i.p ; 2 uses
  %i.bm = sub nsw i64 0, %.0210
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !31
  br label %ZSTD_allocateLiteralsBuffer.exit

ZSTD_allocateLiteralsBuffer.exit:                 ; preds = %bb.r, %bb.t, %bb.u
  %i.bp = phi ptr [ %i.bi, %bb.t ], [ %i.bn, %bb.u ], [ %i.be, %bb.r ] ; 4 uses
  %.sink37.i = phi ptr [ %i.bk, %bb.t ], [ %i.bl, %bb.u ], [ %i.bg, %bb.r ]
  %.sink35.i = phi i32 [ 0, %bb.t ], [ 2, %bb.u ], [ 1, %bb.r ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30376 ; 2 uses
  store ptr %.sink37.i, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30384 ; 2 uses
  store i32 %.sink35.i, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = icmp samesign ugt i32 %.0210.in, 768
  %or.cond3 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond3, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %ZSTD_allocateLiteralsBuffer.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 8 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.0213247 = phi i64 [ 0, %bb.v ], [ %i.co, %bb.x ] ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  tail call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 2, i32 1)
  %i.bz = icmp samesign ult i64 %.0213247, 16324
  br i1 %i.bz, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cb, i32 0, i32 2, i32 1)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cd, i32 0, i32 2, i32 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cf, i32 0, i32 2, i32 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ch, i32 0, i32 2, i32 1)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cj, i32 0, i32 2, i32 1)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cl, i32 0, i32 2, i32 1)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0213247
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cn, i32 0, i32 2, i32 1)
  %i.co = add nuw nsw i64 %.0213247, 512
  br label %bb.w

.loopexit:                                        ; preds = %bb.w, %ZSTD_allocateLiteralsBuffer.exit
  %i.cp = icmp eq i8 %i.c, 3
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.0209 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  br i1 %.0215, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call i64 @HUF_decompress1X_usingDTable(ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cq, i64 noundef %.0214, ptr noundef %i.cs, i32 noundef %i.v) #17
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cu = tail call i64 @HUF_decompress4X_usingDTable(ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cq, i64 noundef %.0214, ptr noundef %i.cs, i32 noundef %i.v) #17
  br label %bb.ae

bb.ab:                                            ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.0209 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 27324 ; 2 uses
  br i1 %.0215, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = tail call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef nonnull %i.cv, ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cw, i64 noundef %.0214, ptr noundef nonnull %i.cx, i64 noundef 2560, i32 noundef %i.v) #17
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cz = tail call i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef nonnull %i.cv, ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cw, i64 noundef %.0214, ptr noundef nonnull %i.cx, i64 noundef 2560, i32 noundef %i.v) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.z, %bb.aa
  %.0216 = phi i64 [ %i.ct, %bb.z ], [ %i.cu, %bb.aa ], [ %i.cy, %bb.ac ], [ %i.cz, %bb.ad ]
  %i.da = load i32, ptr %i.br, align 8, !tbaa !33
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.dc, ptr noundef nonnull align 1 dereferenceable(65536) %i.de, i64 65536, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 65504
  %i.di = add nsw i64 %.0210, -65536
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.dg, i64 %i.di, i1 false)
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !36
  %i.dk = getelementptr inbounds i8, <2 x ptr> %i.dj, <2 x i64> <i64 65504, i64 -32>
  store <2 x ptr> %i.dk, ptr %i.df, align 8, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dl = icmp ult i64 %.0216, -119
  br i1 %i.dl, label %bb.ah, label %bb.bw

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0210, ptr %i.dp, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 30000
  store i32 1, ptr %i.dq, align 8, !tbaa !28
  %i.dr = icmp eq i8 %i.c, 2
  br i1 %i.dr, label %bb.ai, label %bb.bw

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !35
  br label %bb.bw

bb.aj:                                            ; preds = %ZSTD_blockSizeMax.exit
  %i.du = zext i8 %i.b to i32                     ; 2 uses
  %6 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %4)
  %i.dv = and i32 %i.du, 12
  switch i32 %i.dv, label %bb.ak [
    i32 12, label %bb.am
    i32 4, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dw = lshr i32 %i.du, 3
  %i.dx = zext nneg i32 %i.dw to i64
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %.val228 = load i16, ptr %1, align 1, !tbaa !7
  %i.dy = lshr i16 %.val228, 4
  %i.dz = zext nneg i16 %i.dy to i64
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.ea = icmp eq i64 %2, 2
  br i1 %i.ea, label %bb.bw, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val231 = load i16, ptr %1, align 1, !tbaa !7
  %i.eb = getelementptr i8, ptr %1, i64 2
  %.val232 = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ec = zext i16 %.val231 to i64
  %i.ed = zext i8 %.val232 to i64
  %i.ee = shl nuw nsw i64 %i.ed, 16
  %i.ef = or disjoint i64 %i.ee, %i.ec
  %i.eg = lshr i64 %i.ef, 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.al, %bb.an
  %.0212 = phi i64 [ %i.dx, %bb.ak ], [ %i.eg, %bb.an ], [ %i.dz, %bb.al ] ; 16 uses
  %.0211 = phi i64 [ 1, %bb.ak ], [ 3, %bb.an ], [ 2, %bb.al ] ; 3 uses
  %i.eh = icmp ne i64 %.0212, 0
  %i.ei = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.ei, %i.eh
  br i1 %or.cond5, label %bb.bw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = icmp samesign ugt i64 %.0212, %i.i
  br i1 %i.ej, label %bb.bw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ek = icmp ult i64 %4, %.0212
  br i1 %i.ek, label %bb.bw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit.i236, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.em = load i32, ptr %i.el, align 8, !tbaa !27
  %i.en = zext i32 %i.em to i64
  br label %ZSTD_blockSizeMax.exit.i236

ZSTD_blockSizeMax.exit.i236:                      ; preds = %bb.as, %bb.ar
  %i.eo = phi i64 [ %i.en, %bb.as ], [ 131072, %bb.ar ] ; 2 uses
  %i.ep = icmp eq i32 %5, 0
  br i1 %i.ep, label %bb.at, label %bb.av

bb.at:                                            ; preds = %ZSTD_blockSizeMax.exit.i236
  %i.eq = add nuw nsw i64 %.0212, 64
  %i.er = add nuw nsw i64 %i.eq, %i.eo
  %i.es = icmp ugt i64 %4, %i.er
  br i1 %i.es, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 %i.eo
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.0212
  br label %ZSTD_allocateLiteralsBuffer.exit239

bb.av:                                            ; preds = %bb.at, %ZSTD_blockSizeMax.exit.i236
  %i.ex = icmp samesign ult i64 %.0212, 65537
  br i1 %i.ex, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.0212
  br label %ZSTD_allocateLiteralsBuffer.exit239

bb.ax:                                            ; preds = %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 %6
  %i.fc = sub nsw i64 0, %.0212
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 65504 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.0212
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -65536
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !31
  br label %ZSTD_allocateLiteralsBuffer.exit239

ZSTD_allocateLiteralsBuffer.exit239:              ; preds = %bb.au, %bb.aw, %bb.ax
  %i.fi = phi ptr [ %i.ey, %bb.aw ], [ %i.fe, %bb.ax ], [ %i.eu, %bb.au ] ; 2 uses
  %.sink37.i237 = phi ptr [ %i.fa, %bb.aw ], [ %i.fg, %bb.ax ], [ %i.ew, %bb.au ]
  %i.fj = phi i1 [ false, %bb.aw ], [ true, %bb.ax ], [ false, %bb.au ]
  %.sink35.i238 = phi i32 [ 0, %bb.aw ], [ 2, %bb.ax ], [ 1, %bb.au ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 30376 ; 2 uses
  store ptr %.sink37.i237, ptr %i.fk, align 8, !tbaa !32
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 30384 ; 2 uses
  store i32 %.sink35.i238, ptr %i.fl, align 8, !tbaa !33
  %i.fm = add nuw nsw i64 %.0211, %.0212          ; 4 uses
  %i.fn = add nuw nsw i64 %i.fm, 32
  %i.fo = icmp ugt i64 %i.fn, %2
  br i1 %i.fo, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %ZSTD_allocateLiteralsBuffer.exit239
  %i.fp = icmp samesign ugt i64 %i.fm, %2
  br i1 %i.fp, label %bb.bw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %.0211 ; 3 uses
  br i1 %i.fj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fr = add nsw i64 %.0212, -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull align 1 %i.fq, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.0212
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.fs, ptr noundef nonnull align 1 dereferenceable(65536) %i.fu, i64 65536, i1 false)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull align 1 %i.fq, i64 %.0212, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0212, ptr %i.fy, align 8, !tbaa !38
  br label %bb.bw

bb.bd:                                            ; preds = %ZSTD_allocateLiteralsBuffer.exit239
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %.0211 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0212, ptr %i.gb, align 8, !tbaa !38
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.0212
  store ptr %i.gc, ptr %i.fk, align 8, !tbaa !32
  store i32 0, ptr %i.fl, align 8, !tbaa !33
  br label %bb.bw

bb.be:                                            ; preds = %ZSTD_blockSizeMax.exit
  %i.gd = zext i8 %i.b to i32                     ; 2 uses
  %7 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %4)
  %i.ge = and i32 %i.gd, 12
  switch i32 %i.ge, label %bb.bf [
    i32 12, label %bb.bi
    i32 4, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gf = lshr i32 %i.gd, 3
  %i.gg = zext nneg i32 %i.gf to i64
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.gh = icmp eq i64 %2, 2
  br i1 %i.gh, label %bb.bw, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val = load i16, ptr %1, align 1, !tbaa !7
  %i.gi = lshr i16 %.val, 4
  %i.gj = zext nneg i16 %i.gi to i64
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.gk = icmp ult i64 %2, 4
  br i1 %i.gk, label %bb.bw, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val229 = load i16, ptr %1, align 1, !tbaa !7
  %i.gl = getelementptr i8, ptr %1, i64 2
  %.val230 = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gm = zext i16 %.val229 to i64
  %i.gn = zext i8 %.val230 to i64
  %i.go = shl nuw nsw i64 %i.gn, 16
  %i.gp = or disjoint i64 %i.go, %i.gm
  %i.gq = lshr i64 %i.gp, 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bh, %bb.bj
  %.0208 = phi i64 [ %i.gg, %bb.bf ], [ %i.gq, %bb.bj ], [ %i.gj, %bb.bh ] ; 11 uses
  %.0207 = phi i64 [ 1, %bb.bf ], [ 3, %bb.bj ], [ 2, %bb.bh ] ; 3 uses
  %i.gr = icmp ne i64 %.0208, 0
  %i.gs = icmp eq ptr %3, null
  %or.cond7 = and i1 %i.gs, %i.gr
  br i1 %or.cond7, label %bb.bw, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gt = icmp samesign ugt i64 %.0208, %i.i
  br i1 %i.gt, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gu = icmp ult i64 %4, %.0208
  br i1 %i.gu, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit.i241, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !27
  %i.gx = zext i32 %i.gw to i64
  br label %ZSTD_blockSizeMax.exit.i241

ZSTD_blockSizeMax.exit.i241:                      ; preds = %bb.bo, %bb.bn
  %i.gy = phi i64 [ %i.gx, %bb.bo ], [ 131072, %bb.bn ] ; 2 uses
  %i.gz = icmp eq i32 %5, 0
  br i1 %i.gz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %ZSTD_blockSizeMax.exit.i241
  %i.ha = add nuw nsw i64 %.0208, 64
  %i.hb = add nuw nsw i64 %i.ha, %i.gy
  %i.hc = icmp ugt i64 %4, %i.hb
  br i1 %i.hc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %i.gy
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp, %ZSTD_blockSizeMax.exit.i241
  %i.hf = icmp samesign ult i64 %.0208, 65537
  br i1 %i.hf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 30388
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 %7
  %i.hi = sub nsw i64 0, %.0208
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 65504 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.0208
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -65536
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !31
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 30376
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 30384
  store i32 2, ptr %i.hp, align 8, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 %.0207 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !9
  %i.hs = add nsw i64 %.0208, -65536
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hk, i8 %i.hr, i64 %i.hs, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %i.hu = load i8, ptr %i.hq, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.ht, i8 %i.hu, i64 65536, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %.sink = phi ptr [ %i.hg, %bb.bs ], [ %i.he, %bb.bq ] ; 3 uses
  %.sink35.i243.ph = phi i32 [ 0, %bb.bs ], [ 1, %bb.bq ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store ptr %.sink, ptr %i.hv, align 8, !tbaa !31
  %.sink37.i242.ph = getelementptr inbounds nuw i8, ptr %.sink, i64 %.0208
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 30376
  store ptr %.sink37.i242.ph, ptr %i.hw, align 8, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 30384
  store i32 %.sink35.i243.ph, ptr %i.hx, align 8, !tbaa !33
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %.0207
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sink, i8 %i.hz, i64 %.0208, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !31
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0208, ptr %i.id, align 8, !tbaa !38
  %i.ie = add nuw nsw i64 %.0207, 1
  br label %bb.bw

default.unreachable252:                           ; preds = %ZSTD_blockSizeMax.exit
  unreachable

bb.bw:                                            ; preds = %bb.d, %bb.e, %bb.ah, %bb.ai, %bb.ag, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.ay, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.bd, %bb.bc, %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bv, %bb.a
  %.4 = phi i64 [ -20, %bb.a ], [ -20, %bb.ay ], [ %i.as, %bb.ah ], [ -30, %bb.d ], [ -20, %bb.e ], [ -20, %bb.ag ], [ -70, %bb.j ], [ -20, %bb.k ], [ -24, %bb.l ], [ -20, %bb.m ], [ -70, %bb.n ], [ %i.as, %bb.ai ], [ -20, %bb.am ], [ -70, %bb.ao ], [ -20, %bb.ap ], [ -70, %bb.aq ], [ %i.fm, %bb.bc ], [ %i.fm, %bb.bd ], [ -20, %bb.bi ], [ -70, %bb.bk ], [ -20, %bb.bl ], [ %i.ie, %bb.bv ], [ -20, %bb.bg ], [ -70, %bb.bm ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTD_buildFSETable(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef captures(none) %6, i64 %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %ZSTD_buildFSETable_body_default.exit

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = add i32 %2, 1                            ; 3 uses
  %i.c = shl nuw i32 1, %5                        ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 106 ; 2 uses
  %i.e = add i32 %i.c, -1                         ; 7 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.c
  store i32 1, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i65.i, align 4
  br label %.preheader7.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = add i32 %5, -1
  %sext.i.i = shl i32 65536, %i.f
  %i.g = ashr exact i32 %sext.i.i, 16             ; 3 uses
  %wide.trip.count.i = zext i32 %i.b to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.j ] ; 5 uses
  %.0.i11.i = phi i32 [ %i.e, %.lr.ph.i.new ], [ %.1.i.i.1, %bb.j ] ; 3 uses
  %.sroa.0.0.i10.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.sroa.0.2.i.i.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !7    ; 3 uses
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.0.i11.i, -1
  %i.m = zext i32 %.0.i11.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.p, ptr %i.o, align 4, !tbaa !39
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = sext i16 %i.j to i32
  %.not.i.i = icmp sgt i32 %i.g, %i.q
  %spec.select.i.i = select i1 %.not.i.i, i32 %.sroa.0.0.i10.i, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i16 [ 1, %bb.e ], [ %i.j, %bb.f ]
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.0.i10.i, %bb.e ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %.1.i.i = phi i32 [ %i.l, %bb.e ], [ %.0.i11.i, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.r, align 2, !tbaa !7
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !7    ; 3 uses
  %i.u = icmp eq i16 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = sext i16 %i.t to i32
  %.not.i.i.1 = icmp sgt i32 %i.g, %i.v
  %spec.select.i.i.1 = select i1 %.not.i.i.1, i32 %.sroa.0.2.i.i, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = add i32 %.1.i.i, -1
  %i.x = zext i32 %.1.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi i16 [ 1, %bb.i ], [ %i.t, %bb.h ]
  %.sroa.0.2.i.i.1 = phi i32 [ %.sroa.0.2.i.i, %bb.i ], [ %spec.select.i.i.1, %bb.h ] ; 3 uses
  %.1.i.i.1 = phi i32 [ %i.w, %bb.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.ab, align 2, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !41

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.0.i11.i.epil.init = phi i32 [ %i.e, %.lr.ph.i ], [ %.1.i.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.sroa.0.0.i10.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.sroa.0.2.i.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !7  ; 3 uses
  %i.ae = icmp eq i16 %i.ad, -1
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.af = sext i16 %i.ad to i32
  %.not.i.i.epil = icmp sgt i32 %i.g, %i.af
  %spec.select.i.i.epil = select i1 %.not.i.i.epil, i32 %.sroa.0.0.i10.i.epil.init, i32 0
  br label %._crit_edge.i.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.ag = add i32 %.0.i11.i.epil.init, -1
  %i.ah = zext i32 %.0.i11.i.epil.init to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = trunc nuw i64 %indvars.iv.i.epil.init to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !39
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.l, %bb.k
  %.sink.i.epil = phi i16 [ 1, %bb.l ], [ %i.ad, %bb.k ]
  %.sroa.0.2.i.i.epil = phi i32 [ %.sroa.0.0.i10.i.epil.init, %bb.l ], [ %spec.select.i.i.epil, %bb.k ]
  %.1.i.i.epil = phi i32 [ %i.ag, %bb.l ], [ %.0.i11.i.epil.init, %bb.k ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.al, align 2, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %.sroa.0.2.i.i.lcssa = phi i32 [ %.sroa.0.2.i.i.1, %._crit_edge.i.unr-lcssa ], [ %.sroa.0.2.i.i.epil, %._crit_edge.i.epilog-lcssa ]
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.i.epil, %._crit_edge.i.epilog-lcssa ] ; 4 uses
  store i32 %.sroa.0.2.i.i.lcssa, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.am = icmp eq i32 %.1.i.i.lcssa, %i.e
  br i1 %i.am, label %.lr.ph31.i, label %bb.m
end_hunk_0
begin_hunk_1_@ZSTD_buildFSETable_body_bmi2:bb.a

bb.k:                                             ; preds = %.lr.ph22, %._crit_edge17
  %indvars.iv41 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next42, %._crit_edge17 ] ; 3 uses
  %.0115.i20 = phi i32 [ 0, %.lr.ph22 ], [ %.1116.i.lcssa, %._crit_edge17 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv41
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !7  ; 5 uses
  %i.cq = icmp sgt i16 %i.cp, 0
  br i1 %i.cq, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %bb.k
  %i.cr = trunc nuw i64 %indvars.iv41 to i32      ; 3 uses
  %i.cs = icmp eq i16 %i.cp, 1
  br i1 %i.cs, label %.lr.ph16.epil.preheader, label %.lr.ph16.preheader.new

.lr.ph16.preheader.new:                           ; preds = %.lr.ph16.preheader
  %i.ct = and i16 %i.cp, 32766
  %unroll_iter11 = zext nneg i16 %i.ct to i32
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.n, %.lr.ph16.preheader.new
  %.1116.i13 = phi i32 [ %.0115.i20, %.lr.ph16.preheader.new ], [ %.2.i.1, %bb.n ] ; 2 uses
  %niter12 = phi i32 [ 0, %.lr.ph16.preheader.new ], [ %niter12.next.1, %bb.n ]
  %i.cu = zext nneg i32 %.1116.i13 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph16
  %.1116.pn.i = phi i32 [ %.1116.i13, %.lr.ph16 ], [ %.2.i, %bb.l ]
  %.pn.i = add nuw i32 %i.cn, %.1116.pn.i
  %.2.i = and i32 %.pn.i, %i.e                    ; 4 uses
  %i.cx = icmp ugt i32 %.2.i, %.1.i.lcssa
  br i1 %i.cx, label %bb.l, label %.lr.ph16.1, !prof !50, !llvm.loop !51

.lr.ph16.1:                                       ; preds = %bb.l
  %i.cy = zext nneg i32 %.2.i to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.cr, ptr %i.da, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.1
  %.1116.pn.i.1 = phi i32 [ %.2.i, %.lr.ph16.1 ], [ %.2.i.1, %bb.m ]
  %.pn.i.1 = add nuw i32 %i.cn, %.1116.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.e                ; 5 uses
  %i.db = icmp ugt i32 %.2.i.1, %.1.i.lcssa
  br i1 %i.db, label %bb.m, label %bb.n, !prof !50, !llvm.loop !51

bb.n:                                             ; preds = %bb.m
  %niter12.next.1 = add i32 %niter12, 2           ; 2 uses
  %niter12.ncmp.1 = icmp eq i32 %niter12.next.1, %unroll_iter11
  br i1 %niter12.ncmp.1, label %._crit_edge17.loopexit.unr-lcssa, label %.lr.ph16, !llvm.loop !52

._crit_edge17.loopexit.unr-lcssa:                 ; preds = %bb.n
  %i.dc = and i16 %i.cp, 1
  %lcmp.mod8.not = icmp eq i16 %i.dc, 0
  br i1 %lcmp.mod8.not, label %._crit_edge17, label %.lr.ph16.epil.preheader

.lr.ph16.epil.preheader:                          ; preds = %._crit_edge17.loopexit.unr-lcssa, %.lr.ph16.preheader
  %.1116.i13.epil.init = phi i32 [ %.0115.i20, %.lr.ph16.preheader ], [ %.2.i.1, %._crit_edge17.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i16 %i.cp to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.dd = zext nneg i32 %.1116.i13.epil.init to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.cr, ptr %i.df, align 4, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.epil.preheader
  %.1116.pn.i.epil = phi i32 [ %.1116.i13.epil.init, %.lr.ph16.epil.preheader ], [ %.2.i.epil, %bb.o ]
  %.pn.i.epil = add nuw i32 %i.cn, %.1116.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.e          ; 3 uses
  %i.dg = icmp ugt i32 %.2.i.epil, %.1.i.lcssa
  br i1 %i.dg, label %bb.o, label %._crit_edge17, !prof !50, !llvm.loop !51

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit.unr-lcssa, %bb.o, %bb.k
  %.1116.i.lcssa = phi i32 [ %.0115.i20, %bb.k ], [ %.2.i.1, %._crit_edge17.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.o ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count52
  br i1 %exitcond45.not, label %.loopexit, label %bb.k, !llvm.loop !53

.loopexit:                                        ; preds = %._crit_edge17, %.preheader
  %wide.trip.count57 = zext i32 %i.c to i64
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.p
  %indvars.iv54 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next55, %bb.p ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv54 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !39
  %i.dk = zext i32 %i.dj to i64                   ; 3 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !7  ; 2 uses
  %i.dn = add i16 %i.dm, 1
  store i16 %i.dn, ptr %i.dl, align 2, !tbaa !7
  %i.do = zext i16 %i.dm to i32                   ; 2 uses
  %i.dp = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.do, i1 true)
  %i.dq = xor i32 %i.dp, 31
  %i.dr = sub i32 %5, %i.dq                       ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !54
  %i.du = and i32 %i.dr, 255
  %i.dv = shl i32 %i.do, %i.du
  %i.dw = sub i32 %i.dv, %i.c
  %i.dx = trunc i32 %i.dw to i16
  store i16 %i.dx, ptr %i.dh, align 4, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 %i.dk
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  store i8 %i.dz, ptr %i.ea, align 2, !tbaa !56
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dk
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  store i32 %i.ec, ptr %i.di, align 4, !tbaa !39
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %ZSTD_buildFSETable_body.exit, label %bb.p, !llvm.loop !57

ZSTD_buildFSETable_body.exit:                     ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [53 x i16], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [53 x i16], align 16              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 5 uses
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.j = load i8, ptr %2, align 1, !tbaa !9       ; 3 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp slt i8 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.j, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %3, 3
  br i1 %i.n, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.val = load i16, ptr %i.i, align 1, !tbaa !7
  %i.p = zext i16 %.val to i32
  %i.q = add nuw nsw i32 %i.p, 32512              ; 2 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %.not.not = icmp eq i64 %3, 1
  br i1 %.not.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.k, 8
  %i.s = add nsw i32 %i.r, -32768
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.u = load i8, ptr %i.i, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.086 = phi i32 [ %i.k, %bb.b ], [ %i.w, %bb.f ] ; 3 uses
  %.081 = phi ptr [ %i.i, %bb.b ], [ %i.t, %bb.f ] ; 2 uses
  store i32 %.086, ptr %1, align 4, !tbaa !3
  %i.x = icmp eq i32 %.086, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not98 = icmp eq ptr %.081, %i.g
  %spec.select = select i1 %.not98, i64 %3, i64 -20
  br label %.critedge

bb.i:                                             ; preds = %.thread, %bb.g
  %.081113 = phi ptr [ %i.o, %.thread ], [ %.081, %bb.g ] ; 2 uses
  %.086112 = phi i32 [ %i.q, %.thread ], [ %.086, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.081113, i64 1 ; 6 uses
  %i.z = icmp ugt ptr %i.y, %i.g
  br i1 %i.z, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %.081113, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  %i.ac = and i32 %i.ab, 3
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = lshr exact i32 %i.ab, 2
  %i.af = and i32 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ah = ptrtoint ptr %i.g to i64                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30004 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 27324 ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 30180     ; 3 uses
  %.val101 = load i32, ptr %i.an, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 35, ptr %i.d, align 4, !tbaa !3
  switch i32 %i.ad, label %default.unreachable [
    i32 1, label %bb.l
    i32 0, label %bb.o
    i32 3, label %bb.p
    i32 2, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %.not45.i = icmp eq ptr %i.g, %i.y
  br i1 %.not45.i, label %ZSTD_buildSeqTable.exit.thread120, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !9    ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 35
  br i1 %i.ap, label %ZSTD_buildSeqTable.exit.thread120, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @LL_base, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.aw, align 4, !tbaa !61
  store i32 0, ptr %i.ag, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 0, ptr %i.ax, align 1, !tbaa !54
  store i16 0, ptr %i.av, align 4, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.au, ptr %i.ay, align 2, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.as, ptr %i.az, align 4, !tbaa !39
  store ptr %i.ag, ptr %0, align 8, !tbaa !64
  br label %ZSTD_buildSeqTable.exit.thread

bb.o:                                             ; preds = %bb.k
  store ptr @LL_defaultDTable, ptr %0, align 8, !tbaa !64
  br label %ZSTD_buildSeqTable.exit.thread

bb.p:                                             ; preds = %bb.k
  %.not44.i = icmp eq i32 %i.aj, 0
  br i1 %.not44.i, label %ZSTD_buildSeqTable.exit.thread120, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp ne i32 %i.al, 0
  %i.bb = icmp samesign ugt i32 %.086112, 24
  %or.cond.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %ZSTD_buildSeqTable.exit.thread.loopexit, label %ZSTD_buildSeqTable.exit.thread

ZSTD_buildSeqTable.exit.thread.loopexit:          ; preds = %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !64    ; 65 uses
  tail call void @llvm.prefetch.p0(ptr %i.bc, i32 0, i32 2, i32 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bd, i32 0, i32 2, i32 1)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.be, i32 0, i32 2, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bf, i32 0, i32 2, i32 1)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bg, i32 0, i32 2, i32 1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bh, i32 0, i32 2, i32 1)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bi, i32 0, i32 2, i32 1)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bj, i32 0, i32 2, i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bk, i32 0, i32 2, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bl, i32 0, i32 2, i32 1)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bm, i32 0, i32 2, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bn, i32 0, i32 2, i32 1)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bo, i32 0, i32 2, i32 1)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bp, i32 0, i32 2, i32 1)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bq, i32 0, i32 2, i32 1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %i.br, i32 0, i32 2, i32 1)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bs, i32 0, i32 2, i32 1)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bt, i32 0, i32 2, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 2, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bv, i32 0, i32 2, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 2, i32 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1344
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 2, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 2, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 1472
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bz, i32 0, i32 2, i32 1)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 1536
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ca, i32 0, i32 2, i32 1)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 1600
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cb, i32 0, i32 2, i32 1)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 1664
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cc, i32 0, i32 2, i32 1)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1728
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cd, i32 0, i32 2, i32 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 1792
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ce, i32 0, i32 2, i32 1)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1856
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cf, i32 0, i32 2, i32 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1920
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cg, i32 0, i32 2, i32 1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 1984
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ch, i32 0, i32 2, i32 1)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 2048
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ci, i32 0, i32 2, i32 1)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cj, i32 0, i32 2, i32 1)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 2176
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ck, i32 0, i32 2, i32 1)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 2240
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cl, i32 0, i32 2, i32 1)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 2304
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cm, i32 0, i32 2, i32 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 2368
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cn, i32 0, i32 2, i32 1)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 2432
  tail call void @llvm.prefetch.p0(ptr nonnull %i.co, i32 0, i32 2, i32 1)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 2496
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cp, i32 0, i32 2, i32 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 2560
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cq, i32 0, i32 2, i32 1)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 2624
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 2, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 2688
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cs, i32 0, i32 2, i32 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 2752
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ct, i32 0, i32 2, i32 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 2816
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cu, i32 0, i32 2, i32 1)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 2880
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cv, i32 0, i32 2, i32 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 2944
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cw, i32 0, i32 2, i32 1)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 3008
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cx, i32 0, i32 2, i32 1)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 3072
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cy, i32 0, i32 2, i32 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 3136
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 0, i32 2, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 3200
  tail call void @llvm.prefetch.p0(ptr nonnull %i.da, i32 0, i32 2, i32 1)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bc, i64 3264
  tail call void @llvm.prefetch.p0(ptr nonnull %i.db, i32 0, i32 2, i32 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 3328
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dc, i32 0, i32 2, i32 1)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3392
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dd, i32 0, i32 2, i32 1)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bc, i64 3456
  tail call void @llvm.prefetch.p0(ptr nonnull %i.de, i32 0, i32 2, i32 1)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bc, i64 3520
  tail call void @llvm.prefetch.p0(ptr nonnull %i.df, i32 0, i32 2, i32 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bc, i64 3584
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dg, i32 0, i32 2, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 3648
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dh, i32 0, i32 2, i32 1)
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 3712
  tail call void @llvm.prefetch.p0(ptr nonnull %i.di, i32 0, i32 2, i32 1)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bc, i64 3776
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dj, i32 0, i32 2, i32 1)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bc, i64 3840
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dk, i32 0, i32 2, i32 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bc, i64 3904
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dl, i32 0, i32 2, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bc, i64 3968
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 2, i32 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bc, i64 4032
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dn, i32 0, i32 2, i32 1)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 4096
  tail call void @llvm.prefetch.p0(ptr nonnull %i.do, i32 0, i32 2, i32 1)
  br label %ZSTD_buildSeqTable.exit.thread

bb.r:                                             ; preds = %bb.k
  %i.dp = ptrtoint ptr %i.y to i64
  %i.dq = sub i64 %i.ah, %i.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.dr = call i64 @FSE_readNCount(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.y, i64 noundef %i.dq) #17 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, -119
  br i1 %i.ds, label %bb.s, label %ZSTD_buildSeqTable.exit.thread125

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.du = icmp ugt i32 %i.dt, 9
  br i1 %i.du, label %ZSTD_buildSeqTable.exit.thread125, label %ZSTD_buildSeqTable.exit

default.unreachable:                              ; preds = %bb.k
  unreachable

ZSTD_buildSeqTable.exit.thread120:                ; preds = %bb.l, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

ZSTD_buildSeqTable.exit.thread125:                ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

ZSTD_buildSeqTable.exit:                          ; preds = %bb.s
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !3
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.f, i32 noundef %i.dv, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %i.dt, ptr noundef nonnull %i.am, i64 poison, i32 noundef %.val101)
  store ptr %i.ag, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %ZSTD_buildSeqTable.exit.thread

ZSTD_buildSeqTable.exit.thread:                   ; preds = %bb.q, %bb.o, %bb.n, %ZSTD_buildSeqTable.exit.thread.loopexit, %ZSTD_buildSeqTable.exit
  %.1.i.ph.pn = phi i64 [ %i.dr, %ZSTD_buildSeqTable.exit ], [ 1, %bb.n ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %ZSTD_buildSeqTable.exit.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.182117 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.1.i.ph.pn ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dy = load i32, ptr %i.ai, align 4, !tbaa !60 ; 2 uses
  %i.dz = load i32, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %.val100 = load i32, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 31, ptr %i.a, align 4, !tbaa !3
  %4 = and i32 %i.ab, 48
  %5 = sub i32 %4, 0                              ; 2 uses
  %6 = call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 28)
  switch i32 %6, label %default.unreachable49.i108 [
    i32 1, label %bb.t
    i32 0, label %bb.w
    i32 3, label %bb.x
    i32 2, label %bb.z
  ]

bb.t:                                             ; preds = %ZSTD_buildSeqTable.exit.thread
  %.not45.i107 = icmp eq ptr %i.g, %.182117
  br i1 %.not45.i107, label %ZSTD_buildSeqTable.exit109.thread135, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = load i8, ptr %.182117, align 1, !tbaa !9 ; 2 uses
  %i.eb = icmp ugt i8 %i.ea, 31
  br i1 %i.eb, label %ZSTD_buildSeqTable.exit109.thread135, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = zext nneg i8 %i.ea to i64               ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @OF_base, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr @OF_bits, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i32 0, ptr %i.ei, align 4, !tbaa !61
  store i32 0, ptr %i.dw, align 4, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4147
  store i8 0, ptr %i.ej, align 1, !tbaa !54
  store i16 0, ptr %i.eh, align 4, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4146
  store i8 %i.eg, ptr %i.ek, align 2, !tbaa !56
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i32 %i.ee, ptr %i.el, align 4, !tbaa !39
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !64
  br label %ZSTD_buildSeqTable.exit109.thread

bb.w:                                             ; preds = %ZSTD_buildSeqTable.exit.thread
  store ptr @OF_defaultDTable, ptr %i.dx, align 8, !tbaa !64
  br label %ZSTD_buildSeqTable.exit109.thread

bb.x:                                             ; preds = %ZSTD_buildSeqTable.exit.thread
  %.not44.i104 = icmp eq i32 %i.dy, 0
  br i1 %.not44.i104, label %ZSTD_buildSeqTable.exit109.thread135, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = icmp ne i32 %i.dz, 0
  %i.en = icmp samesign ugt i32 %.086112, 24
  %or.cond.i105 = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i105, label %ZSTD_buildSeqTable.exit109.thread.loopexit, label %ZSTD_buildSeqTable.exit109.thread

ZSTD_buildSeqTable.exit109.thread.loopexit:       ; preds = %bb.y
  %i.eo = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 33 uses
  call void @llvm.prefetch.p0(ptr %i.eo, i32 0, i32 2, i32 1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ep, i32 0, i32 2, i32 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %i.eq, i32 0, i32 2, i32 1)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 192
  call void @llvm.prefetch.p0(ptr nonnull %i.er, i32 0, i32 2, i32 1)
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 256
  call void @llvm.prefetch.p0(ptr nonnull %i.es, i32 0, i32 2, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %i.et, i32 0, i32 2, i32 1)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %i.eu, i32 0, i32 2, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 448
  call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 2, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 512
  call void @llvm.prefetch.p0(ptr nonnull %i.ew, i32 0, i32 2, i32 1)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 576
  call void @llvm.prefetch.p0(ptr nonnull %i.ex, i32 0, i32 2, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 640
  call void @llvm.prefetch.p0(ptr nonnull %i.ey, i32 0, i32 2, i32 1)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 704
  call void @llvm.prefetch.p0(ptr nonnull %i.ez, i32 0, i32 2, i32 1)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 768
  call void @llvm.prefetch.p0(ptr nonnull %i.fa, i32 0, i32 2, i32 1)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 832
  call void @llvm.prefetch.p0(ptr nonnull %i.fb, i32 0, i32 2, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 896
  call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 2, i32 1)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 960
  call void @llvm.prefetch.p0(ptr nonnull %i.fd, i32 0, i32 2, i32 1)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 1024
  call void @llvm.prefetch.p0(ptr nonnull %i.fe, i32 0, i32 2, i32 1)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 1088
  call void @llvm.prefetch.p0(ptr nonnull %i.ff, i32 0, i32 2, i32 1)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 1152
  call void @llvm.prefetch.p0(ptr nonnull %i.fg, i32 0, i32 2, i32 1)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 1216
  call void @llvm.prefetch.p0(ptr nonnull %i.fh, i32 0, i32 2, i32 1)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 1280
  call void @llvm.prefetch.p0(ptr nonnull %i.fi, i32 0, i32 2, i32 1)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 1344
  call void @llvm.prefetch.p0(ptr nonnull %i.fj, i32 0, i32 2, i32 1)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eo, i64 1408
  call void @llvm.prefetch.p0(ptr nonnull %i.fk, i32 0, i32 2, i32 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 1472
  call void @llvm.prefetch.p0(ptr nonnull %i.fl, i32 0, i32 2, i32 1)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 1536
  call void @llvm.prefetch.p0(ptr nonnull %i.fm, i32 0, i32 2, i32 1)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 1600
  call void @llvm.prefetch.p0(ptr nonnull %i.fn, i32 0, i32 2, i32 1)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 1664
  call void @llvm.prefetch.p0(ptr nonnull %i.fo, i32 0, i32 2, i32 1)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eo, i64 1728
  call void @llvm.prefetch.p0(ptr nonnull %i.fp, i32 0, i32 2, i32 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1792
  call void @llvm.prefetch.p0(ptr nonnull %i.fq, i32 0, i32 2, i32 1)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eo, i64 1856
  call void @llvm.prefetch.p0(ptr nonnull %i.fr, i32 0, i32 2, i32 1)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 1920
  call void @llvm.prefetch.p0(ptr nonnull %i.fs, i32 0, i32 2, i32 1)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 1984
  call void @llvm.prefetch.p0(ptr nonnull %i.ft, i32 0, i32 2, i32 1)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eo, i64 2048
  call void @llvm.prefetch.p0(ptr nonnull %i.fu, i32 0, i32 2, i32 1)
  br label %ZSTD_buildSeqTable.exit109.thread

bb.z:                                             ; preds = %ZSTD_buildSeqTable.exit.thread
  %i.fv = ptrtoint ptr %.182117 to i64
  %i.fw = sub i64 %i.ah, %i.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.fx = call i64 @FSE_readNCount(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %.182117, i64 noundef %i.fw) #17 ; 2 uses
  %i.fy = icmp ult i64 %i.fx, -119
  br i1 %i.fy, label %bb.aa, label %ZSTD_buildSeqTable.exit109.thread140

bb.aa:                                            ; preds = %bb.z
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, 8
  br i1 %i.ga, label %ZSTD_buildSeqTable.exit109.thread140, label %ZSTD_buildSeqTable.exit109

default.unreachable49.i108:                       ; preds = %ZSTD_buildSeqTable.exit.thread
  unreachable

ZSTD_buildSeqTable.exit109.thread:                ; preds = %ZSTD_buildSeqTable.exit109.thread.loopexit, %bb.v, %bb.w, %bb.y
  %.1.i103.ph = phi i64 [ 1, %bb.v ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %ZSTD_buildSeqTable.exit109.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

ZSTD_buildSeqTable.exit109.thread135:             ; preds = %bb.t, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

ZSTD_buildSeqTable.exit109.thread140:             ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

ZSTD_buildSeqTable.exit109:                       ; preds = %bb.aa
  %i.gb = load i32, ptr %i.a, align 4, !tbaa !3
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.c, i32 noundef %i.gb, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %i.fz, ptr noundef nonnull %i.am, i64 poison, i32 noundef %.val100)
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.ai, align 4, !tbaa !60
  %.pre144 = load i32, ptr %i.ak, align 4, !tbaa !34
  %.val99.pre = load i32, ptr %i.an, align 4, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %ZSTD_buildSeqTable.exit109, %ZSTD_buildSeqTable.exit109.thread
  %.val99 = phi i32 [ %.val100, %ZSTD_buildSeqTable.exit109.thread ], [ %.val99.pre, %ZSTD_buildSeqTable.exit109 ]
  %i.gc = phi i32 [ %i.dz, %ZSTD_buildSeqTable.exit109.thread ], [ %.pre144, %ZSTD_buildSeqTable.exit109 ]
  %i.gd = phi i32 [ %i.dy, %ZSTD_buildSeqTable.exit109.thread ], [ %.pre, %ZSTD_buildSeqTable.exit109 ]
  %.1.i103.ph.pn = phi i64 [ %.1.i103.ph, %ZSTD_buildSeqTable.exit109.thread ], [ %i.fx, %ZSTD_buildSeqTable.exit109 ]
  %.283132 = getelementptr inbounds nuw i8, ptr %.182117, i64 %.1.i103.ph.pn ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = ptrtoint ptr %.283132 to i64
  %i.gh = sub i64 %i.ah, %i.gg
  %i.gi = call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %i.ge, ptr noundef nonnull %i.gf, i32 noundef %i.af, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %.283132, i64 noundef %i.gh, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %i.gd, i32 noundef %i.gc, i32 noundef %.086112, ptr noundef nonnull %i.am, i32 noundef %.val99) ; 2 uses
  %i.gj = icmp ult i64 %i.gi, -119
  br i1 %i.gj, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %.283132, i64 %i.gi
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %2 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %ZSTD_buildSeqTable.exit109.thread140, %ZSTD_buildSeqTable.exit109.thread135, %ZSTD_buildSeqTable.exit.thread125, %ZSTD_buildSeqTable.exit.thread120, %bb.j, %bb.i, %bb.e, %bb.d, %bb.a, %bb.ab, %bb.ac
  %.4 = phi i64 [ -72, %bb.d ], [ -72, %bb.a ], [ -72, %bb.e ], [ -20, %ZSTD_buildSeqTable.exit109.thread135 ], [ %spec.select, %bb.h ], [ -72, %bb.i ], [ %i.gn, %bb.ac ], [ -20, %bb.ab ], [ -20, %bb.j ], [ -20, %ZSTD_buildSeqTable.exit.thread125 ], [ -20, %ZSTD_buildSeqTable.exit109.thread140 ], [ -20, %ZSTD_buildSeqTable.exit.thread120 ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -20, -71) i64 @ZSTD_buildSeqTable(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 4) %2, i32 noundef range(i32 31, 53) %3, i32 noundef range(i32 8, 10) %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef range(i32 1, 98048) %12, ptr noundef captures(none) %13, i32 noundef %14) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [53 x i16], align 16              ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  switch i32 %2, label %default.unreachable49 [
    i32 1, label %bb.b
    i32 0, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq i64 %6, 0
  br i1 %.not45, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %5, align 1, !tbaa !9       ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = icmp samesign ult i32 %3, %i.e
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !61
  store i32 0, ptr %0, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 0, ptr %i.n, align 1, !tbaa !54
  store i16 0, ptr %i.l, align 4, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.k, ptr %i.o, align 2, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.i, ptr %i.p, align 4, !tbaa !39
  store ptr %0, ptr %1, align 8, !tbaa !64
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  store ptr %9, ptr %1, align 8, !tbaa !64
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %.not44 = icmp eq i32 %10, 0
  br i1 %.not44, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ne i32 %11, 0
  %i.r = icmp samesign ugt i32 %12, 24
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %.new, label %.loopexit

.new:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !64     ; 9 uses
  %i.t = shl nuw nsw i32 8, %4
  %i.u = lshr exact i32 %i.t, 6
  %unroll_iter = zext nneg i32 %i.u to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.04146 = phi i64 [ 0, %.new ], [ %i.ak, %bb.h ] ; 9 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 2, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.x, i32 0, i32 2, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.z, i32 0, i32 2, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 2, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ad, i32 0, i32 2, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.af, i32 0, i32 2, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 2, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 2, i32 1)
  %i.ak = add nuw nsw i64 %.04146, 512            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.epil.preheader, label %bb.h, !llvm.loop !65

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.al = call i64 @FSE_readNCount(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5, i64 noundef %6) #17 ; 2 uses
  %i.am = icmp ult i64 %i.al, -119
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ao = icmp ugt i32 %i.an, %4
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !3
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.ap, ptr noundef %7, ptr noundef %8, i32 noundef %i.an, ptr noundef %13, i64 poison, i32 noundef %14)
  store ptr %0, ptr %1, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %.0 = phi i64 [ %i.al, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

default.unreachable49:                            ; preds = %bb.a
  unreachable

.epil.preheader:                                  ; preds = %bb.h, %.epil.preheader
  %.04146.epil = phi i64 [ %i.ar, %.epil.preheader ], [ %i.ak, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.04146.epil
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 2, i32 1)
  %i.ar = add nuw nsw i64 %.04146.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.epil.preheader, !llvm.loop !66

.loopexit:                                        ; preds = %.epil.preheader, %bb.g, %bb.f, %bb.c, %bb.b, %bb.l, %bb.e, %bb.d
  %.1 = phi i64 [ %.0, %bb.l ], [ -72, %bb.b ], [ 1, %bb.d ], [ -20, %bb.c ], [ 0, %bb.e ], [ -20, %bb.f ], [ 0, %bb.g ], [ 0, %.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30176 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit, label %bb.b

end_hunk_1
begin_hunk_2_@ZSTD_decompressSequences_bmi2:bb.a
  br label %ZSTD_overlapCopy8.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.qr = load i64, ptr %.062, align 1
  store i64 %i.qr, ptr %.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qq, %bb.bq ], [ %.062, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qu = icmp ugt i64 %i.pj, 8
  br i1 %i.qu, label %bb.bs, label %ZSTD_execSequence.exit.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = getelementptr i8, ptr %.0, i64 %i.pj    ; 2 uses
  %i.qz = icmp slt i64 %i.qx, 16
  br i1 %i.qz, label %.preheader87.preheader, label %bb.bt

.preheader87.preheader:                           ; preds = %bb.bs
  %i.ra = add i64 %.sroa.6.0, %i.hc
  %umin = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.pa)
  %i.rb = add i64 %i.ra, %umin
  %umax13 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pa) ; 3 uses
  %i.rc = add i64 %i.rb, %umax13
  %i.rd = sub i64 %i.rc, %.sink
  %i.re = add i64 %i.he, %umax13
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.rd, i64 %i.re)
  %i.rf = add i64 %umax14, -9
  %i.rg = add i64 %umax13, %i.hc
  %i.rh = sub i64 %i.rf, %i.rg                    ; 2 uses
  %i.ri = lshr i64 %i.rh, 3
  %i.rj = add nuw nsw i64 %i.ri, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rh, 72
  br i1 %min.iters.check, label %.preheader87.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader87.preheader
  %i.rk = sub i64 %.sroa.0.0, %i.hc
  %i.rl = add i64 %i.rk, %.068.i9311
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.rl)
  %i.rm = add i64 %umax, %i.hc
  %i.rn = sub i64 %i.rm, %.112
  %diff.check = icmp ult i64 %i.rn, 32
  br i1 %diff.check, label %.preheader87.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rj, 4611686018427387900     ; 3 uses
  %i.ro = shl i64 %n.vec, 3                       ; 2 uses
  %i.rp = getelementptr i8, ptr %i.qt, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.qs, i64 %i.ro
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qt, i64 %i.rr ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.qs, i64 %i.rr ; 2 uses
  %i.rs = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 1
  %wide.load16 = load <2 x i64>, ptr %i.rs, align 1
  %i.rt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load16, ptr %i.rt, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ru = icmp eq i64 %index.next, %n.vec
  br i1 %i.ru, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rj, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %.preheader87.preheader19

.preheader87.preheader19:                         ; preds = %vector.memcheck, %.preheader87.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qt, %vector.memcheck ], [ %i.qt, %.preheader87.preheader ], [ %i.rp, %middle.block ]
  %.0.i106.i.ph = phi ptr [ %i.qs, %vector.memcheck ], [ %i.qs, %.preheader87.preheader ], [ %i.rq, %middle.block ]
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader19, %.preheader87
  %.029.i.i = phi ptr [ %i.rw, %.preheader87 ], [ %.029.i.i.ph, %.preheader87.preheader19 ] ; 2 uses
  %.0.i106.i = phi ptr [ %i.rx, %.preheader87 ], [ %.0.i106.i.ph, %.preheader87.preheader19 ] ; 2 uses
  %i.rv = load i64, ptr %.0.i106.i, align 1
  store i64 %i.rv, ptr %.029.i.i, align 1
  %i.rw = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i106.i, i64 8
  %i.ry = icmp ult ptr %i.rw, %i.qy
  br i1 %i.ry, label %.preheader87, label %ZSTD_execSequence.exit.i, !llvm.loop !237

bb.bt:                                            ; preds = %bb.bs
  %i.rz = load <2 x i64>, ptr %i.qs, align 1, !tbaa !9
  store <2 x i64> %i.rz, ptr %i.qt, align 1, !tbaa !9
  %i.sa = icmp slt i64 %i.pj, 25
  br i1 %i.sa, label %ZSTD_execSequence.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sb = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i103.i = phi ptr [ %i.sb, %bb.bu ], [ %i.sg, %bb.bv ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.qs, %bb.bu ], [ %i.se, %bb.bv ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %i.sc = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !9
  store <2 x i64> %i.sc, ptr %.130.i103.i, align 1, !tbaa !9
  %i.sd = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %i.sf = load <2 x i64>, ptr %i.se, align 1, !tbaa !9
  store <2 x i64> %i.sf, ptr %i.sd, align 1, !tbaa !9
  %i.sg = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.sh = icmp ult ptr %i.sg, %i.qy
  br i1 %i.sh, label %bb.bv, label %ZSTD_execSequence.exit.i, !llvm.loop !98

ZSTD_execSequence.exit.i:                         ; preds = %bb.bv, %.preheader87, %bb.bo, %middle.block, %bb.bt, %bb.bm, %ZSTD_overlapCopy8.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.om, %bb.bd ], [ %i.oc, %middle.block ], [ %i.oc, %bb.bj ], [ %i.oc, %ZSTD_overlapCopy8.exit.i ], [ %i.oc, %bb.bm ], [ %i.oc, %bb.bt ], [ %i.oc, %bb.bo ], [ %i.oc, %.preheader87 ], [ %i.oc, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.si = icmp ult i64 %.0.i.i, -119
  br i1 %i.si, label %bb.bw, label %.thread75

bb.bw:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.068.i93, i64 %.0.i.i ; 2 uses
  %i.sk = add nsw i32 %.063.i95, -1               ; 2 uses
  %.not77.i = icmp eq i32 %i.sk, 0
  br i1 %.not77.i, label %bb.bx, label %bb.af, !llvm.loop !160

bb.bx:                                            ; preds = %bb.bw
  %i.sl = icmp eq ptr %i.nv, %3
  %.not86 = icmp eq i32 %i.nw, 64
  %or.cond = select i1 %i.sl, i1 %.not86, i1 false
  br i1 %or.cond, label %.preheader, label %.thread75

.preheader:                                       ; preds = %bb.bx
  %i.sm = trunc i64 %.sink to i32
  store i32 %i.sm, ptr %i.u, align 4, !tbaa !3
  %i.sn = trunc i64 %.sink150 to i32
  store i32 %i.sn, ptr %i.y, align 4, !tbaa !3
  %i.so = trunc i64 %i.ke to i32
  store i32 %i.so, ptr %i.ac, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.by

.thread75:                                        ; preds = %ZSTD_execSequence.exit.i, %bb.o, %bb.g, %bb.e, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bx
  %.2.i.ph = phi i64 [ -20, %bb.e ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %BIT_initDStream.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %ZSTD_execSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_body.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.sp = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.371.i = phi ptr [ %i.sj, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.sq = ptrtoint ptr %i.m to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 3 uses
  %i.st = ptrtoint ptr %i.h to i64
  %i.su = ptrtoint ptr %.371.i to i64
  %i.sv = sub i64 %i.st, %i.su
  %.not81.i = icmp ugt i64 %i.ss, %i.sv
  br i1 %.not81.i, label %ZSTD_decompressSequences_body.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not80.i = icmp eq ptr %.371.i, null
  br i1 %.not80.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i, ptr align 1 %i.sp, i64 %i.ss, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.ss
  %i.sx = ptrtoint ptr %i.sw to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.573.i.ph = phi i64 [ 0, %bb.bz ], [ %i.sx, %bb.ca ]
  %i.sy = ptrtoint ptr %1 to i64
  %i.sz = sub i64 %.573.i.ph, %i.sy
  br label %ZSTD_decompressSequences_body.exit

ZSTD_decompressSequences_body.exit:               ; preds = %bb.by, %.thread75, %bb.cb
  %.5.i = phi i64 [ %i.sz, %bb.cb ], [ %.2.i.ph, %.thread75 ], [ -70, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !4, i64 4}
!11 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!12 = !{!11, !4, i64 0}
!13 = !{!11, !4, i64 8}
!14 = !{!15, !4, i64 30176}
!15 = !{!"ZSTD_DCtx_s", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !5, i64 27324, !16, i64 29888, !16, i64 29896, !16, i64 29904, !16, i64 29912, !19, i64 29920, !20, i64 29928, !19, i64 29976, !19, i64 29984, !4, i64 29992, !4, i64 29996, !4, i64 30000, !4, i64 30004, !22, i64 30008, !19, i64 30096, !4, i64 30104, !4, i64 30108, !4, i64 30112, !23, i64 30120, !24, i64 30128, !19, i64 30152, !19, i64 30160, !19, i64 30168, !4, i64 30176, !4, i64 30180, !25, i64 30184, !25, i64 30192, !4, i64 30200, !4, i64 30204, !4, i64 30208, !16, i64 30216, !4, i64 30224, !4, i64 30228, !4, i64 30232, !4, i64 30236, !23, i64 30240, !19, i64 30248, !19, i64 30256, !19, i64 30264, !23, i64 30272, !19, i64 30280, !19, i64 30288, !19, i64 30296, !19, i64 30304, !16, i64 30312, !4, i64 30320, !4, i64 30324, !4, i64 30328, !4, i64 30332, !4, i64 30336, !26, i64 30344, !23, i64 30368, !23, i64 30376, !4, i64 30384, !5, i64 30388, !5, i64 95956, !19, i64 95976, !21, i64 95984}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"", !5, i64 0, !5, i64 4104, !5, i64 6160, !5, i64 10264, !5, i64 26652, !5, i64 26664}
!19 = !{!"long", !5, i64 0}
!20 = !{!"", !21, i64 0, !21, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40}
!21 = !{!"long long", !5, i64 0}
!22 = !{!"XXH64_state_s", !19, i64 0, !5, i64 8, !5, i64 40, !4, i64 72, !4, i64 76, !19, i64 80}
!23 = !{!"p1 omnipotent char", !16, i64 0}
!24 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!25 = !{!"p1 _ZTS12ZSTD_DDict_s", !16, i64 0}
!26 = !{!"ZSTD_outBuffer_s", !16, i64 0, !19, i64 8, !19, i64 16}
!27 = !{!15, !4, i64 29944}
!28 = !{!15, !4, i64 30000}
!29 = !{!15, !4, i64 30180}
!30 = !{!15, !4, i64 30228}
!31 = !{!15, !23, i64 30368}
!32 = !{!15, !23, i64 30376}
!33 = !{!15, !4, i64 30384}
!34 = !{!15, !4, i64 30204}
!35 = !{!15, !17, i64 24}
!36 = !{!23, !23, i64 0}
!37 = !{!15, !23, i64 30120}
!38 = !{!15, !19, i64 30152}
!39 = !{!40, !4, i64 4}
!40 = !{!"", !8, i64 0, !5, i64 2, !5, i64 3, !4, i64 4}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!19, !19, i64 0}
!44 = distinct !{!44, !42, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !42, !46, !45}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = !{!40, !5, i64 3}
!55 = !{!40, !8, i64 0}
!56 = !{!40, !5, i64 2}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42, !45, !46}
!59 = distinct !{!59, !42, !46, !45}
!60 = !{!15, !4, i64 30004}
!61 = !{!62, !4, i64 4}
!62 = !{!"", !4, i64 0, !4, i64 4}
!63 = !{!62, !4, i64 0}
!64 = !{!16, !16, i64 0}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!15, !16, i64 29904}
!69 = !{!15, !16, i64 16}
!70 = distinct !{!70, !42}
!71 = !{!15, !16, i64 29896}
!72 = !{!15, !16, i64 29912}
!73 = !{!74, !23, i64 24}
!74 = !{!"", !19, i64 0, !4, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!75 = !{!74, !23, i64 32}
!76 = !{!74, !23, i64 16}
!77 = !{!74, !19, i64 0}
!78 = !{!15, !16, i64 0}
!79 = !{!80, !19, i64 0}
!80 = !{!"", !19, i64 0, !16, i64 8}
!81 = !{!74, !4, i64 8}
!82 = !{!80, !16, i64 8}
!83 = !{!15, !16, i64 8}
!84 = !{!85}
!85 = distinct !{!85, !86, !"ZSTD_decodeSequence: argument 0"}
!86 = distinct !{!86, !"ZSTD_decodeSequence"}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = distinct !{!88, !42}
!89 = !{!90}
!90 = distinct !{!90, !91, !"ZSTD_decodeSequence: argument 0"}
!91 = distinct !{!91, !"ZSTD_decodeSequence"}
!92 = !{!93, !19, i64 0}
!93 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!94 = distinct !{!94, !42, !45, !46}
!95 = !{!"branch_weights", i32 4, i32 28}
!96 = distinct !{!96, !42, !45, !46}
!97 = distinct !{!97, !42, !45}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42, !45, !46}
!100 = distinct !{!100, !42, !45, !46}
!101 = distinct !{!101, !42, !45}
!102 = !{!"branch_weights", i32 4001, i32 4000000}
!103 = distinct !{!103, !42, !45, !46}
!104 = distinct !{!104, !42, !45}
!105 = distinct !{!105, !42, !45, !46}
!106 = distinct !{!106, !42, !45}
!107 = distinct !{!107, !42, !45, !46}
!108 = distinct !{!108, !42, !45}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42, !45, !46}
!111 = distinct !{!111, !42, !45, !46}
!112 = distinct !{!112, !42, !45}
!113 = distinct !{!113, !42, !45, !46}
!114 = distinct !{!114, !42, !45, !46}
!115 = distinct !{!115, !42, !45}
!116 = distinct !{!116, !42, !45, !46}
!117 = distinct !{!117, !42, !45}
!118 = distinct !{!118, !42, !45, !46}
!119 = distinct !{!119, !42, !45}
!120 = distinct !{!120, !42, !45, !46}
!121 = distinct !{!121, !42, !45}
!122 = distinct !{!122, !42}
!123 = !{i64 67669}
!124 = !{!125}
!125 = distinct !{!125, !126, !"ZSTD_decodeSequence: argument 0"}
!126 = distinct !{!126, !"ZSTD_decodeSequence"}
!127 = !{!93, !19, i64 8}
!128 = distinct !{!128, !42, !45, !46}
!129 = distinct !{!129, !42, !45}
!130 = distinct !{!130, !42}
!131 = distinct !{!131, !42, !45, !46}
!132 = distinct !{!132, !42, !45, !46}
!133 = distinct !{!133, !42, !45}
!134 = distinct !{!134, !42, !45, !46}
!135 = distinct !{!135, !42, !45, !46}
!136 = distinct !{!136, !42, !45}
!137 = distinct !{!137, !42, !45, !46}
!138 = distinct !{!138, !42, !45}
!139 = !{i64 70901}
!140 = !{i64 70936}
!141 = !{i64 71064}
!142 = !{i64 71099}
!143 = !{i64 71127}
!144 = !{!145}
!145 = distinct !{!145, !146, !"ZSTD_decodeSequence: argument 0"}
!146 = distinct !{!146, !"ZSTD_decodeSequence"}
!147 = distinct !{!147, !42, !45, !46}
!148 = distinct !{!148, !42, !45}
!149 = distinct !{!149, !42}
!150 = !{i64 75378}
!151 = !{i64 75413}
!152 = !{i64 75567}
!153 = !{i64 75602}
!154 = !{i64 75630}
!155 = !{!156}
!156 = distinct !{!156, !157, !"ZSTD_decodeSequence: argument 0"}
!157 = distinct !{!157, !"ZSTD_decodeSequence"}
!158 = distinct !{!158, !42, !45, !46}
!159 = distinct !{!159, !42, !45}
!160 = distinct !{!160, !42}
!161 = !{!15, !16, i64 29888}
!162 = !{!163}
!163 = distinct !{!163, !164, !"ZSTD_decodeSequence: argument 0"}
!164 = distinct !{!164, !"ZSTD_decodeSequence"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"ZSTD_decodeSequence: argument 0"}
!167 = distinct !{!167, !"ZSTD_decodeSequence"}
!168 = distinct !{!168, !42, !45, !46}
!169 = distinct !{!169, !42, !45, !46}
!170 = distinct !{!170, !42, !45}
!171 = distinct !{!171, !42, !45, !46}
!172 = distinct !{!172, !42, !45, !46}
!173 = distinct !{!173, !42, !45}
!174 = distinct !{!174, !42, !45, !46}
!175 = distinct !{!175, !42, !45}
!176 = distinct !{!176, !42, !45, !46}
end_hunk_2
