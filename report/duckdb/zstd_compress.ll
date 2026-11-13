Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm:bb.a
  %niter61 = phi i64 [ 0, %.lr.ph.i37.new ], [ %niter61.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.014.i38
  %.sroa.3.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.3.0.copyload.i41 = load i16, ptr %.sroa.3.0..sroa_idx.i40, align 4, !tbaa !227
  %i.bv = zext i16 %.sroa.3.0.copyload.i41 to i64
  %i.bw = add i64 %.01213.i39, %i.bv              ; 3 uses
  %i.bx = icmp eq i64 %.014.i38, %i.br
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !206
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = add i64 %i.bw, 65536
  %spec.select.i45 = select i1 %i.bz, i64 %i.ca, i64 %i.bw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i42 = phi i64 [ %i.bw, %bb.o ], [ %spec.select.i45, %bb.p ]
  %i.cb = or disjoint i64 %.014.i38, 1            ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cb
  %.sroa.3.0..sroa_idx.i40.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.3.0.copyload.i41.1 = load i16, ptr %.sroa.3.0..sroa_idx.i40.1, align 4, !tbaa !227
  %i.cd = zext i16 %.sroa.3.0.copyload.i41.1 to i64
  %i.ce = add i64 %.1.i42, %i.cd                  ; 3 uses
  %i.cf = icmp eq i64 %i.cb, %i.br
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !206
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = add i64 %i.ce, 65536
  %spec.select.i45.1 = select i1 %i.ch, i64 %i.ci, i64 %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i42.1 = phi i64 [ %i.ce, %bb.q ], [ %spec.select.i45.1, %bb.r ] ; 3 uses
  %i.cj = add nuw i64 %.014.i38, 2                ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, label %bb.o, !llvm.loop !6

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa: ; preds = %bb.s
  %i.ck = and i64 %i.bn, 8
  %lcmp.mod57.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod57.not, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46, label %.epil.preheader55

.epil.preheader55:                                ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, %.lr.ph.i37
  %.014.i38.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %i.cj, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ] ; 2 uses
  %.01213.i39.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %.1.i42.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.014.i38.epil.init
  %.sroa.3.0..sroa_idx.i40.epil = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.3.0.copyload.i41.epil = load i16, ptr %.sroa.3.0..sroa_idx.i40.epil, align 4, !tbaa !227
  %i.cm = zext i16 %.sroa.3.0.copyload.i41.epil to i64
  %i.cn = add i64 %.01213.i39.epil.init, %i.cm    ; 3 uses
  %i.co = icmp eq i64 %.014.i38.epil.init, %i.br
  br i1 %i.co, label %bb.t, label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46

bb.t:                                             ; preds = %.epil.preheader55
  %i.cp = load i32, ptr %i.bs, align 8, !tbaa !206
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = add i64 %i.cn, 65536
  %spec.select.i45.epil = select i1 %i.cq, i64 %i.cr, i64 %i.cn
  br label %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46

