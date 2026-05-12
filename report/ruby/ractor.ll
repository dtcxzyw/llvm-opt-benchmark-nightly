inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@rb_ractor_require:bb.a
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !57
  %i.g = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.h = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 40, ptr noundef nonnull @cross_ractor_require_data_type) #21 ; 7 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = trunc i64 %i.k to i1
end_hunk_0
begin_hunk_1_@rb_ractor_require:bb.a
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_obj_set_shareable.exit, %bb.e
  %i.ap = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i19, label %bb.f, label %rb_current_ractor.exit
end_hunk_1
begin_hunk_2_@rb_ractor_require:bb.a
  br i1 %i.bk, label %rb_obj_write.exit21, label %bb.j

bb.j:                                             ; preds = %rb_ractor_make_shareable.exit
  call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %i.aw) #21
  br label %rb_obj_write.exit21

rb_obj_write.exit21:                              ; preds = %rb_ractor_make_shareable.exit, %bb.j
end_hunk_2
begin_hunk_3_@rb_ractor_require:bb.a
  %i.bp = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.bq = getelementptr i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !147
  call void @rb_ractor_interrupt_exec(ptr noundef %i.br, ptr noundef nonnull @ractor_require_func, ptr noundef nonnull %i.i, i32 noundef 1) #21
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !204
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
end_hunk_3
