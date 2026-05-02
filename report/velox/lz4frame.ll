inline.NumInlined: 135
inline.NumDeleted: 17
begin_hunk_0_@LZ4F_compressUpdateImpl:bb.a
  %i.ar = add i64 %i.ab, %i.aj
  %i.as = add i64 %i.ar, %i.aq
  %i.at = add i64 %i.as, %i.ao
  %7 = icmp ult i64 %2, %i.at
  %.not141 = trunc nuw i32 %6 to i1
  %i.au = icmp ult i64 %2, %4
  %or.cond148 = and i1 %i.au, %.not141
  %or.cond167 = select i1 %7, i1 true, i1 %or.cond148
  br i1 %or.cond167, label %bb.at, label %bb.g

bb.g:                                             ; preds = %LZ4F_compressBound_internal.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68
  %.not142 = icmp eq i32 %i.aw, %6
end_hunk_0
begin_hunk_1_@LZ4F_compressUpdateImpl:bb.a
  %i.gd = sub i64 %i.gb, %i.gc
  br label %bb.at

bb.at:                                            ; preds = %LZ4F_compressBound_internal.exit, %LZ4F_selectCompression.exit, %bb.as
  %.0 = phi i64 [ %i.gd, %bb.as ], [ -20, %LZ4F_selectCompression.exit ], [ -11, %LZ4F_compressBound_internal.exit ]
  ret i64 %.0
}

end_hunk_1
