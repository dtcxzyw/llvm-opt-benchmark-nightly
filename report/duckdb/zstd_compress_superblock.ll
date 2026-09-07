Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress_superblock?download=true
inline.NumInlined: 41
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressSuperBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj:bb.a
  br i1 %.not310.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(2064) %i.s, i64 2064, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %select.unfold.i, %.thread393.i
  %.10403.i = phi i32 [ %.8222.i, %.thread393.i ], [ %.10.i, %bb.ar ], [ %.10.i, %select.unfold.i ]
  %.8263402.i = phi ptr [ %i.lw, %.thread393.i ], [ %.8263.i, %bb.ar ], [ %.8263.i, %select.unfold.i ] ; 6 uses
  %.8274401.i = phi ptr [ %i.lv, %.thread393.i ], [ %.8274.i, %bb.ar ], [ %.8274.i, %select.unfold.i ] ; 3 uses
  %.8290400.i = phi ptr [ %i.lz, %.thread393.i ], [ %.8290.i, %bb.ar ], [ %.8290.i, %select.unfold.i ] ; 3 uses
  %.not311.i = icmp eq i32 %.10403.i, 0
  br i1 %.not311.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !25
  %.off.i.i = add i32 %i.mb, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !26
  %.off9.i.i = add i32 %i.md, -1
  %switch10.i.i = icmp ult i32 %.off9.i.i, 2
  br i1 %switch10.i.i, label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit, label %_ZN11duckdb_zstdL30ZSTD_needSequenceEntropyTablesEPKNS_25ZSTD_fseCTablesMetadata_tE.exit.i

_ZN11duckdb_zstdL30ZSTD_needSequenceEntropyTablesEPKNS_25ZSTD_fseCTablesMetadata_tE.exit.i: ; preds = %bb.au
  %i.me = getelementptr inbounds nuw i8, ptr %7, i64 148
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !23
  %i.mg = add i32 %i.mf, -3
  %switch12.i.i = icmp ult i32 %i.mg, -2
  br i1 %switch12.i.i, label %bb.av, label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit

bb.av:                                            ; preds = %_ZN11duckdb_zstdL30ZSTD_needSequenceEntropyTablesEPKNS_25ZSTD_fseCTablesMetadata_tE.exit.i, %bb.as
  %i.mh = icmp ult ptr %.8274401.i, %i.al
  br i1 %i.mh, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.mi = ptrtoint ptr %i.al to i64
  %i.mj = ptrtoint ptr %.8274401.i to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 3 uses
  %i.ml = ptrtoint ptr %.8263402.i to i64
  %i.mm = sub i64 %i.lp, %i.ml
  %i.mn = add i64 %i.mk, 3                        ; 4 uses
  %i.mo = icmp ugt i64 %i.mn, %i.mm
  br i1 %i.mo, label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit, label %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i

_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i: ; preds = %bb.aw
  %.tr.i.i = trunc i64 %i.mk to i32
  %i.mp = shl i32 %.tr.i.i, 3
  %i.mq = add i32 %i.mp, %5                       ; 2 uses
  %i.mr = trunc i32 %i.mq to i16
  store i16 %i.mr, ptr %.8263402.i, align 1, !tbaa !29
  %i.ms = lshr i32 %i.mq, 16
  %i.mt = trunc i32 %i.ms to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 2
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !24
  %i.mv = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mv, ptr readonly align 1 %.8274401.i, i64 %i.mk, i1 false)
  %i.mw = icmp ult i64 %i.mn, -119
  br i1 %i.mw, label %bb.ax, label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 %i.mn ; 2 uses
  %i.my = icmp ult ptr %.8290400.i, %i.z
  br i1 %i.my, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.mz = getelementptr inbounds nuw i8, ptr %i.s, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.mz, i64 12, i1 false)
  %i.na = icmp ult ptr %i.x, %.8290400.i
  br i1 %i.na, label %.lr.ph450.i, label %._crit_edge.i

.lr.ph450.i:                                      ; preds = %bb.ay
  %.promoted.i = load i32, ptr %6, align 4
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !84
  %i.nd = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.promoted451.i = load i32, ptr %i.nh, align 4
  %.promoted455.i = load i32, ptr %i.ng, align 4
  br label %bb.az

