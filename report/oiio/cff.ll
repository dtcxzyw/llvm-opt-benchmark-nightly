inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_font_load:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %9 = icmp ne i8 %6, 0                           ; 3 uses
  %i.bz = select i1 %9, i32 12288, i32 4096
  %i.ca = call fastcc i32 @cff_subfont_load(ptr noundef nonnull %i.d, ptr noundef nonnull %i.by, i32 noundef %.0161, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.bz, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@cff_font_load:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 1868 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !126
  %i.cj = icmp ne i32 %i.ci, 65535
  %or.cond5 = or i1 %9, %i.cj
  br i1 %or.cond5, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2_@cff_font_load:bb.a

bb.bb:                                            ; preds = %bb.ba
  %i.em = load i32, ptr %i.ch, align 4, !tbaa !126
  %10 = icmp ne i32 %i.em, 65535
  %11 = icmp ne i8 %5, 0
  %12 = and i1 %11, %10
  %13 = zext i1 %12 to i8
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !586
  %i.eq = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.en, i32 noundef %i.el, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.ep, i8 noundef zeroext %13) ; 2 uses
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !3
  %.not196.a = icmp eq i32 %i.eq, 0
  br i1 %.not196.a, label %bb.bc, label %.thread
end_hunk_2
