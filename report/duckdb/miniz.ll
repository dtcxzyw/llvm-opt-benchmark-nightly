inline.NumInlined: 93
inline.NumDeleted: 15
begin_hunk_0_@_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi:bb.a
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.1111.i = phi ptr [ %i.ako, %bb.eo ], [ %.0110142.i, %bb.en ] ; 5 uses
  %.1.i = phi i32 [ %i.akr, %bb.eo ], [ %.0143.i, %bb.en ] ; 2 uses
  %i.aks = and i32 %.1.i, 1
  %.not.i4 = icmp eq i32 %i.aks, 0
  br i1 %.not.i4, label %bb.ez, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %2 = load i8, ptr %.1111.i, align 1, !tbaa !7   ; 2 uses
  %i.akt = zext i8 %2 to i32
  %i.aku = getelementptr inbounds nuw i8, ptr %.1111.i, i64 1
  %i.akv = load i16, ptr %i.aku, align 1          ; 4 uses
  %i.akw = zext i16 %i.akv to i32
  %i.akx = lshr i16 %i.akv, 8
  %i.aky = zext nneg i16 %i.akx to i64            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.1111.i, i64 3 ; 2 uses
  %i.akz = zext i8 %2 to i64                      ; 2 uses
  %i.ala = getelementptr inbounds nuw [2 x i8], ptr @_ZN12duckdb_minizL15s_tdefl_len_symE, i64 %i.akz
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !118
end_hunk_0
begin_hunk_1_@_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi:bb.a
  br i1 %i.aov, label %.lr.ph139.i, label %.loopexit.i6, !llvm.loop !346

bb.ez:                                            ; preds = %bb.ep
  %4 = getelementptr inbounds nuw i8, ptr %.1111.i, i64 1 ; 2 uses
  %5 = load i8, ptr %.1111.i, align 1, !tbaa !7
  %i.aow = zext i8 %5 to i64                      ; 2 uses
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.akd, i64 %i.aow
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !118
  %i.aoz = zext i16 %i.aoy to i32
end_hunk_1
begin_hunk_2_@_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi:bb.a
.loopexit.i6:                                     ; preds = %bb.ey, %bb.fb, %bb.ez, %._crit_edge136.i
  %i.apt = phi i32 [ %i.ape, %bb.ez ], [ %i.aoh, %._crit_edge136.i ], [ %i.apq, %bb.fb ], [ %i.aot, %bb.ey ] ; 2 uses
  %i.apu = phi i32 [ %i.apf, %bb.ez ], [ %i.aoi, %._crit_edge136.i ], [ %i.apr, %bb.fb ], [ %i.aou, %bb.ey ] ; 2 uses
  %.2.i = phi ptr [ %4, %bb.ez ], [ %3, %._crit_edge136.i ], [ %4, %bb.fb ], [ %3, %bb.ey ] ; 2 uses
  %i.apv = lshr i32 %.1.i, 1
  %i.apw = load ptr, ptr %i.aka, align 8, !tbaa !34
  %i.apx = icmp ult ptr %.2.i, %i.apw
end_hunk_2
