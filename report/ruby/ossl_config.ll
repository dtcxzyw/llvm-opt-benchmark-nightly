inline.NumInlined: 69
inline.NumDeleted: 35
begin_hunk_0_@config_initialize
define internal range(i64 1, -7) i64 @config_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7                            ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
end_hunk_0
begin_hunk_1_@config_initialize:bb.a

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #7
  %.pre = load i64, ptr %i.b, align 8, !tbaa !27
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.g
  %3 = phi i64 [ %i.aa, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.g ]
  %i.aj = icmp eq i64 %3, 4
  br i1 %i.aj, label %bb.n, label %bb.h

bb.h:                                             ; preds = %rb_check_frozen_inline.exit
end_hunk_1
