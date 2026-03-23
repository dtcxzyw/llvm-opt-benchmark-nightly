begin_hunk_0
  br i1 %95, label %35, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %91, %73, %mz_zip_reader_goto_next_entry.exit, %68
  %.268 = phi i32 [ %.0.i90, %91 ], [ %94, %mz_zip_reader_goto_next_entry.exit ], [ %69, %68 ], [ %75, %73 ]
  %.268.fr = freeze i32 %.268                     ; 2 uses
  %96 = icmp eq i32 %.268.fr, -100
  %spec.select133 = select i1 %96, i32 0, i32 %.268.fr
  br label %.loopexit

.loopexit:                                        ; preds = %77, %48, %45, %35, %._crit_edge, %30
end_hunk_0
begin_hunk_1
  store i8 0, ptr %14, align 1, !tbaa !50
  %15 = call i32 @mz_path_remove_filename(ptr noundef nonnull %8) #19
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %.fr91 = freeze i64 %16
  %17 = getelementptr i8, ptr %8, i64 %.fr91
  %18 = getelementptr i8, ptr %17, i64 1
  br label %49

19:                                               ; preds = %10, %5
end_hunk_1
begin_hunk_2
  %52 = phi ptr [ %67, %.backedge.us.us.us.us ], [ %51, %.outer.us.us ] ; 4 uses
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 19 ; 2 uses
  %54 = load i8, ptr %53, align 1
  %.not98 = icmp eq i8 %54, 46
  br i1 %.not98, label %.tail.us.us.us.us, label %.tail74.us.us.us.us.thread

.tail.us.us.us.us:                                ; preds = %sub_0.us.us.us.us
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 20
end_hunk_2
begin_hunk_3
sub_176.us.us.us.us:                              ; preds = %.tail.us.us.us.us
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 20
  %59 = load i8, ptr %58, align 1
  %.not100 = icmp eq i8 %59, 46
  br i1 %.not100, label %.tail74.us.us.us.us, label %.tail74.us.us.us.us.thread

.tail74.us.us.us.us:                              ; preds = %sub_176.us.us.us.us
  %60 = getelementptr inbounds nuw i8, ptr %52, i64 21
end_hunk_3
begin_hunk_4
  %70 = phi ptr [ %85, %.backedge.us.us ], [ %69, %.outer.us ] ; 5 uses
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 19
  %72 = load i8, ptr %71, align 1
  %.not95 = icmp eq i8 %72, 46
  br i1 %.not95, label %.tail.us.us, label %.split.us.us.split

.tail.us.us:                                      ; preds = %sub_0.us.us
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 20
end_hunk_4
begin_hunk_5
sub_176.us.us:                                    ; preds = %.tail.us.us
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 20
  %77 = load i8, ptr %76, align 1
  %.not97 = icmp eq i8 %77, 46
  br i1 %.not97, label %.tail74.us.us, label %.split.us.us.split

.tail74.us.us:                                    ; preds = %sub_176.us.us
  %78 = getelementptr inbounds nuw i8, ptr %70, i64 21
end_hunk_5
begin_hunk_6
  %87 = phi ptr [ %98, %.backedge ], [ %86, %.outer ] ; 4 uses
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 19 ; 3 uses
  %89 = load i8, ptr %88, align 1
  %.not92 = icmp eq i8 %89, 46
  br i1 %.not92, label %.tail, label %.tail74.thread

.tail:                                            ; preds = %sub_0
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 20
end_hunk_6
begin_hunk_7
sub_176:                                          ; preds = %.tail
  %93 = getelementptr inbounds nuw i8, ptr %87, i64 20
  %94 = load i8, ptr %93, align 1
  %.not94 = icmp eq i8 %94, 46
  br i1 %.not94, label %.tail74, label %.tail74.thread

.tail74:                                          ; preds = %sub_176
  %95 = getelementptr inbounds nuw i8, ptr %87, i64 21
end_hunk_7
