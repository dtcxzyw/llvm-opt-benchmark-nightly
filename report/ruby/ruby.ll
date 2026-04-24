inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@show_usage_part:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %2, align 1, !tbaa !11
  %i.u = icmp eq i8 %i.t, 44                      ; 3 uses
  %spec.select77 = zext i1 %i.u to i64
  %spec.select78 = zext i1 %i.u to i32
  %i.v = getelementptr i8, ptr %2, i64 %spec.select77
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp eq i8 %i.w, 32
  %i.y = select i1 %i.u, i32 2, i32 1
  %.1 = select i1 %i.x, i32 %i.y, i32 %spec.select78 ; 2 uses
  %i.z = sub i32 %3, %.1
  %i.aa = zext nneg i32 %.1 to i64
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
end_hunk_0
begin_hunk_1_@ruby_process_options:bb.a
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.tail.thread.i352.i
  %.val73.i.i = load i16, ptr %i.ns, align 8      ; 3 uses
  %5 = and i16 %.val73.i.i, 256                   ; 2 uses
  %.not.not.i.i.i = icmp eq i16 %5, 0
  %spec.select.i.i354.i = select i1 %.not.not.i.i.i, i8 4, i8 5
  %.lobit.i.i.i = lshr exact i16 %5, 8
  %i.qy = trunc nuw nsw i16 %.lobit.i.i.i to i8
  %6 = and i16 %.val73.i.i, 128
  %.not10.i.i.i = icmp eq i16 %6, 0
  %.1.i.i.i = select i1 %.not10.i.i.i, i8 %i.qy, i8 %spec.select.i.i354.i
  %7 = trunc i16 %.val73.i.i to i8                ; 2 uses
  %i.qz = lshr i8 %7, 2
  %8 = shl i8 %7, 3
  %9 = and i8 %8, 32
  %.2.i.i.i = and i8 %i.qz, 24
  %.3.i.i.i = or disjoint i8 %.2.i.i.i, %9
  %.4.i.i.i = or disjoint i8 %.3.i.i.i, %.1.i.i.i ; 3 uses
  br i1 %i.qv, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
end_hunk_1
begin_hunk_2_@ruby_process_options:bb.a
  br label %.thread.sink.split.i.i

bb.eu:                                            ; preds = %bb.eg
  %10 = and i8 %.4.i.i.i, 29
  %i.ss = or disjoint i8 %10, 2
  call void @pm_options_command_line_set(ptr noundef nonnull %i.qn, i8 noundef zeroext %i.ss) #24
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 984
end_hunk_2
begin_hunk_3_@prism_script_shebang_callback:bb.a
  %.not32 = icmp eq i64 %i.l, 0
  tail call fastcc void @moreswitches(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i32 noundef 0)
  tail call void @free(ptr noundef %i.e) #24
  %.val = load i16, ptr %i.a, align 8             ; 3 uses
  %4 = and i16 %.val, 256                         ; 2 uses
  %.not.not.i = icmp eq i16 %4, 0
  %spec.select.i = select i1 %.not.not.i, i8 4, i8 5
  %.lobit.i = lshr exact i16 %4, 8
  %i.m = trunc nuw nsw i16 %.lobit.i to i8
  %5 = and i16 %.val, 128
  %.not10.i = icmp eq i16 %5, 0
  %.1.i = select i1 %.not10.i, i8 %i.m, i8 %spec.select.i
  %6 = trunc i16 %.val to i8                      ; 2 uses
  %i.n = lshr i8 %6, 2
  %7 = shl i8 %6, 3
  %8 = and i8 %7, 32
  %.2.i = and i8 %i.n, 24
  %.3.i = or disjoint i8 %.2.i, %8
  %.4.i = or disjoint i8 %.3.i, %.1.i
  tail call void @pm_options_command_line_set(ptr noundef %0, i8 noundef zeroext %.4.i) #24
  br i1 %.not, label %bb.c, label %bb.i

end_hunk_3
