begin_hunk_0
  br label %set_compile_option_from_hash.exit

bb.d:                                             ; preds = %bb.a
  %i.c = and i64 %1, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.d = inttoptr i64 %1 to ptr
end_hunk_0
begin_hunk_1

bb.aq:                                            ; preds = %insn_op_type.exit, %insn_op_type.exit, %insn_op_type.exit
  %i.it = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  switch i8 %i.hi, label %bb.at [
    i8 65, label %ISEQ_IS_ENTRY_START.exit
    i8 84, label %bb.ar
    i8 74, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.iv = getelementptr i8, ptr %i.iu, i64 256
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !42
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i = phi i32 [ %i.iw, %bb.ar ], [ 0, %bb.aq ]
  %i.ix = getelementptr i8, ptr %i.iu, i64 252
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  %i.iz = add i32 %i.iy, %.1.i
end_hunk_1
