inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj:bb.a
  %.not168.i = icmp eq i64 %.val.i, 0
  br i1 %.not168.i, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = tail call fastcc noundef i64 @_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef %.0122176.i, i64 noundef %spec.select.i) ; 3 uses
  %i.ex = icmp ult i64 %i.ew, -119
  br i1 %i.ex, label %bb.ag, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %bb.ah, label %.critedge.thread.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ez = load i32, ptr %i.dc, align 8, !tbaa !272
  %.not.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fa = load ptr, ptr %i.de, align 8, !tbaa !214
  %i.fb = load ptr, ptr %i.dd, align 8, !tbaa !210
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !225
  %i.fg = load ptr, ptr %i.dg, align 8, !tbaa !224
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = icmp ugt i64 %i.fe, 31
  %i.fl = icmp ugt i64 %i.fj, 9
  %.not51.i.i.i = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %.not51.i.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = tail call fastcc noundef i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %.0122176.i, i64 noundef %spec.select.i)
  %.not42.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not42.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fn = load i8, ptr %.0122176.i, align 1, !tbaa !220
  %.tr.i.i.i.i = trunc i64 %spec.select.i to i32
  %i.fo = shl i32 %.tr.i.i.i.i, 3                 ; 2 uses
  %i.fp = or disjoint i32 %i.fo, %i.dw
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = or disjoint i16 %i.fq, 2
  store i16 %i.fr, ptr %.0132173.i, align 1, !tbaa !256
  %i.fs = lshr i32 %i.fo, 16
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 2
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !220
  %i.fv = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 3
  store i8 %i.fn, ptr %i.fv, align 1, !tbaa !220
  br label %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.thread.i.i

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fw = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj(ptr noundef nonnull %0, ptr noundef %.0132173.i, i64 noundef range(i64 6, 0) %.0113179.i, ptr noundef %.0122176.i, i64 noundef %spec.select.i, i32 noundef range(i32 0, 2) %i.dw) ; 6 uses
  %.not43.i.i.i = icmp eq i64 %i.fw, -70
  br i1 %.not43.i.i.i, label %.critedge.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fx = icmp ult i64 %i.fw, -119
  br i1 %i.fx, label %bb.an, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.fy = load i32, ptr %i.dh, align 4, !tbaa !198
  %i.fz = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 7)
  %i.ga = add nsw i32 %i.fz, -1
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %spec.select.i, %i.gb
  %.not45.i.i.i = icmp ne i64 %i.fw, 0
  %i.gd = add i64 %spec.select.i, 1
  %i.ge = sub i64 %i.gd, %i.gc
  %i.gf = icmp ult i64 %i.fw, %i.ge
  %or.cond.i.i.i = and i1 %.not45.i.i.i, %i.gf
  br i1 %or.cond.i.i.i, label %bb.ao, label %.critedge.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gg = load <2 x ptr>, ptr %i.di, align 8, !tbaa !62
  %i.gh = shufflevector <2 x ptr> %i.gg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.gh, ptr %i.di, align 8, !tbaa !62
  br label %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.an, %bb.al, %bb.ag
  %i.gi = add i64 %spec.select.i, 3               ; 4 uses
  %i.gj = icmp ugt i64 %i.gi, %.0113179.i
  br i1 %i.gj, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread, label %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i

_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i: ; preds = %.critedge.thread.i.i.i
  %.tr.i47.i.i.i = trunc i64 %spec.select.i to i32
  %i.gk = shl i32 %.tr.i47.i.i.i, 3               ; 2 uses
  %i.gl = or disjoint i32 %i.gk, %i.dw
  %i.gm = trunc i32 %i.gl to i16
  store i16 %i.gm, ptr %.0132173.i, align 1, !tbaa !256
  %i.gn = lshr i32 %i.gk, 16
  %i.go = trunc i32 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 2
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !220
  %i.gq = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr readonly align 1 %.0122176.i, i64 %spec.select.i, i1 false)
  %i.gr = icmp ult i64 %i.gi, -119
  br i1 %i.gr, label %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.thread.i.i, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.thread.i.i: ; preds = %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i, %bb.ao, %bb.ak
  %.4.i28.i.i = phi i64 [ %i.gi, %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i ], [ %i.fw, %bb.ao ], [ 4, %bb.ak ] ; 2 uses
  %i.gs = load ptr, ptr %i.di, align 8, !tbaa !70
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 5604 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !192
  %i.gv = icmp eq i32 %i.gu, 2
  br i1 %i.gv, label %bb.ap, label %_ZN11duckdb_zstdL35ZSTD_compressBlock_targetCBlockSizeEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i

