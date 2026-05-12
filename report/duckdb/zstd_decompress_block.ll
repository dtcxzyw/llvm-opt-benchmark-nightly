inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@_ZN11duckdb_zstd18ZSTD_buildFSETableEPNS_14ZSTD_seqSymbolEPKsjPKjPKhjPvmi:bb.a

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.i.loopexit17
  %wide.trip.count57.i.pre-phi = phi i64 [ %.pre, %.loopexit.i.loopexit17 ], [ %i.at, %.preheader.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.loopexit.i
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd18ZSTD_buildFSETableEPNS_14ZSTD_seqSymbolEPKsjPKjPKhjPvmi:bb.a
  store i16 %i.dj, ptr %i.dh, align 2, !tbaa !7
  %i.dk = zext i16 %i.di to i32                   ; 2 uses
  %i.dl = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dk, i1 true)
  %9 = xor i32 %i.dl, 31
  %10 = sub i32 %5, %9                            ; 2 uses
  %i.dm = trunc i32 %10 to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !64
  %i.do = and i32 %10, 255
  %i.dp = shl i32 %i.dk, %i.do
  %i.dq = sub i32 %i.dp, %i.c
  %i.dr = trunc i32 %i.dq to i16
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL28ZSTD_buildFSETable_body_bmi2EPNS_14ZSTD_seqSymbolEPKsjPKjPKhjPvm:bb.a
  br i1 %exitcond45.not, label %.loopexit, label %bb.k, !llvm.loop !63

.loopexit:                                        ; preds = %._crit_edge17, %.preheader
  %wide.trip.count57 = zext i32 %i.c to i64
  br label %bb.p

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL28ZSTD_buildFSETable_body_bmi2EPNS_14ZSTD_seqSymbolEPKsjPKjPKhjPvm:bb.a
  store i16 %i.dn, ptr %i.dl, align 2, !tbaa !7
  %i.do = zext i16 %i.dm to i32                   ; 2 uses
  %i.dp = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.do, i1 true)
  %7 = xor i32 %i.dp, 31
  %8 = sub i32 %5, %7                             ; 2 uses
  %i.dq = trunc i32 %8 to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !64
  %i.ds = and i32 %8, 255
  %i.dt = shl i32 %i.do, %i.ds
  %i.du = sub i32 %i.dt, %i.c
  %i.dv = trunc i32 %i.du to i16
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.i
  %i.cn = trunc nuw nsw i64 %i.ar to i32
  %i.co = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cn, i1 true)
  %14 = xor i32 %i.co, 31
  %15 = sub nuw nsw i32 8, %14
  %i.cp = icmp ult i64 %4, -119
  br i1 %i.cp, label %bb.r, label %.thread620.i

bb.r:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568.i
  %i.cq = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568.i ], [ %.ptr823.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %.idx.i = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568.i ], [ %.add.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 4 uses
  %i.cr = phi i32 [ %i.cm, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568.i ], [ %15, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %i.cs = phi i64 [ %i.ce, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568.i ], [ %.val.i.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.f
  %i.cd = trunc nuw nsw i64 %i.ah to i32
  %i.ce = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cd, i1 true)
  %10 = xor i32 %i.ce, 31
  %11 = sub nuw nsw i32 8, %10
  %i.cf = icmp ult i64 %4, -119
  br i1 %i.cf, label %bb.o, label %.thread236.i

bb.o:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179.i
  %i.cg = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179.i ], [ %.ptr382.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %.idx.i = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179.i ], [ %.add.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 4 uses
  %i.ch = phi i32 [ %i.cc, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179.i ], [ %11, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %i.ci = phi i64 [ %i.bu, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179.i ], [ %.val.i.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL24ZSTD_decompressSequencesEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.i
  %i.ck = trunc nuw nsw i64 %i.ao to i32
  %i.cl = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ck, i1 true)
  %8 = xor i32 %i.cl, 31
  %9 = sub nuw nsw i32 8, %8
  %i.cm = icmp ult i64 %4, -119
  br i1 %i.cm, label %bb.r, label %.thread85.i

bb.r:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75.i
  %i.cn = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75.i ], [ %.ptr146.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %.idx.i = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75.i ], [ %.add.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 4 uses
  %i.co = phi i32 [ %i.cj, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75.i ], [ %9, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ]
  %i.cp = phi i64 [ %i.cb, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75.i ], [ %.val.i.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ] ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit: ; preds = %bb.g
  %i.cl = trunc nuw nsw i64 %i.ap to i32
  %i.cm = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cl, i1 true)
  %14 = xor i32 %i.cm, 31
  %15 = sub nuw nsw i32 8, %14
  %i.cn = icmp ult i64 %4, -119
  br i1 %i.cn, label %bb.p, label %.thread620

bb.p:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %i.co = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568 ], [ %.ptr823, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %.idx = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568 ], [ %.add, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 4 uses
  %i.cp = phi i32 [ %i.ck, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568 ], [ %15, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %i.cq = phi i64 [ %i.cc, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread568 ], [ %.val.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit: ; preds = %bb.d
  %i.cb = trunc nuw nsw i64 %i.af to i32
  %i.cc = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cb, i1 true)
  %10 = xor i32 %i.cc, 31
  %11 = sub nuw nsw i32 8, %10
  %i.cd = icmp ult i64 %4, -119
  br i1 %i.cd, label %bb.m, label %.thread236

bb.m:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %i.ce = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179 ], [ %.ptr382, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %.idx = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179 ], [ %.add, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 4 uses
  %i.cf = phi i32 [ %i.ca, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179 ], [ %11, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %i.cg = phi i64 [ %i.bs, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread179 ], [ %.val.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL29ZSTD_decompressSequences_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit: ; preds = %bb.g
  %i.ci = trunc nuw nsw i64 %i.am to i32
  %i.cj = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ci, i1 true)
  %8 = xor i32 %i.cj, 31
  %9 = sub nuw nsw i32 8, %8
  %i.ck = icmp ult i64 %4, -119
  br i1 %i.ck, label %bb.p, label %.thread85

bb.p:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %i.cl = phi ptr [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75 ], [ %.ptr146, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %.idx = phi i64 [ 0, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75 ], [ %.add, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 4 uses
  %i.cm = phi i32 [ %i.ch, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75 ], [ %9, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ]
  %i.cn = phi i64 [ %i.bz, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread75 ], [ %.val.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ] ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
end_hunk_9
