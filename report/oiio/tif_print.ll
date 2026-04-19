inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@TIFFPrintDirectory:bb.a
  br label %bb.bm

bb.bm:                                            ; preds = %.peel.next501, %bb.bn
  %strchr.peel.pn = phi ptr [ %strchr.peel, %.peel.next501 ], [ %strchr, %bb.bn ]
  %.0360455 = phi i16 [ %i.fe, %.peel.next501 ], [ %i.fo, %bb.bn ]
  %.0358456 = getelementptr inbounds nuw i8, ptr %strchr.peel.pn, i64 1 ; 5 uses
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 2 uses
  %i.fg = load i32, ptr %i.ez, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@TIFFPrintDirectory:bb.a
  tail call fastcc void @_TIFFprintAsciiBounded(ptr noundef %1, ptr noundef nonnull %.0358456, i64 noundef %i.fm)
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.0358456)
  %strchr = getelementptr inbounds i8, ptr %.0358456, i64 %strlen
  %i.fo = add i16 %.0360455, -1                   ; 2 uses
  %.not393 = icmp eq i16 %i.fo, 0
  br i1 %.not393, label %.critedge, label %bb.bm, !llvm.loop !54

end_hunk_1