bb.ap:                                            ; preds = %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.thread.i.i
  store i32 1, ptr %i.gt, align 4, !tbaa !192
  br label %_ZN11duckdb_zstdL35ZSTD_compressBlock_targetCBlockSizeEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i

bb.aq:                                            ; preds = %bb.ae
  %.val149.i = load i32, ptr %i.dj, align 4, !tbaa !92
  %.not169.i = icmp eq i32 %.val149.i, 1
  br i1 %.not169.i, label %bb.ar, label %bb.cb

bb.ar:                                            ; preds = %bb.aq
  %i.gw = tail call fastcc noundef i64 @_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef %.0122176.i, i64 noundef %spec.select.i) ; 3 uses
  %i.gx = icmp ult i64 %i.gw, -119
  br i1 %i.gx, label %bb.as, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gy = icmp eq i64 %i.gw, 1
  br i1 %i.gy, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.gz = load ptr, ptr %i.di, align 8, !tbaa !70
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 5604 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !192
  %i.hc = icmp eq i32 %i.hb, 2
  br i1 %i.hc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %i.ha, align 4, !tbaa !192
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hd = load i32, ptr %i.dv, align 8, !tbaa !273
  %.not45.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not45.i.i, label %bb.aw, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.he = add i64 %spec.select.i, 3               ; 2 uses
  %i.hf = icmp ugt i64 %i.he, %.0113179.i
  br i1 %i.hf, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.tr.i.i.i = trunc i64 %spec.select.i to i32
  %i.hg = shl i32 %.tr.i.i.i, 3                   ; 2 uses
  %i.hh = or disjoint i32 %i.hg, %i.dw
  %i.hi = trunc i32 %i.hh to i16
  store i16 %i.hi, ptr %.0132173.i, align 1, !tbaa !256
  %i.hj = lshr i32 %i.hg, 16
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !220
  %i.hm = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr readonly align 1 %.0122176.i, i64 %spec.select.i, i1 false)
  br label %_ZN11duckdb_zstdL29ZSTD_compressBlock_splitBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i

bb.ay:                                            ; preds = %bb.as
  %i.hn = load ptr, ptr %i.de, align 8, !tbaa !274
  %i.ho = load ptr, ptr %i.dd, align 8, !tbaa !275
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = lshr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.dk, ptr %7, align 8, !tbaa !276
  store i64 0, ptr %i.dn, align 8, !tbaa !278
  %i.hu = icmp ult i32 %i.ht, 5
  br i1 %i.hu, label %_ZN11duckdb_zstdL22ZSTD_deriveBlockSplitsEPNS_11ZSTD_CCtx_sEPjj.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hv = and i64 %i.hs, 4294967295
  call fastcc void @_ZN11duckdb_zstdL28ZSTD_deriveBlockSplitsHelperEPNS_14seqStoreSplitsEmmPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tE(ptr noundef %7, i64 noundef 0, i64 noundef %i.hv, ptr noundef nonnull %0, ptr noundef nonnull %i.dd)
  %i.hw = load ptr, ptr %7, align 8, !tbaa !276
  %i.hx = load i64, ptr %i.dn, align 8, !tbaa !278 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hx
  store i32 %i.ht, ptr %i.hy, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL22ZSTD_deriveBlockSplitsEPNS_11ZSTD_CCtx_sEPjj.exit.i.i.i

_ZN11duckdb_zstdL22ZSTD_deriveBlockSplitsEPNS_11ZSTD_CCtx_sEPjj.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i = phi i64 [ %i.hx, %bb.az ], [ 0, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.hz = load ptr, ptr %i.di, align 8, !tbaa !70
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 5616 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.ia, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.ia, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dl, i8 0, i64 80, i1 false)
  %i.ib = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.ib, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL22ZSTD_deriveBlockSplitsEPNS_11ZSTD_CCtx_sEPjj.exit.i.i.i
  %i.ic = call fastcc noundef i64 @_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj(ptr noundef nonnull %0, ptr noundef nonnull %i.dd, ptr noundef %8, ptr noundef %9, ptr noundef %.0132173.i, i64 noundef range(i64 6, 0) %.0113179.i, ptr noundef %.0122176.i, i64 noundef %spec.select.i, i32 noundef range(i32 0, 2) %i.dw, i32 noundef 0)
  br label %_ZN11duckdb_zstdL38ZSTD_compressBlock_splitBlock_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj.exit.i.i

