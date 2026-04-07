inline.NumInlined: 570
inline.NumDeleted: 100
begin_hunk_0_@nurat_to_s:bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = tail call i64 @rb_obj_as_string(i64 noundef %i.c) #16, !callees !42, !inline_history !43 ; 3 uses
  %i.e = tail call i64 @rb_str_cat(i64 noundef %i.d, ptr noundef nonnull @.str.17, i64 noundef 1) #16 ; 0 uses
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = tail call i64 @rb_obj_as_string(i64 noundef %i.g) #16, !callees !42, !inline_history !43
  %i.i = tail call i64 @rb_str_concat(i64 noundef %i.d, i64 noundef %i.h) #16 ; 0 uses
  ret i64 %i.d
}
end_hunk_0
begin_hunk_1_@nurat_inspect:bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i64 @rb_inspect(i64 noundef %i.d) #16, !callees !42, !inline_history !43 ; 3 uses
  %i.f = tail call i64 @rb_str_cat(i64 noundef %i.e, ptr noundef nonnull @.str.17, i64 noundef 1) #16 ; 0 uses
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call i64 @rb_inspect(i64 noundef %i.h) #16, !callees !42, !inline_history !43
  %i.j = tail call i64 @rb_str_concat(i64 noundef %i.e, i64 noundef %i.i) #16 ; 0 uses
  %i.k = tail call i64 @rb_str_concat(i64 noundef %i.a, i64 noundef %i.e) #16 ; 0 uses
  %i.l = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.55, i64 noundef 1) #16 ; 0 uses
end_hunk_1
begin_hunk_2_@nurat_marshal_load:bb.a
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !44

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !45

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #19
end_hunk_2
begin_hunk_3_@nurat_marshal_load:bb.a
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #16
end_hunk_3
begin_hunk_4_@nurat_marshal_load:bb.a
  %i.k = and i64 %1, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i9, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i9:                ; preds = %rb_check_frozen_inline.exit
  %i.n = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 3 uses
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 7
  br i1 %i.q, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i9, %rb_check_frozen_inline.exit
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #17
end_hunk_4
begin_hunk_5_@string_to_r:bb.a
RSTRING_END.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = tail call fastcc i64 @parse_rat(ptr noundef %i.f, ptr noundef %i.i, i32 noundef 0, i32 noundef 1) ; 8 uses
  %i.k = and i64 %i.j, 3
end_hunk_5
begin_hunk_6_@string_to_r_strict:bb.a
RSTRING_END.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = tail call fastcc i64 @parse_rat(ptr noundef %i.f, ptr noundef %i.i, i32 noundef 1, i32 noundef %1) ; 11 uses
  %i.k = icmp eq i64 %i.j, 4
end_hunk_6
begin_hunk_7_@llvm.umax.i64
!40 = !{!"p1 omnipotent char", !28, i64 0}
!41 = !{!17, !18, i64 8}
!42 = !{ptr @rb_inspect, ptr @rb_obj_as_string}
!43 = distinct !{null}
!44 = !{!"branch_weights", i32 2146410443, i32 1073205}
!45 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!46 = !{!"branch_weights", i32 4001, i32 1}
!47 = !{!"branch_weights", i32 1073205, i32 2146410443}
!48 = !{!49, !18, i64 16}
!49 = !{!"RString", !17, i64 0, !18, i64 16, !9, i64 24}
end_hunk_7
