inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@ZSTD_estimateCCtxSize_usingCCtxParams_internal:bb.a
ZSTD_allocateChainTable.exit.thread.i:            ; preds = %ZSTD_allocateChainTable.exit.thread32.i, %ZSTD_allocateChainTable.exit.i, %.thread
  %i.r = phi i64 [ %i.q, %ZSTD_allocateChainTable.exit.thread32.i ], [ 0, %ZSTD_allocateChainTable.exit.i ], [ 0, %.thread ]
  %i.s = icmp eq i32 %i.h, 3                      ; 2 uses
  %11 = trunc nuw i32 %7 to i1
  %12 = select i1 %i.s, i1 true, i1 %11
  %i.t = select i1 %12, i64 3, i64 4
  %i.u = udiv i64 %i.f, %i.t                      ; 2 uses
  %i.v = shl i64 %i.u, 3
end_hunk_0
begin_hunk_1_@ZSTD_selectBlockCompressor:bb.a
  %i.a = add i32 %0, -6
  %i.b = icmp ult i32 %i.a, -3
  %i.c = icmp ne i32 %1, 1
  %.not8 = or i1 %i.c, %i.b
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.d
  %i.f = zext nneg i32 %0 to i64
end_hunk_1
begin_hunk_2_@ZSTD_compressContinue_internal:bb.a
  br i1 %i.c, label %ZSTD_compress_frameChunk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = trunc nuw i32 %5 to i1                  ; 2 uses
  %i.d = icmp eq i32 %i.b, 1
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@ZSTD_compressContinue_internal:bb.a
  br i1 %.not138.i, label %bb.cg, label %bb.u, !llvm.loop !259

bb.cg:                                            ; preds = %ZSTD_compressBlock_targetCBlockSize.exit.i
  %.not139.i = trunc nuw i32 %6 to i1
  %i.nv = icmp ugt ptr %i.nt, %.065
  %or.cond.i89 = select i1 %.not139.i, i1 %i.nv, i1 false
  br i1 %or.cond.i89, label %bb.ch, label %bb.ci
end_hunk_3
begin_hunk_4_@ZSTD_compressBegin_internal:bb.a
  %i.in = add i32 %i.il, -6
  %i.io = icmp ult i32 %i.in, -3
  %i.ip = icmp ne i32 %i.im, 1
  %.not75.i.i = or i1 %i.ip, %i.io
  br i1 %.not75.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %ZSTD_copyCDictTableIntoCCtx.exit69.i.i
end_hunk_4
begin_hunk_5_@ZSTD_copySequencesToSeqStoreExplicitBlockDelim:bb.a
  %i.cd = icmp ne ptr %.val, null
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !359
  %i.cf = icmp eq i32 %i.ce, 3
  %8 = select i1 %i.cf, i1 true, i1 %i.cd
  %i.cg = select i1 %8, i64 3, i64 4
  %i.ch = zext i32 %i.am to i64
  %.not154 = icmp samesign ugt i64 %i.cg, %i.ch
end_hunk_5
begin_hunk_6_@ZSTD_copySequencesToSeqStoreNoBlockDelim:bb.a
  %i.ck = icmp ne ptr %.val, null
  %i.cl = load i32, ptr %i.r, align 4, !tbaa !359
  %i.cm = icmp eq i32 %i.cl, 3
  %8 = select i1 %i.cm, i1 true, i1 %i.ck
  %i.cn = select i1 %8, i64 3, i64 4
  %i.co = zext i32 %.2136 to i64
  %.not212 = icmp samesign ugt i64 %i.cn, %i.co
end_hunk_6
begin_hunk_7_@ZSTD_resetCCtx_internal:bb.a
  %.val198 = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.r = icmp ne ptr %.val198, null
  %i.s = icmp eq i32 %i.p, 3
  %6 = select i1 %i.s, i1 true, i1 %i.r
  %i.t = select i1 %6, i64 3, i64 4               ; 4 uses
  %i.u = udiv i64 %.189, %i.t                     ; 5 uses
  %i.v = icmp eq i32 %5, 1
end_hunk_7
begin_hunk_8_@ZSTD_reset_matchState:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !413
  %i.e = icmp eq i32 %i.d, 0
  %7 = trunc nuw i32 %6 to i1                     ; 4 uses
  %.not153 = or i1 %i.e, %7
  br i1 %.not153, label %bb.b, label %ZSTD_allocateChainTable.exit.thread148

bb.b:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@ZSTD_overflowCorrectIfNeeded:bb.a
  %i.bh = add i32 %i.bc, -3
  %i.bi = icmp ult i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.be, 1
  %.not8.i.not.i = and i1 %i.bj, %i.bi
  br i1 %.not8.i.not.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.thread21.i

ZSTD_allocateChainTable.exit.thread21.i:          ; preds = %ZSTD_allocateChainTable.exit.i, %bb.b
end_hunk_9
begin_hunk_10_@ZSTD_buildSeqStore:bb.a
  %i.fk = add i32 %i.fh, -6
  %i.fl = icmp ult i32 %i.fk, -3
  %i.fm = icmp ne i32 %i.fj, 1
  %.not8.i = or i1 %i.fm, %i.fl
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.fo = zext nneg i32 %i.fh to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fn, i64 %i.fo
end_hunk_10
begin_hunk_11_@ZSTD_buildSeqStore:bb.a
  %i.gc = add i32 %i.fz, -6
  %i.gd = icmp ult i32 %i.gc, -3
  %i.ge = icmp ne i32 %i.gb, 1
  %.not8.i148 = or i1 %i.ge, %i.gd
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.gg = zext nneg i32 %i.fz to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg
end_hunk_11
begin_hunk_12_@ZSTD_loadDictionaryContent:bb.a
  %i.f = and i1 %i.e, %i.d                        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !73  ; 3 uses
  %i.h = add i32 %.val, -3
  %narrow.i = icmp ult i32 %i.h, -2
  %or.cond.not119 = icmp eq i32 %7, 0
  %or.cond.not = or i1 %or.cond.not119, %narrow.i ; 2 uses
  %spec.select.neg = select i1 %or.cond.not, i64 -3758096382, i64 -16777214
  %spec.select = select i1 %or.cond.not, i64 3758096382, i64 16777214 ; 2 uses
  %i.i = icmp ugt i64 %5, %spec.select
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %spec.select.neg
  %.093 = tail call i64 @llvm.umin.i64(i64 %5, i64 %spec.select) ; 4 uses
end_hunk_12