bb.bb:                                            ; preds = %_ZN11duckdb_zstdL22ZSTD_deriveBlockSplitsEPNS_11ZSTD_CCtx_sEPjj.exit.i.i.i
  %i.id = load i32, ptr %i.dk, align 8, !tbaa !3  ; 5 uses
  %i.ie = zext i32 %i.id to i64                   ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.dd, i64 80, i1 false), !tbaa.struct !279
  %i.if = load i32, ptr %i.do, align 8, !tbaa !222
  %.not35.i.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not35.i.i.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ig = load i32, ptr %i.dp, align 4, !tbaa !223
  %i.ih = icmp ult i32 %i.id, %i.ig
  br i1 %i.ih, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.dq, align 8, !tbaa !222
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.ii = load ptr, ptr %i.dd, align 8, !tbaa !210 ; 6 uses
  store ptr %i.ii, ptr %i.dm, align 8, !tbaa !210
  %.idx.i.i.i = shl nuw nsw i64 %i.ie, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx.i.i.i
  store ptr %i.ij, ptr %i.dr, align 8, !tbaa !214
  %i.ik = load ptr, ptr %i.de, align 8, !tbaa !214
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = ashr exact i64 %i.in, 3
  %i.ip = icmp eq i64 %i.io, %i.ie
  br i1 %i.ip, label %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not.i36.i.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i36.i.i.i.i, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i, label %.lr.ph.i37.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %bb.bf
  %i.iq = load i32, ptr %i.ds, align 4, !tbaa !223
  %i.ir = zext i32 %i.iq to i64                   ; 3 uses
  %xtraiter = and i64 %i.ie, 1
  %i.is = icmp eq i32 %i.id, 1
  br i1 %i.is, label %.epil.preheader, label %.lr.ph.i37.i.i.i.i.new

