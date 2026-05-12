inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !220
  %i.ag = trunc nuw nsw i32 %i.s to i8
  %1 = xor i8 %i.ag, 31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %1, ptr %i.ah, align 1, !tbaa !220
  %i.ai = icmp ugt i16 %i.u, 127
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd17ZSTD_loadCEntropyEPNS_27ZSTD_compressedBlockState_tEPvPKvm:bb.a
  %i.cn = trunc nuw i64 %i.cl to i32
  %i.co = add nuw i32 %i.cn, 131072
  %i.cp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %4 = xor i32 %i.cp, 31
  %.078 = select i1 %i.cm, i32 %4, i32 31         ; 3 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !3
  %i.cr = icmp ult i32 %i.cq, %.078
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a

bb.i:                                             ; preds = %.critedge3
  %i.as = icmp eq i32 %i.ap, 0                    ; 5 uses
  %8 = zext i1 %i.as to i32
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !236 ; 6 uses
  %i.au = add i32 %i.at, 3                        ; 3 uses
  %i.av = icmp ne i32 %i.at, %i.aj
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %9 = xor i32 %8, 3
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.n:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  br i1 %i.bb, label %.sink.split.i, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread: ; preds = %bb.n, %bb.i, %bb.m, %bb.k, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit
  %.0.i142 = phi i32 [ %i.au, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ], [ %i.ax, %bb.k ], [ 1, %bb.i ], [ %9, %bb.m ], [ 3, %bb.n ] ; 3 uses
  %not. = xor i1 %i.as, true
  %i.bc = sext i1 %not. to i32
  %i.bd = add nsw i32 %.0.i142, %i.bc             ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  %.1119 = phi i32 [ 0, %bb.h ], [ %.0118237, %.thread ]
  %.3127 = sub i32 %.0124236, %.pn                ; 2 uses
  %i.ba = icmp eq i32 %.1138, 0                   ; 5 uses
  %8 = zext i1 %i.ba to i32
  %i.bb = add i32 %.sroa.0.0.copyload, 3          ; 3 uses
  %i.bc = icmp ne i32 %.sroa.0.0.copyload, %i.ai
  %or.cond208.not = select i1 %i.ba, i1 true, i1 %i.bc
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %9 = xor i32 %8, 3
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.r:                                             ; preds = %bb.p
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  br i1 %i.bi, label %.sink.split.i, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread: ; preds = %bb.r, %bb.m, %bb.q, %bb.o, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit
  %.0.i184 = phi i32 [ %i.bb, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ], [ %i.be, %bb.o ], [ 1, %bb.m ], [ %9, %bb.q ], [ 3, %bb.r ] ; 3 uses
  %not. = xor i1 %i.ba, true
  %i.bj = sext i1 %not. to i32
  %i.bk = add nsw i32 %.0.i184, %i.bj             ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !220
  %i.am = trunc nuw nsw i32 %i.y to i8
  %11 = xor i8 %i.am, 31
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  store i8 %11, ptr %i.an, align 1, !tbaa !220
  %i.ao = icmp ugt i16 %i.aa, 127
end_hunk_8