bb.az:                                            ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i, %.lr.ph450.i
  %.val409457.i = phi i32 [ %.promoted455.i, %.lr.ph450.i ], [ %.val409456.i, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i ] ; 4 uses
  %.val453.i = phi i32 [ %.promoted451.i, %.lr.ph450.i ], [ %.val452.i, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i ] ; 2 uses
  %.0200449.i = phi ptr [ %i.x, %.lr.ph450.i ], [ %i.oi, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i ] ; 4 uses
  %i.ni = phi i32 [ %.promoted.i, %.lr.ph450.i ], [ %i.oh, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i ] ; 5 uses
  %i.nj = load i32, ptr %.0200449.i, align 4, !tbaa !86 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0200449.i, i64 4
  %i.nl = load i16, ptr %i.nk, align 4, !tbaa !82
  %i.nm = zext i16 %i.nl to i64                   ; 3 uses
  %i.nn = ptrtoint ptr %.0200449.i to i64
  %i.no = sub i64 %i.nn, %i.ne
  %i.np = lshr exact i64 %i.no, 3
  %i.nq = trunc i64 %i.np to i32
  %i.nr = icmp eq i32 %i.nc, %i.nq
  br i1 %i.nr, label %bb.ba, label %_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.ns = load i32, ptr %i.nf, align 8, !tbaa !85
  %i.nt = icmp eq i32 %i.ns, 1
  %i.nu = or disjoint i64 %i.nm, 65536
  %spec.select.i337.i = select i1 %i.nt, i64 %i.nu, i64 %i.nm
  br label %_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i

_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i: ; preds = %bb.ba, %bb.az
  %.sroa.0.1.i.i = phi i64 [ %i.nm, %bb.az ], [ %spec.select.i337.i, %bb.ba ]
  %i.nv = icmp ugt i32 %i.nj, 3
  br i1 %i.nv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i
  store i32 %.val409457.i, ptr %i.nh, align 4, !tbaa !6
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !6
  %i.nw = add i32 %i.nj, -3
  br label %.sink.split.i.i