.lr.ph.i37.i.i.i.i.new:                           ; preds = %.lr.ph.i37.i.i.i.i
  %unroll_iter = and i64 %i.ie, 4294967294
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bk, %.lr.ph.i37.i.i.i.i.new
  %.014.i38.i.i.i.i = phi i64 [ 0, %.lr.ph.i37.i.i.i.i.new ], [ %.1.i42.i.i.i.i.1, %bb.bk ]
  %.01213.i39.i.i.i.i = phi i64 [ 0, %.lr.ph.i37.i.i.i.i.new ], [ %i.ji, %bb.bk ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i37.i.i.i.i.new ], [ %niter.next.1, %bb.bk ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.01213.i39.i.i.i.i
  %.sroa.3.0..sroa_idx.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %.sroa.3.0.copyload.i41.i.i.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i40.i.i.i.i, align 4, !tbaa !256
  %i.iu = zext i16 %.sroa.3.0.copyload.i41.i.i.i.i to i64
  %i.iv = add i64 %.014.i38.i.i.i.i, %i.iu        ; 3 uses
  %i.iw = icmp eq i64 %.01213.i39.i.i.i.i, %i.ir
  br i1 %i.iw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ix = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.iy = icmp eq i32 %i.ix, 1
  %i.iz = add i64 %i.iv, 65536
  %spec.select.i45.i.i.i.i = select i1 %i.iy, i64 %i.iz, i64 %i.iv
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.1.i42.i.i.i.i = phi i64 [ %i.iv, %bb.bg ], [ %spec.select.i45.i.i.i.i, %bb.bh ]
  %i.ja = or disjoint i64 %.01213.i39.i.i.i.i, 1  ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ja
  %.sroa.3.0..sroa_idx.i40.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %.sroa.3.0.copyload.i41.i.i.i.i.1 = load i16, ptr %.sroa.3.0..sroa_idx.i40.i.i.i.i.1, align 4, !tbaa !256
  %i.jc = zext i16 %.sroa.3.0.copyload.i41.i.i.i.i.1 to i64
  %i.jd = add i64 %.1.i42.i.i.i.i, %i.jc          ; 3 uses
  %i.je = icmp eq i64 %i.ja, %i.ir
  br i1 %i.je, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jf = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.jg = icmp eq i32 %i.jf, 1
  %i.jh = add i64 %i.jd, 65536
  %spec.select.i45.i.i.i.i.1 = select i1 %i.jg, i64 %i.jh, i64 %i.jd
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1.i42.i.i.i.i.1 = phi i64 [ %i.jd, %bb.bi ], [ %spec.select.i45.i.i.i.i.1, %bb.bj ] ; 3 uses
  %i.ji = add nuw nsw i64 %.01213.i39.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !282

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i37.i.i.i.i
  %.014.i38.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i37.i.i.i.i ], [ %.1.i42.i.i.i.i.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa ]
  %.01213.i39.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i37.i.i.i.i ], [ %i.ji, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod146 = trunc i32 %i.id to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.01213.i39.i.i.i.i.epil.init
  %.sroa.3.0..sroa_idx.i40.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %.sroa.3.0.copyload.i41.i.i.i.i.epil = load i16, ptr %.sroa.3.0..sroa_idx.i40.i.i.i.i.epil, align 4, !tbaa !256
  %i.jk = zext i16 %.sroa.3.0.copyload.i41.i.i.i.i.epil to i64
  %i.jl = add i64 %.014.i38.i.i.i.i.epil.init, %i.jk ; 3 uses
  %i.jm = icmp eq i64 %.01213.i39.i.i.i.i.epil.init, %i.ir
  br i1 %i.jm, label %bb.bl, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i

bb.bl:                                            ; preds = %.epil.preheader
  %i.jn = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.jo = icmp eq i32 %i.jn, 1
  %i.jp = add i64 %i.jl, 65536
  %spec.select.i45.i.i.i.i.epil = select i1 %i.jo, i64 %i.jp, i64 %i.jl
  br label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i: ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa, %bb.bl, %.epil.preheader, %bb.bf
  %.0.lcssa.i44.i.i.i.i = phi i64 [ 0, %bb.bf ], [ %.1.i42.i.i.i.i.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i.loopexit.unr-lcssa ], [ %i.jl, %.epil.preheader ], [ %spec.select.i45.i.i.i.i.epil, %bb.bl ]
  %i.jq = load ptr, ptr %i.dt, align 8, !tbaa !224
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0.lcssa.i44.i.i.i.i
  store ptr %i.jr, ptr %i.du, align 8, !tbaa !225
  br label %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader

_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader: ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.i.i.i.i, %bb.be
  br label %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i

_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i: ; preds = %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader, %bb.bz
  %.075108.i.i.i = phi i64 [ %i.mr, %bb.bz ], [ %.0113179.i, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ] ; 2 uses
  %.077107.i.i.i = phi i64 [ %i.ms, %bb.bz ], [ 0, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ]
  %.082106.i.i.i = phi ptr [ %i.mp, %bb.bz ], [ %.0122176.i, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ] ; 2 uses
  %.084105.i.i.i = phi ptr [ %i.mq, %bb.bz ], [ %.0132173.i, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ] ; 2 uses
  %.086104.i.i.i = phi i64 [ %i.mt, %bb.bz ], [ 0, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ] ; 3 uses
  %.087103.i.i.i = phi i64 [ %i.mf, %bb.bz ], [ 0, %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i.preheader ] ; 2 uses
  %i.js = icmp eq i64 %.086104.i.i.i, %.0.i.i.i.i
  %i.jt = load ptr, ptr %i.dr, align 8, !tbaa !214 ; 2 uses
  %i.ju = load ptr, ptr %i.dm, align 8, !tbaa !210 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.jt, %i.ju
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL28ZSTD_countSeqStoreMatchBytesEPKNS_10seqStore_tE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm.exit.i.i.i
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 3 uses
  %i.jy = ashr exact i64 %i.jx, 3                 ; 5 uses
  %i.jz = load i32, ptr %i.ds, align 4, !tbaa !223
  %i.ka = zext i32 %i.jz to i64                   ; 6 uses
  %i.kb = add nsw i64 %i.jy, -1                   ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %.epil.preheader147, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter152 = and i64 %i.jy, -2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bq, %.lr.ph.i.i.i.i.new
  %.014.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %.1.i.i.i.i.1, %bb.bq ]
  %.01213.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.ks, %bb.bq ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter153.next.1, %bb.bq ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.01213.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %.sroa.3.0.copyload.i.i.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !tbaa !256
  %i.ke = zext i16 %.sroa.3.0.copyload.i.i.i.i to i64
  %i.kf = add i64 %.014.i.i.i.i, %i.ke            ; 3 uses
  %i.kg = icmp eq i64 %.01213.i.i.i.i, %i.ka
  br i1 %i.kg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kh = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.ki = icmp eq i32 %i.kh, 1
  %i.kj = add i64 %i.kf, 65536
  %spec.select.i.i.i.i = select i1 %i.ki, i64 %i.kj, i64 %i.kf
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.1.i.i.i.i = phi i64 [ %i.kf, %bb.bm ], [ %spec.select.i.i.i.i, %bb.bn ]
  %i.kk = or disjoint i64 %.01213.i.i.i.i, 1      ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.kk
  %.sroa.3.0..sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %.sroa.3.0.copyload.i.i.i.i.1 = load i16, ptr %.sroa.3.0..sroa_idx.i.i.i.i.1, align 4, !tbaa !256
  %i.km = zext i16 %.sroa.3.0.copyload.i.i.i.i.1 to i64
  %i.kn = add i64 %.1.i.i.i.i, %i.km              ; 3 uses
  %i.ko = icmp eq i64 %i.kk, %i.ka
  br i1 %i.ko, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kp = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.kq = icmp eq i32 %i.kp, 1
  %i.kr = add i64 %i.kn, 65536
  %spec.select.i.i.i.i.1 = select i1 %i.kq, i64 %i.kr, i64 %i.kn
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.1.i.i.i.i.1 = phi i64 [ %i.kn, %bb.bo ], [ %spec.select.i.i.i.i.1, %bb.bp ] ; 3 uses
  %i.ks = add nuw i64 %.01213.i.i.i.i, 2          ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.lr.ph.i91.i.i.i.preheader.unr-lcssa, label %bb.bm, !llvm.loop !282

