inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@_PyUnicode_DecodeRawUnicodeEscapeStateful:bb.a
  br label %PyUnicode_WRITE.exit.thread157, !llvm.loop !511

bb.ag:                                            ; preds = %bb.s, %bb.t
  %.not76.3 = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %.055 = phi i64 [ 8, %bb.t ], [ 4, %bb.s ]
  %.0 = phi ptr [ @.str.87, %bb.t ], [ @.str.86, %bb.s ] ; 2 uses
  %i.cg = getelementptr i8, ptr %i.aa, i64 %.055
  %scevgep127 = getelementptr i8, ptr %i.cg, i64 2 ; 2 uses
end_hunk_0