bb.bc:                                            ; preds = %_ZN11duckdb_zstdL22ZSTD_getSequenceLengthEPKNS_10seqStore_tEPKNS_8seqDef_sE.exit.i
  %i.nx = icmp eq i64 %.sroa.0.1.i.i, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = add nsw i32 %i.nj, -1
  %i.oa = add nsw i32 %i.nz, %i.ny                ; 3 uses
  switch i32 %i.oa, label %bb.be [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
    i32 3, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ob = add i32 %i.ni, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.oc = zext i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !6
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.of = phi i32 [ %i.ob, %bb.bd ], [ %i.oe, %bb.be ]
  %.not22.i.i = icmp eq i32 %i.oa, 1
  %i.og = select i1 %.not22.i.i, i32 %.val453.i, i32 %.val409457.i ; 2 uses
  store i32 %i.og, ptr %i.nh, align 4, !tbaa !6
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !6
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bf, %bb.bb
  %.val454.i = phi i32 [ %i.og, %bb.bf ], [ %.val409457.i, %bb.bb ]
  %.sink.i.i = phi i32 [ %i.of, %bb.bf ], [ %i.nw, %bb.bb ] ; 2 uses
  store i32 %.sink.i.i, ptr %6, align 4, !tbaa !6
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i:    ; preds = %.sink.split.i.i, %bb.bc
  %.val409456.i = phi i32 [ %.val409457.i, %bb.bc ], [ %i.ni, %.sink.split.i.i ]
  %.val452.i = phi i32 [ %.val453.i, %bb.bc ], [ %.val454.i, %.sink.split.i.i ]
  %i.oh = phi i32 [ %i.ni, %bb.bc ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.0200449.i, i64 8 ; 2 uses
  %i.oj = icmp ult ptr %i.oi, %.8290400.i
  br i1 %i.oj, label %bb.az, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i, %bb.ay
  %i.ok = getelementptr inbounds nuw i8, ptr %i.t, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ok, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i, %bb.ax, %bb.av
  %.10265.i = phi ptr [ %.8263402.i, %bb.av ], [ %i.mx, %bb.ax ], [ %i.mx, %._crit_edge.i ]
  %i.ol = ptrtoint ptr %.10265.i to i64
  %i.om = ptrtoint ptr %1 to i64
  %i.on = sub i64 %i.ol, %i.om
  br label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit

.critedge.i:                                      ; preds = %_ZN11duckdb_zstdL24ZSTD_seqDecompressedSizeEPKNS_10seqStore_tEPKNS_8seqDef_sEmmi.exit335.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit

_ZN11duckdb_zstdL27ZSTD_compressSubBlock_multiEPKNS_10seqStore_tEPKNS_27ZSTD_compressedBlockState_tEPS3_PKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_18ZSTD_CCtx_params_sEPvmPKvmijSD_m.exit: ; preds = %.critedge.i, %bb.bg, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i, %bb.aw, %_ZN11duckdb_zstdL30ZSTD_needSequenceEntropyTablesEPKNS_25ZSTD_fseCTablesMetadata_tE.exit.i, %bb.au, %bb.at, %bb.aj, %bb.x, %bb.a
  %.1 = phi i64 [ %i.q, %bb.a ], [ %i.ls, %.critedge.i ], [ %i.on, %bb.bg ], [ 0, %bb.au ], [ %i.jd, %bb.aj ], [ %i.mn, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i ], [ 0, %_ZN11duckdb_zstdL30ZSTD_needSequenceEntropyTablesEPKNS_25ZSTD_fseCTablesMetadata_tE.exit.i ], [ 0, %bb.x ], [ 0, %bb.at ], [ -70, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i64 @_ZN11duckdb_zstd27ZSTD_buildBlockEntropyStatsEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPNS_29ZSTD_entropyCTablesMetadata_tEPvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 5, 1) i64 @_ZN11duckdb_zstdL21ZSTD_compressSubBlockEPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPKNS_8seqDef_sEmPKhmSA_SA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiiPiSF_j(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef range(i32 0, 2) %13, i32 noundef range(i32 0, 2) %14, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %15, ptr nofree noundef nonnull writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 3 ; 10 uses
  %gepdiff = add i64 %11, -3                      ; 5 uses
  %.not.i = icmp ne i32 %13, 0                    ; 4 uses
  %i.b = select i1 %.not.i, i64 200, i64 0        ; 2 uses
  %i.c = sub nuw nsw i64 1024, %i.b
  %.not99.i = icmp ult i64 %5, %i.c
  %i.d = select i1 %.not99.i, i64 3, i64 4
  %i.e = sub nuw nsw i64 16384, %i.b
  %i.f = icmp uge i64 %5, %i.e
  %i.g = zext i1 %i.f to i64
  %i.h = add nuw nsw i64 %i.d, %i.g               ; 4 uses
  %18 = getelementptr i8, ptr %10, i64 %11        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.not103.i = icmp eq i64 %i.h, 3
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %i.j, %bb.b ], [ 3, %bb.a ]    ; 3 uses
  store i32 0, ptr %15, align 4, !tbaa !6
  %i.l = icmp eq i64 %5, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 8, !tbaa !87     ; 2 uses
  switch i32 %i.m, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_noCompressLiteralsEPvmPKvm(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5)
  br label %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 @_ZN11duckdb_zstd29ZSTD_compressRleLiteralsBlockEPvmPKvm(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5)
  br label %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit

bb.g:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.m, 2
  %or.cond.i = and i1 %.not.i, %i.p
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 4 %i.q, i64 %i.s, i1 false)
  %i.t = load i64, ptr %i.r, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.095.i = phi ptr [ %i.u, %bb.h ], [ %i.i, %bb.g ] ; 4 uses
  %.094.i = phi i64 [ %i.t, %bb.h ], [ 0, %bb.g ]
  %.not100.i = icmp ne i32 %12, 0
  %i.v = zext i1 %.not100.i to i32                ; 2 uses
  %19 = ptrtoint ptr %18 to i64
  %i.w = ptrtoint ptr %.095.i to i64
  %i.x = sub i64 %19, %i.w                        ; 2 uses
  br i1 %.not103.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call noundef i64 @_ZN11duckdb_zstd26HUF_compress1X_usingCTableEPvmPKvmPKmi(ptr noundef nonnull %.095.i, i64 noundef %i.x, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.v)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noundef i64 @_ZN11duckdb_zstd26HUF_compress4X_usingCTableEPvmPKvmPKmi(ptr noundef nonnull %.095.i, i64 noundef %i.x, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.v)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = phi i64 [ %i.y, %bb.j ], [ %i.z, %bb.k ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.095.i, i64 %i.aa
  %i.ac = add i64 %i.aa, %.094.i                  ; 7 uses
  %i.ad = add i64 %i.aa, -1
  %or.cond108.i = icmp ult i64 %i.ad, -120
  br i1 %or.cond108.i, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  %.not102.i = icmp ult i64 %i.ac, %5
  %or.cond105.i = select i1 %.not.i, i1 true, i1 %.not102.i
  br i1 %or.cond105.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_noCompressLiteralsEPvmPKvm(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5)
  br label %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp ugt i64 %i.ac, 1023
  %i.ag = select i1 %i.af, i64 4, i64 3
  %i.ah = icmp ugt i64 %i.ac, 16383
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ag, %i.ai
  %i.ak = icmp samesign ult i64 %i.h, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_noCompressLiteralsEPvmPKvm(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5)
  br label %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit

bb.q:                                             ; preds = %bb.o
  %i.am = trunc i64 %5 to i32
  %i.an = shl i32 %i.am, 4                        ; 3 uses
  switch i64 %i.h, label %default.unreachable [
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ao = add i32 %i.k, %i.an
  %i.ap = trunc i64 %i.ac to i32
  %i.aq = shl i32 %i.ap, 14
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = trunc i32 %i.ar to i16
  store i16 %i.as, ptr %i.a, align 1, !tbaa !29
  %i.at = lshr i32 %i.ar, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 %i.au, ptr %i.av, align 1, !tbaa !24
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.aw = trunc i64 %i.ac to i32
  %i.ax = shl i32 %i.aw, 18
  %i.ay = or disjoint i32 %i.an, 8
  %i.az = add i32 %i.ay, %i.k
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.a, align 1, !tbaa !6
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bb = trunc i64 %i.ac to i32
  %i.bc = shl i32 %i.bb, 22
  %i.bd = or disjoint i32 %i.an, 12
  %i.be = add i32 %i.bd, %i.k
  %i.bf = add i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.a, align 1, !tbaa !6
  %i.bg = lshr i64 %i.ac, 10
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 7
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !24
  br label %bb.u

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  store i32 1, ptr %15, align 4, !tbaa !6
  %i.bj = ptrtoint ptr %i.ab to i64
  %i.bk = ptrtoint ptr %i.a to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit

_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit: ; preds = %bb.e, %bb.f, %bb.n, %bb.p, %bb.u
  %.1.i = phi i64 [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.bl, %bb.u ], [ %i.al, %bb.p ], [ %i.ae, %bb.n ] ; 6 uses
  %i.bm = icmp ult i64 %.1.i, -119
  br i1 %i.bm, label %bb.v, label %.thread69

bb.v:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit
  %i.bn = icmp eq i64 %.1.i, 0
  br i1 %i.bn, label %.thread69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = ptrtoint ptr %i.bo to i64
  %gepdiff95 = sub i64 %gepdiff, %.1.i
  %i.bs = getelementptr i8, ptr %9, i64 4
  %.val = load i32, ptr %i.bs, align 4, !tbaa !89
  %i.bt = icmp ugt i32 %.val, 57
  %i.bu = zext i1 %i.bt to i32                    ; 2 uses
  store i32 0, ptr %16, align 4, !tbaa !6
  %20 = ptrtoint ptr %18 to i64                   ; 2 uses
  %i.bv = icmp slt i64 %gepdiff95, 4
  br i1 %i.bv, label %.thread69, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp ult i64 %3, 128
  br i1 %i.bw, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = icmp ult i64 %3, 32512
  br i1 %i.bx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.by = lshr i64 %3, 8
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, -128
  store i8 %i.ca, ptr %i.bo, align 1, !tbaa !24
  %i.cb = trunc i64 %3 to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  br label %.thread.i

bb.aa:                                            ; preds = %bb.y
  store i8 -1, ptr %i.bo, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.cf = trunc i64 %3 to i16
  %i.cg = add i16 %i.cf, -32512
  store i16 %i.cg, ptr %i.ce, align 1, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  br label %.thread.i

bb.ab:                                            ; preds = %bb.x
  %i.ci = trunc nuw nsw i64 %3 to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.ci, ptr %i.bo, align 1, !tbaa !24
  %i.ck = icmp eq i64 %3, 0
  br i1 %i.ck, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91, label %.thread.i

.thread.i:                                        ; preds = %bb.ab, %bb.aa, %bb.z
  %.0712.i = phi ptr [ %i.cj, %bb.ab ], [ %i.ch, %bb.aa ], [ %i.cd, %bb.z ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0712.i, i64 1 ; 5 uses
  %.not.i63 = icmp eq i32 %14, 0
  br i1 %.not.i63, label %bb.ac, label %.thread10.i

bb.ac:                                            ; preds = %.thread.i
  store i8 -4, ptr %.0712.i, align 1, !tbaa !24
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %20, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.cq = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef nonnull %i.cl, i64 noundef %i.cn, ptr noundef nonnull %i.co, ptr noundef %7, ptr noundef nonnull %i.bp, ptr noundef %8, ptr noundef nonnull %i.cp, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %i.bu, i32 noundef %12) ; 3 uses
  %i.cr = icmp ult i64 %i.cq, -119
  br i1 %i.cr, label %bb.ad, label %.thread69

.thread10.i:                                      ; preds = %.thread.i
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !26
  %i.cx = shl i32 %i.cs, 6
  %i.cy = shl i32 %i.cu, 4
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = shl i32 %i.cw, 2
  %i.db = add i32 %i.cz, %i.da
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %.0712.i, align 1, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 4 %i.dd, i64 %i.df, i1 false)
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dg ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %20, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.dm = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef nonnull %i.dh, i64 noundef %i.dj, ptr noundef nonnull %i.dk, ptr noundef %7, ptr noundef nonnull %i.bp, ptr noundef %8, ptr noundef nonnull %i.dl, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %i.bu, i32 noundef %12) ; 4 uses
  %i.dn = icmp ult i64 %i.dm, -119
  br i1 %i.dn, label %bb.ae, label %.thread69

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  br label %bb.af

bb.ae:                                            ; preds = %.thread10.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !90 ; 2 uses
  %.not78.i = icmp ne i64 %i.dr, 0
  %i.ds = add i64 %i.dr, %i.dm
  %i.dt = icmp ult i64 %i.ds, 4
  %or.cond.i64 = and i1 %.not78.i, %i.dt
  br i1 %or.cond.i64, label %.thread69, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.du = phi ptr [ %i.do, %bb.ad ], [ %i.dp, %bb.ae ]
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = ptrtoint ptr %.0712.i to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp slt i64 %i.dx, 4
  br i1 %i.dy, label %.thread69, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit

_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit: ; preds = %bb.af
  store i32 1, ptr %16, align 4, !tbaa !6
  %i.dz = sub i64 %i.dv, %i.br                    ; 4 uses
  %i.ea = icmp ult i64 %i.dz, -119
  br i1 %i.ea, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread, label %.thread69

_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread: ; preds = %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %.thread69, label %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91

_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91: ; preds = %bb.ab, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread
  %.2.i7694 = phi i64 [ %i.dz, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread ], [ 1, %bb.ab ]
  %i.ec = add nuw nsw i64 %.1.i, 3
  %i.ed = add nuw nsw i64 %i.ec, %.2.i7694        ; 2 uses
  %.tr = trunc i64 %i.ed to i32
  %i.ee = shl i32 %.tr, 3
  %i.ef = add i32 %17, -20
  %i.eg = add i32 %i.ef, %i.ee                    ; 2 uses
  %i.eh = trunc i32 %i.eg to i16
  store i16 %i.eh, ptr %10, align 1, !tbaa !29
  %i.ei = lshr i32 %i.eg, 16
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !24
  br label %.thread69

.thread69:                                        ; preds = %bb.w, %bb.ac, %.thread10.i, %bb.af, %bb.ae, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit, %bb.l, %bb.v, %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91
  %.4 = phi i64 [ %i.ed, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread.thread91 ], [ 0, %bb.l ], [ %.1.i, %_ZN11duckdb_zstdL29ZSTD_compressSubBlock_literalEPKmPKNS_25ZSTD_hufCTablesMetadata_tEPKhmPvmiiPi.exit ], [ 0, %bb.v ], [ 0, %bb.af ], [ 0, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit.thread ], [ %i.dz, %_ZN11duckdb_zstdL31ZSTD_compressSubBlock_sequencesEPKNS_17ZSTD_fseCTables_tEPKNS_25ZSTD_fseCTablesMetadata_tEPKNS_8seqDef_sEmPKhSA_SA_PKNS_18ZSTD_CCtx_params_sEPvmiiPi.exit ], [ 0, %bb.ae ], [ -70, %bb.w ], [ %i.cq, %bb.ac ], [ %i.dm, %.thread10.i ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_noCompressLiteralsEPvmPKvm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressRleLiteralsBlockEPvmPKvm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd26HUF_compress1X_usingCTableEPvmPKvmPKmi(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd26HUF_compress4X_usingCTableEPvmPKvmPKmi(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_ZTSN11duckdb_zstd13ZSTD_format_eE", !4, i64 0}
!8 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !4, i64 0}
!9 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !8, i64 24}
!10 = !{!"_ZTSN11duckdb_zstd20ZSTD_frameParametersE", !5, i64 0, !5, i64 4, !5, i64 8}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSN11duckdb_zstd21ZSTD_dictAttachPref_eE", !4, i64 0}
!13 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !4, i64 0}
!14 = !{!"_ZTSN11duckdb_zstd11ldmParams_tE", !13, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!15 = !{!"_ZTSN11duckdb_zstd17ZSTD_bufferMode_eE", !4, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd21ZSTD_sequenceFormat_eE", !4, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd14ZSTD_customMemE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSN11duckdb_zstd18ZSTD_CCtx_params_sE", !7, i64 0, !9, i64 4, !10, i64 32, !5, i64 44, !5, i64 48, !11, i64 56, !5, i64 64, !12, i64 68, !13, i64 72, !5, i64 76, !11, i64 80, !5, i64 88, !5, i64 92, !14, i64 96, !5, i64 120, !15, i64 124, !15, i64 128, !16, i64 132, !5, i64 136, !13, i64 140, !13, i64 144, !5, i64 148, !18, i64 152, !13, i64 176, !5, i64 180, !17, i64 184, !17, i64 192, !11, i64 200, !13, i64 208}
!20 = !{!"_ZTSN11duckdb_zstd20symbolEncodingType_eE", !4, i64 0}
!21 = !{!"_ZTSN11duckdb_zstd25ZSTD_hufCTablesMetadata_tE", !20, i64 0, !4, i64 4, !11, i64 136}
!22 = !{!"_ZTSN11duckdb_zstd25ZSTD_fseCTablesMetadata_tE", !20, i64 0, !20, i64 4, !20, i64 8, !4, i64 12, !11, i64 152, !11, i64 160}
!23 = !{!22, !20, i64 4}
!24 = !{!4, !4, i64 0}
!25 = !{!22, !20, i64 0}
!26 = !{!22, !20, i64 8}
!27 = !{!22, !11, i64 152}
!28 = !{!"short", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !80}
!31 = distinct !{!31, !80}
!32 = distinct !{!32, !80}
!33 = distinct !{!33, !80}
!34 = distinct !{!34, !80}
!35 = distinct !{!35, !80}
!36 = !{!"_ZTSN11duckdb_zstd23ZSTD_compressionStage_eE", !4, i64 0}
!37 = !{!"_ZTSN11duckdb_zstd24ZSTD_cwksp_alloc_phase_eE", !4, i64 0}
!38 = !{!"_ZTSN11duckdb_zstd25ZSTD_cwksp_static_alloc_eE", !4, i64 0}
!39 = !{!"_ZTSN11duckdb_zstd10ZSTD_cwkspE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !4, i64 56, !5, i64 60, !37, i64 64, !38, i64 68}
!40 = !{!"long long", !4, i64 0}
!41 = !{!"_ZTSN11duckdb_zstd13XXH64_state_sE", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !4, i64 40, !5, i64 72, !4, i64 76}
!42 = !{!"p1 _ZTSN11duckdb_zstd10POOL_ctx_sE", !17, i64 0}
!43 = !{!"_ZTSN11duckdb_zstd12SeqCollectorE", !5, i64 0, !17, i64 8, !11, i64 16, !11, i64 24}
!44 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !17, i64 0}
!45 = !{!"p1 omnipotent char", !17, i64 0}
!46 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !4, i64 0}
!47 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !44, i64 0, !44, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !11, i64 56, !11, i64 64, !46, i64 72, !5, i64 76}
!48 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !45, i64 0, !45, i64 8, !45, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!49 = !{!"_ZTSN11duckdb_zstd10ldmState_tE", !48, i64 0, !17, i64 40, !5, i64 48, !45, i64 56, !4, i64 64, !4, i64 576}
!50 = !{!"_ZTSN11duckdb_zstd13rawSeqStore_tE", !17, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!51 = !{!"p1 int", !17, i64 0}
!52 = !{!"_ZTSN11duckdb_zstd15ZSTD_OptPrice_eE", !4, i64 0}
!53 = !{!"_ZTSN11duckdb_zstd10optState_tE", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !17, i64 32, !17, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !52, i64 80, !17, i64 88, !13, i64 96}
!54 = !{!"p1 _ZTSN11duckdb_zstd17ZSTD_matchState_tE", !17, i64 0}
!55 = !{!"_ZTSN11duckdb_zstd17ZSTD_matchState_tE", !48, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !45, i64 56, !4, i64 64, !11, i64 96, !5, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !5, i64 136, !5, i64 140, !53, i64 144, !54, i64 248, !9, i64 256, !17, i64 288, !5, i64 296, !5, i64 300}
!56 = !{!"_ZTSN11duckdb_zstd17ZSTD_blockState_tE", !17, i64 0, !17, i64 8, !55, i64 16}
!57 = !{!"_ZTSN11duckdb_zstd22ZSTD_buffered_policy_eE", !4, i64 0}
!58 = !{!"_ZTSN11duckdb_zstd17ZSTD_cStreamStageE", !4, i64 0}
!59 = !{!"_ZTSN11duckdb_zstd15ZSTD_inBuffer_sE", !17, i64 0, !11, i64 8, !11, i64 16}
!60 = !{!"_ZTSN11duckdb_zstd22ZSTD_dictContentType_eE", !4, i64 0}
!61 = !{!"p1 _ZTSN11duckdb_zstd12ZSTD_CDict_sE", !17, i64 0}
!62 = !{!"_ZTSN11duckdb_zstd14ZSTD_localDictE", !17, i64 0, !17, i64 8, !11, i64 16, !60, i64 24, !61, i64 32}
!63 = !{!"_ZTSN11duckdb_zstd17ZSTD_prefixDict_sE", !17, i64 0, !11, i64 8, !60, i64 16}
!64 = !{!"_ZTSN11duckdb_zstd29ZSTD_entropyCTablesMetadata_tE", !21, i64 0, !22, i64 144}
!65 = !{!"_ZTSN11duckdb_zstd18ZSTD_blockSplitCtxE", !47, i64 0, !47, i64 80, !47, i64 160, !47, i64 240, !47, i64 320, !4, i64 400, !64, i64 1184}
!66 = !{!"_ZTSN11duckdb_zstd11ZSTD_CCtx_sE", !36, i64 0, !5, i64 4, !5, i64 8, !19, i64 16, !19, i64 232, !19, i64 448, !5, i64 664, !11, i64 672, !39, i64 680, !11, i64 752, !40, i64 760, !40, i64 768, !40, i64 776, !41, i64 784, !18, i64 872, !42, i64 896, !11, i64 904, !43, i64 912, !5, i64 944, !5, i64 948, !47, i64 952, !49, i64 1032, !17, i64 3144, !11, i64 3152, !50, i64 3160, !56, i64 3200, !51, i64 3520, !57, i64 3528, !45, i64 3536, !11, i64 3544, !11, i64 3552, !11, i64 3560, !11, i64 3568, !45, i64 3576, !11, i64 3584, !11, i64 3592, !11, i64 3600, !58, i64 3608, !5, i64 3612, !59, i64 3616, !11, i64 3640, !11, i64 3648, !62, i64 3656, !61, i64 3696, !63, i64 3704, !40, i64 3728, !65, i64 3736, !17, i64 5232, !11, i64 5240}
!67 = !{!66, !17, i64 3200}
!68 = !{!66, !17, i64 3208}
!69 = !{!66, !51, i64 3520}
!70 = !{!66, !5, i64 8}
!71 = !{!47, !44, i64 0}
!72 = !{!47, !44, i64 8}
!73 = !{!47, !45, i64 16}
!74 = !{!47, !45, i64 24}
!75 = !{!47, !45, i64 32}
!76 = !{!47, !45, i64 40}
!77 = !{!47, !45, i64 48}
!78 = !{!19, !11, i64 56}
!79 = !{!64, !20, i64 0}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !5, i64 0, !28, i64 4, !28, i64 6}
!82 = !{!81, !28, i64 4}
!83 = !{!81, !28, i64 6}
!84 = !{!47, !5, i64 76}
!85 = !{!47, !46, i64 72}
!86 = !{!81, !5, i64 0}
!87 = !{!21, !20, i64 0}
!88 = !{!21, !11, i64 136}
!89 = !{!19, !5, i64 4}
!90 = !{!22, !11, i64 160}
end_hunk_0
