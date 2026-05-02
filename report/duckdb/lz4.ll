inline.NumInlined: 117
inline.NumDeleted: 34
begin_hunk_0_@_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi:bb.a
  %.0.i.i = phi i32 [ %i.bi, %bb.o ], [ %i.bq, %bb.p ]
  %i.bs = shl i32 %10, 6
  %i.bt = icmp eq i32 %7, 2                       ; 2 uses
  %.not502.i = trunc nuw i32 %9 to i1
  %.not503.i = icmp ne i32 %7, 3
  %i.bu = icmp eq i32 %6, 1
  %i.bv = ptrtoint ptr %i.ab to i64
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446 = trunc nuw i32 %4 to i1
  %i.hi = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hj = icmp ugt ptr %i.hi, %i.e                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = trunc nuw i32 %4 to i1
  %i.kt = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ku = icmp ugt ptr %i.je, %i.kt               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.ku, i1 false
end_hunk_2
