inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@rb_ibf_load_iseq_complete:bb.a
  br label %ibf_load_param_opt_table.exit

ibf_load_param_opt_table.exit:                    ; preds = %ibf_load_outer_variables.exit, %rbimpl_size_mul_or_raise.exit.i
  %.0.i95 = phi ptr [ null, %ibf_load_outer_variables.exit ], [ %i.ecc, %rbimpl_size_mul_or_raise.exit.i ]
  %i.ecj = getelementptr i8, ptr %i.u, i64 48
  store ptr %.0.i95, ptr %i.ecj, align 8, !tbaa !162
  %i.eck = and i64 %.021.lcssa.i485, 4294967295   ; 2 uses
end_hunk_0
begin_hunk_1_@ibf_dump_object_hash:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %1, 24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !329
  br label %RHASH_SIZE.exit
end_hunk_1
