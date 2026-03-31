begin_hunk_0
  br label %set_compile_option_from_hash.exit

bb.d:                                             ; preds = %bb.a
  %2 = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %3 = icmp ne i64 %i.c, 0
  %4 = or i1 %2, %3
  br i1 %4, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.d = inttoptr i64 %1 to ptr
end_hunk_0
begin_hunk_1

bb.aq:                                            ; preds = %insn_op_type.exit, %insn_op_type.exit, %insn_op_type.exit
  %i.it = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !18  ; 4 uses
  switch i8 %i.hi, label %bb.at [
    i8 75, label %1
    i8 84, label %bb.ar
    i8 74, label %bb.as
    i8 65, label %ISEQ_IS_ENTRY_START.exit
  ]

1:                                                ; preds = %bb.aq
  %2 = getelementptr i8, ptr %i.iu, i64 248
  %3 = load i32, ptr %2, align 8, !tbaa !41
  br label %bb.ar

bb.ar:                                            ; preds = %1, %bb.aq
  %.0.i462 = phi i32 [ %3, %1 ], [ 0, %bb.aq ]
  %i.iv = getelementptr i8, ptr %i.iu, i64 256
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !42
  %4 = add i32 %i.iw, %.0.i462
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i = phi i32 [ %4, %bb.ar ], [ 0, %bb.aq ]
  %i.ix = getelementptr i8, ptr %i.iu, i64 252
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  %i.iz = add i32 %i.iy, %.1.i
end_hunk_1
