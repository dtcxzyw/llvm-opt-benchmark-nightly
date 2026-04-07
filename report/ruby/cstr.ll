begin_hunk_0_@bug_str_cstr_term_char:bb.a
bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 %i.s(ptr noundef %i.j, ptr noundef %i.m, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@bug_str_s_cstr_term:bb.a
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !23

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #11
end_hunk_1
begin_hunk_2_@bug_str_s_cstr_unterm:bb.a
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !23

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #11
end_hunk_2
begin_hunk_3_@bug_str_s_cstr_term_char:bb.a
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !23

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #11
end_hunk_3
begin_hunk_4_@bug_str_s_cstr_term_char:bb.a
bb.d:                                             ; preds = %RSTRING_PTR.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = tail call i32 %i.z(ptr noundef %i.q, ptr noundef %i.t, ptr noundef nonnull %i.i) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bug_str_cstr_term_char.exit, label %bb.e

end_hunk_4
begin_hunk_5_@bug_str_s_cstr_noembed:bb.a
  %i.k = and i64 %1, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !23

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #11
end_hunk_5
begin_hunk_6_@bug_str_s_cstr_noembed:bb.a
  %.val = load i32, ptr %i.al, align 4, !tbaa !15 ; 2 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !20
  %i.am = icmp sgt i32 %.val, 1
  br i1 %i.am, label %bb.e, label %bb.f, !prof !24

bb.e:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.an = zext nneg i32 %.val to i64
end_hunk_6
begin_hunk_7_@llvm.lifetime.end.p0
!19 = !{!14, !11, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!16, !17, i64 32}
!22 = !{!"branch_weights", i32 1073205, i32 2146410443}
!23 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_7
