inline.NumInlined: 135
inline.NumDeleted: 17
begin_hunk_0_@LZ4F_compressUpdateImpl:bb.a
  %i.ar = add i64 %i.ab, %i.aj
  %i.as = add i64 %i.ar, %i.aq
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ult i64 %2, %i.at
  br i1 %i.au, label %bb.at, label %7

7:                                                ; preds = %LZ4F_compressBound_internal.exit
  %.not141 = icmp ne i32 %6, 0
  %8 = icmp ult i64 %2, %4
  %or.cond148 = and i1 %8, %.not141
  br i1 %or.cond148, label %bb.at, label %bb.g

bb.g:                                             ; preds = %7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68
  %.not142 = icmp eq i32 %i.aw, %6
end_hunk_0
begin_hunk_1_@LZ4F_compressUpdateImpl:bb.a
  %i.gd = sub i64 %i.gb, %i.gc
  br label %bb.at

bb.at:                                            ; preds = %7, %LZ4F_compressBound_internal.exit, %LZ4F_selectCompression.exit, %bb.as
  %.0 = phi i64 [ %i.gd, %bb.as ], [ -20, %LZ4F_selectCompression.exit ], [ -11, %LZ4F_compressBound_internal.exit ], [ -11, %7 ]
  ret i64 %.0
}

end_hunk_1
