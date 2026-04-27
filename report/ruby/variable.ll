inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@global_id:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ]
  %i.q = call i64 @rb_intern2(ptr noundef nonnull %i.p, i64 noundef %i.f) #27
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
end_hunk_0
begin_hunk_1_@find_global_id:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ]
  %i.q = call i64 @rb_check_id_cstr(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef null) #27
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
end_hunk_1
begin_hunk_2_@imemo_fields_copy_capa:bb.a
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = and i64 %i.h, 65536
  %.not5.i19 = icmp eq i64 %i.t, 0
  %i.u = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
end_hunk_2
begin_hunk_3_@imemo_fields_copy_capa:bb.a
  br i1 %.not.i22, label %ruby_nonempty_memcpy.exit.thread, label %.lr.ph.preheader

ruby_nonempty_memcpy.exit.thread:                 ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.w = and i64 %i.h, -4294967296
  %i.x = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
end_hunk_3