_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46: ; preds = %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa, %bb.t, %.epil.preheader55, %bb.n
  %.012.lcssa.i44 = phi i64 [ 0, %bb.n ], [ %.1.i42.1, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader55 ], [ %spec.select.i45.epil, %bb.t ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !208
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.012.lcssa.i44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !209
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %_ZN11duckdb_zstdL31ZSTD_countSeqStoreLiteralsBytesEPKNS_10seqStore_tE.exit46
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !196
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %2
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !196
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !198
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %2
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !198
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !197
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %2
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL28ZSTD_deriveBlockSplitsHelperEPNS_14seqStoreSplitsEmmPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tE(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 !guid !640 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 3736 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3816 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3896 ; 2 uses
  %i.e = sub i64 %2, %1
  %i.f = icmp ult i64 %i.e, 300
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %i.a, align 8, !tbaa !245
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %i.g = phi i64 [ %i.v, %tailrecurse ], [ %.pre, %.lr.ph.preheader ]
  %.tr4853 = phi i64 [ %i.h, %tailrecurse ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.in = add i64 %.tr4853, %2
  %i.h = lshr i64 %.in, 1                         ; 6 uses
  %i.i = icmp ugt i64 %i.g, 195
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.b, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %2)
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.c, ptr noundef %4, i64 noundef %.tr4853, i64 noundef %i.h)
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_deriveSeqStoreChunkEPNS_10seqStore_tEPKS0_mm(ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %i.h, i64 noundef %2)
  %i.j = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.b, ptr noundef %3) ; 2 uses
  %i.k = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.c, ptr noundef %3) ; 2 uses
  %i.l = tail call fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %i.d, ptr noundef %3) ; 2 uses
  %i.m = icmp ult i64 %i.j, -119
  %i.n = icmp ult i64 %i.k, -119
  %or.cond52 = and i1 %i.m, %i.n
  br i1 %or.cond52, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.l, -119
  %i.p = add i64 %i.l, %i.k
  %i.q = icmp ult i64 %i.p, %i.j
  %or.cond = and i1 %i.o, %i.q
  br i1 %or.cond, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %bb.c
  tail call fastcc void @_ZN11duckdb_zstdL28ZSTD_deriveBlockSplitsHelperEPNS_14seqStoreSplitsEmmPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tE(ptr noundef %0, i64 noundef %.tr4853, i64 noundef %i.h, ptr noundef nonnull %3, ptr noundef %4)
  %i.r = trunc i64 %i.h to i32
  %i.s = load ptr, ptr %0, align 8, !tbaa !244
  %i.t = load i64, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  store i32 %i.r, ptr %i.u, align 4, !tbaa !17
  %i.v = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !245
  %i.w = sub nsw i64 %2, %i.h
  %i.x = icmp ult i64 %i.w, 300
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 !guid !642 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = tail call noundef i64 @_ZN11duckdb_zstd27ZSTD_buildBlockEntropyStatsEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPNS_29ZSTD_entropyCTablesMetadata_tEPvm(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef %i.l, i64 noundef 8920) ; 2 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !208  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !209
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !197  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !196  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !195   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 11 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !95  ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !96  ; 15 uses
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !643 ; 2 uses
  %.not = icmp eq i32 %i.ak, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 255, ptr %i.d, align 4, !tbaa !17
  %i.al = icmp ugt i64 %i.u, 1023
  %i.am = select i1 %i.al, i64 4, i64 3
  %i.an = icmp ugt i64 %i.u, 16383
  %i.ao = zext i1 %i.an to i64
  %i.ap = icmp ult i64 %i.u, 256
  switch i32 %i.ak, label %bb.h [
    i32 0, label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.aq = call noundef i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.d, ptr noundef %i.p, i64 noundef %i.u, ptr noundef %i.aj, i64 noundef 8920)
  %i.ar = icmp ult i64 %i.aq, -119
  br i1 %i.ar, label %bb.e, label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr %i.d, align 4, !tbaa !17
  %i.at = call noundef i64 @_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj(ptr noundef %i.ai, ptr noundef %i.aj, i32 noundef %i.as) ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 5056
  %i.av = load i64, ptr %i.au, align 8, !tbaa !644
  %i.aw = add i64 %i.av, %i.at
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.aw, %bb.f ], [ %i.at, %bb.e ] ; 2 uses
  %i.ax = add i64 %.0.i.i, 6
  %spec.select.i.i = select i1 %i.ap, i64 %.0.i.i, i64 %i.ax
  %2 = add i64 %i.am, %spec.select.i.i
  %i.ay = add i64 %2, %i.ao
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.h:                                             ; preds = %bb.b
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i: ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.126.i.i = phi i64 [ 0, %bb.h ], [ 1, %bb.c ], [ %i.u, %bb.b ], [ %i.ay, %bb.g ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 2064
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 5064
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5068
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !645 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 31, ptr %i.c, align 4, !tbaa !17
  %i.be = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef %i.w, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bc, label %bb.j [
    i32 0, label %bb.i
    i32 1, label %.preheader.i.i.i
  ]

bb.i:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bg = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, ptr noundef %i.aj, i32 noundef %i.bf)
  br label %bb.l

