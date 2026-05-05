inline.NumInlined: 971
inline.NumDeleted: 313
begin_hunk_0_@_ZN10duckdb_re222MaybeParsePerlCCEscapeEPNS_11StringPieceENS_6Regexp10ParseFlagsE:bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr @_ZN10duckdb_re211perl_groupsE, i64 %indvars.iv.i.i ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !190  ; 4 uses
end_hunk_0