.lr.ph.i91.i.i.i.preheader.unr-lcssa:             ; preds = %bb.bq
  %i.kt = and i64 %i.jx, 8
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm:bb.a
  %i.gh = getelementptr inbounds nuw [80 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE15blockCompressor, i64 %i.an
  %i.gi = sext i32 %i.fx to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %.0.in.i149 = select i1 %.not8.i148, ptr %i.gj, ptr %i.gg
  %.0.i150 = load ptr, ptr %.0.in.i149, align 8, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.gk, align 8, !tbaa !482
  %i.gl = tail call noundef i64 %.0.i150(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ar, ptr noundef %1, i64 noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.o, %bb.y, %bb.k
  %.2133 = phi i64 [ %i.bi, %bb.k ], [ %i.ca, %bb.o ], [ %i.fv, %bb.x ], [ %i.gl, %bb.y ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gn = sub i64 0, %.2133
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr nonnull readonly align 1 %i.go, i64 %.2133, i1 false)
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !225
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.2133
  store ptr %i.gr, ptr %i.n, align 8, !tbaa !225
  br label %.thread163

.thread163:                                       ; preds = %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread, %bb.w, %bb.j, %.thread, %bb.z, %bb.c, %bb.d
  %.7 = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.z ], [ -41, %bb.j ], [ %.1.ph, %.thread ], [ %.1.i156, %_ZN11duckdb_zstdL38ZSTD_postProcessSequenceProducerResultEPNS_13ZSTD_SequenceEmmm.exit.thread ], [ %.3, %bb.w ]
  ret i64 %.7
}