bb.j:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bh = and i32 %i.bc, -2
  %or.cond.i.i.i = icmp eq i32 %i.bh, 2
  br i1 %or.cond.i.i.i, label %bb.k, label %.preheader.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bj = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.az, ptr noundef %i.aj, i32 noundef %i.bi)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bk = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.bk, label %.preheader.i.i.i, label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.l, %bb.j, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %.043.i.i.i = phi i64 [ %.0.i.i.i, %bb.l ], [ 0, %bb.j ], [ 0, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph.split.us.i.i.i
  %.139.us.i.i.i = phi i64 [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.043.i.i.i, %.preheader.i.i.i ]
  %.03338.us.i.i.i = phi ptr [ %i.bl, %.lr.ph.split.us.i.i.i ], [ %i.w, %.preheader.i.i.i ] ; 2 uses
  %.pn.in.us.i.i.i = load i8, ptr %.03338.us.i.i.i, align 1, !tbaa !205
  %.pn.us.i.i.i = zext i8 %.pn.in.us.i.i.i to i64
  %.2.us.i.i.i = add i64 %.139.us.i.i.i, %.pn.us.i.i.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03338.us.i.i.i, i64 1 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.bd
  br i1 %i.bm, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !641

bb.m:                                             ; preds = %bb.l
  %i.bn = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i64 [ %.043.i.i.i, %.preheader.i.i.i ], [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ]
  %i.bo = lshr i64 %.1.lcssa.i.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.m
  %.034.i.i.i = phi i64 [ %i.bn, %bb.m ], [ %i.bo, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.bp = load i32, ptr %i.ba, align 8, !tbaa !646 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4288
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 35, ptr %i.b, align 4, !tbaa !17
  %i.bs = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef %i.y, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bp, label %bb.o [
    i32 0, label %bb.n
    i32 1, label %.preheader.i27.i.i
  ]

bb.n:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bu = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.bt)
  br label %bb.q

bb.o:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bv = and i32 %i.bp, -2
  %or.cond.i35.i.i = icmp eq i32 %i.bv, 2
  br i1 %or.cond.i35.i.i, label %bb.p, label %.preheader.i27.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bx = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.bq, ptr noundef %i.aj, i32 noundef %i.bw)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0.i34.i.i = phi i64 [ %i.bu, %bb.n ], [ %i.bx, %bb.p ] ; 2 uses
  %i.by = icmp ult i64 %.0.i34.i.i, -119
  br i1 %i.by, label %.preheader.i27.i.i, label %bb.r

.preheader.i27.i.i:                               ; preds = %bb.q, %bb.o, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %.043.i28.i.i = phi i64 [ %.0.i34.i.i, %bb.q ], [ 0, %bb.o ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i29.i.i, label %._crit_edge.i31.i.i, label %.lr.ph.split.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bz = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

.lr.ph.split.i.i.i:                               ; preds = %.preheader.i27.i.i, %.lr.ph.split.i.i.i
  %.139.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.split.i.i.i ], [ %.043.i28.i.i, %.preheader.i27.i.i ]
  %.03338.i.i.i = phi ptr [ %i.cd, %.lr.ph.split.i.i.i ], [ %i.y, %.preheader.i27.i.i ] ; 2 uses
  %i.ca = load i8, ptr %.03338.i.i.i, align 1, !tbaa !205
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.cb
  %.pn.in.i.i.i = load i8, ptr %i.cc, align 1, !tbaa !205
  %.pn.i.i.i = zext i8 %.pn.in.i.i.i to i64
  %.2.i.i.i = add i64 %.139.i.i.i, %.pn.i.i.i     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.03338.i.i.i, i64 1 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.br
  br i1 %i.ce, label %.lr.ph.split.i.i.i, label %._crit_edge.i31.i.i, !llvm.loop !641

