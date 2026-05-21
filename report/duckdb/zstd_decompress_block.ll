inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@_ZN11duckdb_zstdL24ZSTD_decodeLiteralsBlockEPNS_11ZSTD_DCtx_sEPKvmPvmNS_19streaming_operationE:bb.a
  %i.z = and i32 %i.y, 1023
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ab = lshr i32 %.val233, 4
  %i.ac = and i32 %i.ab, 16383
  %i.ad = lshr i32 %.val233, 18
  %i.ae = zext nneg i32 %i.ad to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.af = lshr i32 %.val233, 4
  %i.ag = and i32 %i.af, 262143
  %i.ah = lshr i32 %.val233, 22
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 10
  %i.an = or disjoint i64 %i.am, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0215 = phi i1 [ %.not224, %bb.g ], [ true, %bb.i ], [ true, %bb.h ] ; 3 uses
  %.0214 = phi i64 [ %i.aa, %bb.g ], [ %i.an, %bb.i ], [ %i.ae, %bb.h ] ; 5 uses
  %.0210.in = phi i32 [ %i.x, %bb.g ], [ %i.ag, %bb.i ], [ %i.ac, %bb.h ] ; 5 uses
  %.0209 = phi i64 [ 3, %bb.g ], [ 5, %bb.i ], [ 4, %bb.h ] ; 3 uses
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
  br i1 %.not.i, label %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !37
  %i.ax = zext i32 %i.aw to i64
  br label %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.p, %bb.o
  %i.ay = phi i64 [ %i.ax, %bb.p ], [ 131072, %bb.o ] ; 2 uses
  %i.az = icmp eq i32 %5, 0
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i
  %i.ba = add nuw nsw i64 %.0210, 64
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = icmp ugt i64 %4, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0210
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit

bb.s:                                             ; preds = %bb.q, %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i
  %i.bh = icmp samesign ult i32 %.0210.in, 65537
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0210
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %i.p ; 2 uses
  %i.bm = sub nsw i64 0, %.0210
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !41
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit

_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.bp = phi ptr [ %i.bi, %bb.t ], [ %i.bn, %bb.u ], [ %i.be, %bb.r ] ; 4 uses
  %.sink37.i = phi ptr [ %i.bk, %bb.t ], [ %i.bl, %bb.u ], [ %i.bg, %bb.r ]
  %.sink35.i = phi i32 [ 0, %bb.t ], [ 2, %bb.u ], [ 1, %bb.r ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30360 ; 2 uses
  store ptr %.sink37.i, ptr %i.bq, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  store i32 %.sink35.i, ptr %i.br, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = icmp samesign ugt i32 %.0210.in, 768
  %or.cond3 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond3, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45 ; 8 uses
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

.loopexit:                                        ; preds = %bb.w, %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit
  %i.cp = icmp eq i8 %i.c, 3
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.0209 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !45 ; 2 uses
  br i1 %.0215, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call noundef i64 @_ZN11duckdb_zstd28HUF_decompress1X_usingDTableEPvmPKvmPKji(ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cq, i64 noundef %.0214, ptr noundef %i.cs, i32 noundef %i.v)
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cu = tail call noundef i64 @_ZN11duckdb_zstd28HUF_decompress4X_usingDTableEPvmPKvmPKji(ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cq, i64 noundef %.0214, ptr noundef %i.cs, i32 noundef %i.v)
  br label %bb.ae

bb.ab:                                            ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.0209 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 27324 ; 2 uses
  br i1 %.0215, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = tail call noundef i64 @_ZN11duckdb_zstd27HUF_decompress1X1_DCtx_wkspEPjPvmPKvmS1_mi(ptr noundef nonnull %i.cv, ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cw, i64 noundef %.0214, ptr noundef nonnull %i.cx, i64 noundef 2560, i32 noundef %i.v)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cz = tail call noundef i64 @_ZN11duckdb_zstd29HUF_decompress4X_hufOnly_wkspEPjPvmPKvmS1_mi(ptr noundef nonnull %i.cv, ptr noundef %i.bp, i64 noundef %.0210, ptr noundef nonnull %i.cw, i64 noundef %.0214, ptr noundef nonnull %i.cx, i64 noundef 2560, i32 noundef %i.v)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.z, %bb.aa
  %.0216 = phi i64 [ %i.ct, %bb.z ], [ %i.cu, %bb.aa ], [ %i.cy, %bb.ac ], [ %i.cz, %bb.ad ]
  %i.da = load i32, ptr %i.br, align 8, !tbaa !43
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !42
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.dc, ptr noundef nonnull align 1 dereferenceable(65536) %i.de, i64 65536, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 30352 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 65504
  %i.di = add nsw i64 %.0210, -65536
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.dg, i64 %i.di, i1 false)
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !46
  %i.dk = getelementptr inbounds i8, <2 x ptr> %i.dj, <2 x i64> <i64 65504, i64 -32>
  store <2 x ptr> %i.dk, ptr %i.df, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dl = icmp ult i64 %.0216, -119
  br i1 %i.dl, label %bb.ah, label %bb.bw

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0210, ptr %i.dp, align 8, !tbaa !48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 30000
  store i32 1, ptr %i.dq, align 8, !tbaa !38
  %i.dr = icmp eq i8 %i.c, 2
  br i1 %i.dr, label %bb.ai, label %bb.bw

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !45
  br label %bb.bw

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit
  %i.du = zext i8 %i.b to i32                     ; 2 uses
  %i.dv = lshr i32 %i.du, 2
  %i.dw = and i32 %i.dv, 3
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %4)
  switch i32 %i.dw, label %bb.ak [
    i32 3, label %bb.am
    i32 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dy = lshr i32 %i.du, 3
  %i.dz = zext nneg i32 %i.dy to i64
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %.val228 = load i16, ptr %1, align 1, !tbaa !7
  %i.ea = lshr i16 %.val228, 4
  %i.eb = zext nneg i16 %i.ea to i64
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.ec = icmp eq i64 %2, 2
  br i1 %i.ec, label %bb.bw, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val231 = load i16, ptr %1, align 1, !tbaa !7
  %i.ed = getelementptr i8, ptr %1, i64 2
  %.val232 = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ee = zext i16 %.val231 to i64
  %i.ef = zext i8 %.val232 to i64
  %i.eg = shl nuw nsw i64 %i.ef, 16
  %i.eh = or disjoint i64 %i.eg, %i.ee
  %i.ei = lshr i64 %i.eh, 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.al, %bb.an
  %.0212 = phi i64 [ %i.dz, %bb.ak ], [ %i.ei, %bb.an ], [ %i.eb, %bb.al ] ; 16 uses
  %.0211 = phi i64 [ 1, %bb.ak ], [ 3, %bb.an ], [ 2, %bb.al ] ; 3 uses
  %i.ej = icmp ne i64 %.0212, 0
  %i.ek = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.ek, %i.ej
  br i1 %or.cond5, label %bb.bw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = icmp samesign ugt i64 %.0212, %i.i
  br i1 %i.el, label %bb.bw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = icmp ult i64 %4, %.0212
  br i1 %i.em, label %bb.bw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i, label %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i236, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !37
  %i.ep = zext i32 %i.eo to i64
  br label %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i236

_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i236: ; preds = %bb.as, %bb.ar
  %i.eq = phi i64 [ %i.ep, %bb.as ], [ 131072, %bb.ar ] ; 2 uses
  %i.er = icmp eq i32 %5, 0
  br i1 %i.er, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i236
  %i.es = add nuw nsw i64 %.0212, 64
  %i.et = add nuw nsw i64 %i.es, %i.eq
  %i.eu = icmp ugt i64 %4, %i.et
  br i1 %i.eu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %i.eq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !41
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.0212
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239

bb.av:                                            ; preds = %bb.at, %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit.i236
  %i.ez = icmp samesign ult i64 %.0212, 65537
  br i1 %i.ez, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !41
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.0212
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239

bb.ax:                                            ; preds = %bb.av
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %i.dx
  %i.fe = sub nsw i64 0, %.0212
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 65504 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.0212
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -65536
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !41
  br label %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239

_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239: ; preds = %bb.au, %bb.aw, %bb.ax
  %i.fk = phi ptr [ %i.fa, %bb.aw ], [ %i.fg, %bb.ax ], [ %i.ew, %bb.au ] ; 2 uses
  %.sink37.i237 = phi ptr [ %i.fc, %bb.aw ], [ %i.fi, %bb.ax ], [ %i.ey, %bb.au ]
  %i.fl = phi i1 [ false, %bb.aw ], [ true, %bb.ax ], [ false, %bb.au ]
  %.sink35.i238 = phi i32 [ 0, %bb.aw ], [ 2, %bb.ax ], [ 1, %bb.au ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 30360 ; 2 uses
  store ptr %.sink37.i237, ptr %i.fm, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  store i32 %.sink35.i238, ptr %i.fn, align 8, !tbaa !43
  %i.fo = add nuw nsw i64 %.0211, %.0212          ; 4 uses
  %i.fp = add nuw nsw i64 %i.fo, 32
  %i.fq = icmp ugt i64 %i.fp, %2
  br i1 %i.fq, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239
  %i.fr = icmp samesign ugt i64 %i.fo, %2
  br i1 %i.fr, label %bb.bw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %.0211 ; 3 uses
  br i1 %i.fl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ft = add nsw i64 %.0212, -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fs, i64 %i.ft, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.0212
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.fu, ptr noundef nonnull align 1 dereferenceable(65536) %i.fw, i64 65536, i1 false)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fs, i64 %.0212, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !41
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0212, ptr %i.ga, align 8, !tbaa !48
  br label %bb.bw

bb.bd:                                            ; preds = %_ZN11duckdb_zstdL27ZSTD_allocateLiteralsBufferEPNS_11ZSTD_DCtx_sEPvmmNS_19streaming_operationEmj.exit239
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %.0211 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !47
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0212, ptr %i.gd, align 8, !tbaa !48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.0212
  store ptr %i.ge, ptr %i.fm, align 8, !tbaa !42
  store i32 0, ptr %i.fn, align 8, !tbaa !43
  br label %bb.bw

bb.be:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_blockSizeMaxEPKNS_11ZSTD_DCtx_sE.exit
  %i.gf = zext i8 %i.b to i32                     ; 2 uses
  %i.gg = lshr i32 %i.gf, 2
  %i.gh = and i32 %i.gg, 3
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %4)
  switch i32 %i.gh, label %bb.bf [
    i32 3, label %bb.bi
    i32 1, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gj = lshr i32 %i.gf, 3
  %i.gk = zext nneg i32 %i.gj to i64
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.gl = icmp eq i64 %2, 2
  br i1 %i.gl, label %bb.bw, label %bb.bh
end_hunk_0
