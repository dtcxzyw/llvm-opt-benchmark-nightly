inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@show_usage_part:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %2, align 1, !tbaa !11
  %i.u = icmp eq i8 %i.t, 44                      ; 3 uses
  %spec.select77 = zext i1 %i.u to i32
  %9 = zext i1 %i.u to i64
  %i.v = getelementptr i8, ptr %2, i64 %9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp eq i8 %i.w, 32
  %i.y = select i1 %i.u, i32 2, i32 1
  %.1 = select i1 %i.x, i32 %i.y, i32 %spec.select77 ; 2 uses
  %i.z = sub i32 %3, %.1
  %i.aa = zext nneg i32 %.1 to i64
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
end_hunk_0
begin_hunk_1_@ruby_process_options:bb.a
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.tail.thread.i352.i
  %.val73.i.i = load i16, ptr %i.ns, align 8      ; 2 uses
  %5 = lshr i16 %.val73.i.i, 8
  %6 = trunc nuw i16 %5 to i8
  %spec.select.i.i354.i = and i8 %6, 1
  %i.qy = trunc i16 %.val73.i.i to i8             ; 3 uses
  %7 = lshr i8 %i.qy, 5
  %8 = and i8 %7, 4
  %.1.i.i.i = or disjoint i8 %spec.select.i.i354.i, %8
  %i.qz = lshr i8 %i.qy, 2
  %9 = and i8 %i.qz, 24
  %.3.i.i.i = or disjoint i8 %.1.i.i.i, %9        ; 2 uses
  %10 = shl i8 %i.qy, 3
  %11 = and i8 %10, 32
  %.4.i.i.i = or disjoint i8 %.3.i.i.i, %11       ; 2 uses
  br i1 %i.qv, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
end_hunk_1
begin_hunk_2_@ruby_process_options:bb.a
  br label %.thread.sink.split.i.i

bb.eu:                                            ; preds = %bb.eg
  %i.ss = or disjoint i8 %.3.i.i.i, 2
  call void @pm_options_command_line_set(ptr noundef nonnull %i.qn, i8 noundef zeroext %i.ss) #24
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 984
end_hunk_2
begin_hunk_3_@prism_script_shebang_callback:bb.a
  %.not32 = icmp eq i64 %i.l, 0
  tail call fastcc void @moreswitches(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i32 noundef 0)
  tail call void @free(ptr noundef %i.e) #24
  %.val = load i16, ptr %i.a, align 8             ; 2 uses
  %4 = lshr i16 %.val, 8
  %5 = trunc nuw i16 %4 to i8
  %spec.select.i = and i8 %5, 1
  %i.m = trunc i16 %.val to i8                    ; 3 uses
  %6 = lshr i8 %i.m, 5
  %7 = and i8 %6, 4
  %.1.i = or disjoint i8 %spec.select.i, %7
  %i.n = lshr i8 %i.m, 2
  %8 = and i8 %i.n, 24
  %.3.i = or disjoint i8 %.1.i, %8
  %9 = shl i8 %i.m, 3
  %10 = and i8 %9, 32
  %.4.i = or disjoint i8 %.3.i, %10
  tail call void @pm_options_command_line_set(ptr noundef %0, i8 noundef zeroext %.4.i) #24
  br i1 %.not, label %bb.c, label %bb.i

end_hunk_3