declare void @_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd22ZSTD_ldm_skipSequencesEPNS_13rawSeqStore_tEmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN11duckdb_zstdL10ZSTD_isRLEEPKhm(ptr noundef %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !220
  %i.b = zext i8 %i.a to i64
  %i.c = mul nuw i64 %i.b, 72340172838076673      ; 4 uses
  %i.d = and i64 %1, 31                           ; 5 uses
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -7
  %i.i = icmp samesign ugt i64 %i.d, 8
  br i1 %i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %.val60.i = load i64, ptr %0, align 1, !tbaa !78 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 1, !tbaa !78 ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = xor i64 %.val.i, %.val60.i
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %i.l = lshr i64 %i.k, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.pn.i = phi ptr [ %.049.i, %bb.f ], [ %0, %bb.d ]
  %.pn67.i = phi ptr [ %.045.i, %bb.f ], [ %i.f, %bb.d ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 5 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 3 uses
  %i.m = icmp ult ptr %.045.i, %i.h
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.preheader.i
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !78 ; 2 uses
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !78 ; 2 uses
  %.not59.i = icmp eq i64 %.049.val.i, %.045.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.f
  %i.n = xor i64 %.045.val.i, %.049.val.i
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.n, i1 true)
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %.045.i, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.f to i64
  %i.t = sub i64 %i.r, %i.s
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.251.i = phi ptr [ %0, %bb.c ], [ %.049.i, %.preheader.i ] ; 4 uses
  %.247.i = phi ptr [ %i.f, %bb.c ], [ %.045.i, %.preheader.i ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.v = icmp ult ptr %.247.i, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !3
  %i.w = icmp eq i32 %.251.val.i, %.247.val.i
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %.352.i = phi ptr [ %i.y, %bb.h ], [ %.251.i, %bb.g ], [ %.251.i, %.loopexit.i ] ; 4 uses
  %.348.i = phi ptr [ %i.x, %bb.h ], [ %.247.i, %bb.g ], [ %.247.i, %.loopexit.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.aa = icmp ult ptr %.348.i, %i.z
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !256
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !256
  %i.ab = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.453.i = phi ptr [ %i.ad, %bb.k ], [ %.352.i, %bb.j ], [ %.352.i, %bb.i ]
  %.4.i = phi ptr [ %i.ac, %bb.k ], [ %.348.i, %bb.j ], [ %.348.i, %bb.i ] ; 4 uses
  %i.ae = icmp ult ptr %.4.i, %i.g
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %.453.i, align 1, !tbaa !220
  %i.ag = load i8, ptr %.4.i, align 1, !tbaa !220
  %i.ah = icmp eq i8 %i.af, %i.ag
  %spec.select.idx.i = zext i1 %i.ah to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %.4.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %i.ai = ptrtoint ptr %.5.i to i64
  %i.aj = ptrtoint ptr %i.f to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.e, %.thread63.i, %bb.n
  %.3.i = phi i64 [ %i.t, %.thread63.i ], [ %i.ak, %bb.n ], [ %i.l, %bb.e ]
  %i.al = add nsw i64 %i.d, -1
  %.not27 = icmp eq i64 %.3.i, %i.al
  br i1 %.not27, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %bb.b
  %.not2834 = icmp ult i64 %1, 32
  br i1 %.not2834, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %.critedge
  %.02335 = phi i64 [ %i.aq, %.critedge ], [ %i.d, %bb.o ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.02335 ; 4 uses
  %.val = load i64, ptr %i.am, align 1, !tbaa !78
  %.not29 = icmp eq i64 %.val, %i.c
  br i1 %.not29, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.1 = load i64, ptr %i.an, align 1, !tbaa !78
  %.not29.1 = icmp eq i64 %.val.1, %i.c
  br i1 %.not29.1, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.2 = load i64, ptr %i.ao, align 1, !tbaa !78
  %.not29.2 = icmp eq i64 %.val.2, %i.c
  br i1 %.not29.2, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val.3 = load i64, ptr %i.ap, align 1, !tbaa !78
  %.not29.3 = icmp eq i64 %.val.3, %i.c
  br i1 %.not29.3, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.r
  %i.aq = add i64 %.02335, 32                     ; 2 uses
  %.not28 = icmp eq i64 %i.aq, %1
  br i1 %.not28, label %.loopexit, label %.preheader, !llvm.loop !484

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p, %bb.q, %bb.r, %bb.o, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %bb.a
  %.2 = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ 1, %bb.a ], [ 1, %bb.o ], [ 1, %.critedge ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.preheader ]
  ret i32 %.2
}

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #2 {
bb.a:
  %10 = alloca %"struct.duckdb_zstd::repcodes_s", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !485
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = load ptr, ptr %1, align 8, !tbaa !210    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !222
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !223
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %.not44.i = icmp eq i32 %i.h, 0
  br i1 %.not44.i, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = zext i32 %i.n to i64
  %wide.trip.count.i = and i64 %i.g, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !215
  %i.w = icmp eq i16 %i.v, 0
  %i.x = icmp ne i64 %indvars.iv.i, %i.s
  %i.y = select i1 %i.w, i1 %i.x, i1 false        ; 2 uses
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !218 ; 5 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %or.cond.i = icmp ult i32 %i.ab, 3
  br i1 %or.cond.i, label %bb.f, label %thread-pre-split.i

bb.f:                                             ; preds = %bb.e
  %i.ac = add nuw nsw i32 %i.ab, %i.z             ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 4, !tbaa !3
  %i.af = add i32 %i.ae, -1
  %i.ag = load i32, ptr %3, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, -1
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i

_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i: ; preds = %bb.h, %bb.g
  %.0.i41.i = phi i32 [ %i.af, %bb.g ], [ %i.ak, %bb.h ]
  %.0.i32.i = phi i32 [ %i.ah, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i41.i, %.0.i32.i
  br i1 %.not.i, label %thread-pre-split.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i
  %i.an = add i32 %.0.i32.i, 3                    ; 2 uses
  store i32 %i.an, ptr %i.t, align 4, !tbaa !218
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.i, %bb.e
  %i.ao = phi i32 [ %i.aa, %bb.e ], [ %i.an, %bb.i ] ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %thread-pre-split.thread.i

bb.j:                                             ; preds = %thread-pre-split.i
  %i.aq = load <2 x i32>, ptr %2, align 4, !tbaa !3
  store <2 x i32> %i.aq, ptr %i.o, align 4, !tbaa !3
  %i.ar = add i32 %i.ao, -3
  br label %.sink.split.i.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i
  %i.as = phi i32 [ %i.ao, %thread-pre-split.i ], [ %i.aa, %_ZN11duckdb_zstdL30ZSTD_resolveRepcodeToRawOffsetEPKjjj.exit33.i ]
  %not..i = xor i1 %i.y, true
  %i.at = sext i1 %not..i to i32
  %i.au = add nsw i32 %i.as, %i.at                ; 3 uses
  switch i32 %i.au, label %bb.l [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %thread-pre-split.thread.i
  %i.av = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.aw = add i32 %i.av, -1
  br label %bb.m

bb.l:                                             ; preds = %thread-pre-split.thread.i
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %.pre.i.i = load i32, ptr %2, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi i32 [ %i.av, %bb.k ], [ %.pre.i.i, %bb.l ]
  %i.bb = phi i32 [ %i.aw, %bb.k ], [ %i.az, %bb.l ]
  %.not22.i.i = icmp eq i32 %i.au, 1
  %.in.i.i = select i1 %.not22.i.i, ptr %i.p, ptr %i.o
  %i.bc = load i32, ptr %.in.i.i, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.p, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.o, align 4, !tbaa !3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.j
  %.sink.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.ar, %bb.j ]
  store i32 %.sink.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i:    ; preds = %.sink.split.i.i, %thread-pre-split.thread.i
  %i.bd = icmp ugt i32 %i.aa, 3
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !3
  store <2 x i32> %i.be, ptr %i.q, align 4, !tbaa !3
  %i.bf = add i32 %i.aa, -3
  br label %.sink.split.i36.i

bb.o:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
  %i.bg = add nsw i32 %i.ab, %i.z                 ; 3 uses
  switch i32 %i.bg, label %bb.q [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.bi = add i32 %i.bh, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %.pre.i38.i = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = phi i32 [ %i.bh, %bb.p ], [ %.pre.i38.i, %bb.q ]
  %i.bn = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %.not22.i34.i = icmp eq i32 %i.bg, 1
  %.in.i35.i = select i1 %.not22.i34.i, ptr %i.r, ptr %i.q
  %i.bo = load i32, ptr %.in.i35.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %i.r, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.q, align 4, !tbaa !3
  br label %.sink.split.i36.i

.sink.split.i36.i:                                ; preds = %bb.r, %bb.n
  %.sink.i37.i = phi i32 [ %i.bn, %bb.r ], [ %i.bf, %bb.n ]
  store i32 %.sink.i37.i, ptr %3, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i:  ; preds = %.sink.split.i36.i, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %bb.e, !llvm.loop !486

_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit: ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit39.i, %bb.d, %bb.a
  %i.bp = icmp ult i64 %5, 3
  br i1 %i.bp, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 3 uses
  %i.bw = add i64 %5, -3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !10
  %i.cb = tail call fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr noundef %1, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef %7, ptr noundef %i.by, i32 noundef %i.ca) ; 5 uses
  %i.cc = icmp ult i64 %i.cb, -119
end_hunk_1