._crit_edge.i31.i.i:                              ; preds = %.lr.ph.split.i.i.i, %.preheader.i27.i.i
  %.1.lcssa.i32.i.i = phi i64 [ %.043.i28.i.i, %.preheader.i27.i.i ], [ %.2.i.i.i, %.lr.ph.split.i.i.i ]
  %i.cf = lshr i64 %.1.lcssa.i32.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i: ; preds = %._crit_edge.i31.i.i, %bb.r
  %.034.i33.i.i = phi i64 [ %i.bz, %bb.r ], [ %i.cf, %._crit_edge.i31.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 5072
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !226 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ai, i64 2836
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 52, ptr %i.a, align 4, !tbaa !17
  %i.ck = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef %i.aa, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.ch, label %bb.t [
    i32 0, label %bb.s
    i32 1, label %.preheader.i37.i.i
  ]

bb.s:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cm = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.cl)
  br label %bb.v

bb.t:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.cn = and i32 %i.ch, -2
  %or.cond.i51.i.i = icmp eq i32 %i.cn, 2
  br i1 %or.cond.i51.i.i, label %bb.u, label %.preheader.i37.i.i

bb.u:                                             ; preds = %bb.t
  %i.co = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cp = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.ci, ptr noundef %i.aj, i32 noundef %i.co)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i50.i.i = phi i64 [ %i.cm, %bb.s ], [ %i.cp, %bb.u ] ; 2 uses
  %i.cq = icmp ult i64 %.0.i50.i.i, -119
  br i1 %i.cq, label %.preheader.i37.i.i, label %bb.w

.preheader.i37.i.i:                               ; preds = %bb.v, %bb.t, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %.043.i38.i.i = phi i64 [ %.0.i50.i.i, %bb.v ], [ 0, %bb.t ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i ] ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i39.i.i, label %._crit_edge.i47.i.i, label %.lr.ph.split.i41.i.i

bb.w:                                             ; preds = %bb.v
  %i.cr = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

.lr.ph.split.i41.i.i:                             ; preds = %.preheader.i37.i.i, %.lr.ph.split.i41.i.i
  %.139.i42.i.i = phi i64 [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ], [ %.043.i38.i.i, %.preheader.i37.i.i ]
  %.03338.i43.i.i = phi ptr [ %i.cv, %.lr.ph.split.i41.i.i ], [ %i.aa, %.preheader.i37.i.i ] ; 2 uses
  %i.cs = load i8, ptr %.03338.i43.i.i, align 1, !tbaa !205
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.ct
  %.pn.in.i44.i.i = load i8, ptr %i.cu, align 1, !tbaa !205
  %.pn.i45.i.i = zext i8 %.pn.in.i44.i.i to i64
  %.2.i46.i.i = add i64 %.139.i42.i.i, %.pn.i45.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.03338.i43.i.i, i64 1 ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.cj
  br i1 %i.cw, label %.lr.ph.split.i41.i.i, label %._crit_edge.i47.i.i, !llvm.loop !641

._crit_edge.i47.i.i:                              ; preds = %.lr.ph.split.i41.i.i, %.preheader.i37.i.i
  %.1.lcssa.i48.i.i = phi i64 [ %.043.i38.i.i, %.preheader.i37.i.i ], [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ]
  %i.cx = lshr i64 %.1.lcssa.i48.i.i, 3
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit: ; preds = %bb.w, %._crit_edge.i47.i.i
  %.034.i49.i.i = phi i64 [ %i.cr, %bb.w ], [ %i.cx, %._crit_edge.i47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !647
  %i.da = icmp ugt i64 %i.ah, 32511
  %i.db = icmp samesign ugt i64 %i.ah, 127
  %i.dc = select i1 %i.db, i64 6, i64 5
  %i.dd = select i1 %i.da, i64 7, i64 %i.dc
  %i.de = add i64 %.126.i.i, %i.dd
  %i.df = add i64 %i.de, %.034.i.i.i
  %i.dg = add i64 %i.df, %.034.i33.i.i
end_hunk_0
