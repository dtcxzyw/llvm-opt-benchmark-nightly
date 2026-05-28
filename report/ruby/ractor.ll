inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@builtin_inline_class_419:bb.a
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !119
  %i.m = and i64 %i.l, 256
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.n, align 8, !tbaa !163
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = call fastcc i32 @obj_traverse_i(i64 noundef %i.f, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread7

rb_ractor_shareable_p.exit.thread7:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread4, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread4:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = ptrtoint ptr %3 to i64
  %i.u = call i32 @rb_st_foreach(ptr noundef nonnull %i.q, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.t) #21 ; 0 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.fr = freeze i32 %i.v
  %i.w = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.w, label %rb_ractor_shareable_p.exit.thread, label %bb.e

rb_ractor_shareable_p.exit.thread:                ; preds = %bb.b, %bb.a, %rb_ractor_shareable_p.exit.thread4, %rb_ractor_shareable_p.exit
  br label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread7, %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread
  %i.x = phi i64 [ 20, %rb_ractor_shareable_p.exit.thread ], [ 0, %rb_ractor_shareable_p.exit ], [ 0, %rb_ractor_shareable_p.exit.thread7 ]
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @builtin_inline_class_461(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call i64 @rb_ractor_make_shareable_copy(i64 noundef %i.f)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @builtin_inline_class_465(ptr noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr i8, ptr %i.d, i64 -40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @make_shareable_check_shareable, ptr %2, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.g, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call fastcc i32 @obj_traverse_i(i64 noundef %i.f, ptr noundef nonnull %2)
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %rb_ractor_make_shareable.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %rb_ractor_make_shareable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.l, align 4
  %i.m = ptrtoint ptr %3 to i64
  %i.n = call i32 @rb_st_foreach(ptr noundef nonnull %i.j, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.m) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %rb_ractor_make_shareable.exit

rb_ractor_make_shareable.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_local_value(ptr noundef readonly captures(none) %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = call i64 @rb_check_id(ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.g = getelementptr i8, ptr %.0.i, i64 392
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !217  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.i = icmp ne i64 %i.f, 0
  %i.j = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.k = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.h, i64 noundef %i.f, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.k, 0
  %i.l = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not, i64 4, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_ec_ractor_ptr.exit
  %.0 = phi i64 [ 4, %rb_ec_ractor_ptr.exit ], [ %spec.select, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @ractor_local_value_set(ptr noundef readonly captures(none) %0, i64 %1, i64 noundef %2, i64 noundef returned %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = tail call i64 @rb_to_symbol(i64 noundef %2) #21
  %i.e = tail call i64 @rb_sym2id(i64 noundef %i.d) #21
  %i.f = getelementptr i8, ptr %.0.i, i64 392     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.i = tail call ptr @rb_id_table_create(i64 noundef 2) #21 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !217
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_ec_ractor_ptr.exit
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.g, %rb_ec_ractor_ptr.exit ]
  %i.j = tail call i32 @rb_id_table_insert(ptr noundef %.0, i64 noundef %i.e, i64 noundef %3) #21 ; 0 uses
  ret i64 %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_local_value_store_if_absent(ptr noundef %0, i64 %1, i64 noundef %2) #0 {
rb_ec_ractor_ptr.exit:
  %3 = alloca %struct.ractor_local_storage_store_data, align 8 ; 7 uses
  %4 = alloca i64, align 8                        ; 4 uses
  %5 = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %5, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %6 = getelementptr i8, ptr %.val, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !26       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !218
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr i8, ptr %7, i64 392        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = tail call i64 @rb_to_symbol(i64 noundef %2) #21
  %i.f = tail call i64 @rb_sym2id(i64 noundef %i.e) #21 ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.g, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.h = icmp eq ptr %i.c, null
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.i = tail call ptr @rb_id_table_create(i64 noundef 2) #21 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !217
  store ptr %i.i, ptr %i.a, align 8, !tbaa !220
  br label %bb.d

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.j = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.c, i64 noundef %i.f, ptr noundef nonnull %4) #21
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %4, align 8, !tbaa !57
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %7, i64 400        ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !223  ; 2 uses
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @rb_mutex_new() #21             ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  %i.p = ptrtoint ptr %3 to i64
  %i.q = call i64 @rb_mutex_synchronize(i64 noundef %i.o, ptr noundef nonnull @ractor_local_value_store_i, i64 noundef %i.p) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i64 [ %i.q, %bb.f ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_520(ptr readnone captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %.val = load i64, ptr %i.c, align 8, !tbaa !85
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_527(ptr noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !150
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.g = icmp eq ptr %i.c, %.0.i
  %i.h = select i1 %i.g, i64 20, i64 0
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_require(ptr readnone captures(none) %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_require(i64 noundef %2, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_567(ptr readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr i8, ptr %i.c, i64 120
  %.val = load i64, ptr %i.d, align 8, !tbaa !125
  ret i64 %.val
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @ractor_value(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %ractor_set_successor_once.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.j = ptrtoint ptr %.0.i to i64
  %i.k = cmpxchg volatile ptr %i.g, i64 0, i64 %i.j seq_cst seq_cst, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = extractvalue { i64, i1 } %i.k, 1
  %i.o = select i1 %i.n, ptr %.0.i, ptr %i.m
  br label %ractor_set_successor_once.exit

ractor_set_successor_once.exit:                   ; preds = %rb_ec_ractor_ptr.exit, %bb.c
  %.0.i10 = phi ptr [ %i.o, %bb.c ], [ %i.h, %rb_ec_ractor_ptr.exit ]
  %i.p = icmp eq ptr %.0.i10, %.0.i
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %ractor_set_successor_once.exit
  %i.q = getelementptr i8, ptr %i.f, i64 168
  %i.r = getelementptr i8, ptr %i.f, i64 176
  %i.s = load i8, ptr %i.r, align 8, !tbaa !133, !range !77, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i64, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call fastcc i64 @ractor_make_remote_exception(i64 noundef %i.u, i64 noundef %1)
  tail call void @rb_exc_raise(i64 noundef %i.v) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  ret i64 %i.u

bb.g:                                             ; preds = %ractor_set_successor_once.exit
  %i.w = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.116) #22
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @ractor_monitor(ptr readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 5 uses
  %i.d = inttoptr i64 %2 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !225
  %i.h = getelementptr i8, ptr %i.c, i64 56       ; 3 uses
  tail call void @rb_native_mutex_lock(ptr noundef %i.h) #21
  %i.i = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %ractor_lock.exit, label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.k = getelementptr i8, ptr %.val.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %i.l, i64 448
  store i8 1, ptr %i.m, align 8, !tbaa !47
  br label %ractor_lock.exit

ractor_lock.exit:                                 ; preds = %bb.a, %rb_ec_ractor_ptr.exit.i
  %i.n = getelementptr i8, ptr %i.c, i64 168
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  %i.p = icmp eq i64 %i.o, 36
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %ractor_lock.exit
  %i.q = getelementptr i8, ptr %i.c, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr i8, ptr %i.c, i64 152      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !112
  store ptr %i.r, ptr %i.t, align 8, !tbaa !111
  store ptr %i.r, ptr %i.s, align 8, !tbaa !112
  %i.v = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i15 = icmp eq ptr %i.v, null
  br i1 %.not.i15, label %ractor_unlock.exit, label %rb_ec_ractor_ptr.exit.i16

rb_ec_ractor_ptr.exit.i16:                        ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %.val.i17 = load ptr, ptr %i.w, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.x = getelementptr i8, ptr %.val.i17, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr i8, ptr %i.y, i64 448
  store i8 0, ptr %i.z, align 8, !tbaa !47
  br label %ractor_unlock.exit

ractor_unlock.exit:                               ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i16
  tail call void @rb_native_mutex_unlock(ptr noundef %i.h) #21
  br label %bb.c

.critedge:                                        ; preds = %ractor_lock.exit
  %i.aa = tail call ptr @rb_current_ec_noinline() #21 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i18, label %ractor_unlock.exit21, label %rb_ec_ractor_ptr.exit.i19

rb_ec_ractor_ptr.exit.i19:                        ; preds = %.critedge
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %.val.i20 = load ptr, ptr %i.ab, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.ac = getelementptr i8, ptr %.val.i20, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = getelementptr i8, ptr %i.ad, i64 448
  store i8 0, ptr %i.ae, align 8, !tbaa !47
  br label %ractor_unlock.exit21

ractor_unlock.exit21:                             ; preds = %.critedge, %rb_ec_ractor_ptr.exit.i19
  tail call void @rb_native_mutex_unlock(ptr noundef %i.h) #21
  tail call void @ruby_xfree(ptr noundef nonnull %i.g) #21
  %i.af = getelementptr i8, ptr %i.c, i64 176
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !133, !range !77, !noundef !25
  %i.ah = trunc nuw i8 %i.ag to i1
  %..i = select i1 %i.ah, i64 3729, i64 3745
  %i.ai = tail call i64 @rb_id2sym(i64 noundef %..i) #21
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !66
  tail call fastcc void @ractor_send0(ptr noundef readonly %i.aj, i64 noundef %i.ai, i64 noundef range(i64 0, 2) 0, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %ractor_unlock.exit, %ractor_unlock.exit21
  %.0 = phi i64 [ 0, %ractor_unlock.exit21 ], [ 20, %ractor_unlock.exit ]
end_hunk_0
