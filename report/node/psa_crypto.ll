inline.NumInlined: 450
inline.NumDeleted: 131
begin_hunk_0_@mbedtls_to_psa_error:bb.a
  br label %bb.o

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -132, %bb.n ], [ -148, %bb.j ], [ -134, %bb.b ], [ -135, %bb.c ], [ %i.d, %bb.a ], [ -141, %bb.d ], [ -138, %bb.e ], [ -147, %bb.m ], [ -150, %bb.h ], [ -149, %bb.f ], [ -133, %bb.l ], [ -137, %bb.g ], [ -146, %bb.k ], [ -151, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -135, 1) i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  switch i16 %0, label %bb.h [
    i16 4097, label %bb.g
    i16 4352, label %bb.g
    i16 4608, label %bb.g
    i16 4611, label %bb.g
    i16 4613, label %bb.g
    i16 9216, label %bb.b
    i16 9222, label %bb.c
    i16 9219, label %bb.d
    i16 8961, label %bb.e
    i16 8196, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 256, label %bb.g
    i64 192, label %bb.g
    i64 128, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 256, label %bb.g
    i64 192, label %bb.g
    i64 128, label %bb.g
  ]

bb.d:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 256, label %bb.g
    i64 192, label %bb.g
    i64 128, label %bb.g
  ]

bb.e:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 192, label %bb.g
    i64 128, label %bb.g
    i64 64, label %bb.g
  ]

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 256
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %bb.c, %bb.b, %bb.b, %bb.b, %bb.f, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = and i64 %1, 7
  %.not31 = icmp eq i64 %i.a, 0
  %. = select i1 %.not31, i32 0, i32 -135
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -135, %bb.f ], [ %., %bb.g ], [ -134, %bb.a ], [ -135, %bb.e ], [ -135, %bb.b ], [ -135, %bb.c ], [ -135, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define range(i32 -141, 1) i32 @psa_allocate_buffer_to_slot(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %1) #19 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.e, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -139, %bb.a ], [ -141, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -141, 1) i32 @psa_copy_key_material_into_slot(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %psa_allocate_buffer_to_slot.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %2) #19 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %psa_allocate_buffer_to_slot.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.e, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  br label %psa_allocate_buffer_to_slot.exit.thread

psa_allocate_buffer_to_slot.exit.thread:          ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -141, %bb.b ], [ -139, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @psa_import_key_into_slot(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !26     ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %psa_is_dh_key_size_valid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.a, 28672
  switch i16 %i.c, label %bb.e [
    i16 8192, label %bb.c
    i16 4096, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = shl i64 %2, 3                            ; 2 uses
  store i64 %i.d, ptr %6, align 8, !tbaa !27
  %i.e = tail call i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %i.a, i64 noundef %i.d) ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.d, label %psa_is_dh_key_size_valid.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %5, align 8, !tbaa !27
  br label %psa_is_dh_key_size_valid.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.f = zext i16 %i.a to i32                     ; 2 uses
  %i.g = and i32 %i.f, 16384
  %.not43 = icmp eq i32 %i.g, 0
  br i1 %.not43, label %psa_is_dh_key_size_valid.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %trunc = and i16 %i.a, -12544
  switch i16 %trunc, label %bb.i [
    i16 16896, label %bb.g
    i16 16640, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = shl i64 %2, 3                            ; 2 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 54)
  switch i64 %i.i, label %psa_is_dh_key_size_valid.exit.thread [
    i64 2, label %psa_is_dh_key_size_valid.exit
    i64 3, label %psa_is_dh_key_size_valid.exit
    i64 4, label %psa_is_dh_key_size_valid.exit
    i64 6, label %psa_is_dh_key_size_valid.exit
    i64 8, label %psa_is_dh_key_size_valid.exit
  ]

psa_is_dh_key_size_valid.exit:                    ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.j = tail call i32 @mbedtls_psa_ffdh_import_key(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #20
  br label %psa_is_dh_key_size_valid.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i32 @mbedtls_psa_ecp_import_key(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #20
  br label %psa_is_dh_key_size_valid.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.l = and i32 %i.f, 53247
  %i.m = icmp eq i32 %i.l, 16385
  br i1 %i.m, label %bb.j, label %psa_is_dh_key_size_valid.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @mbedtls_psa_rsa_import_key(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #20
  br label %psa_is_dh_key_size_valid.exit.thread

psa_is_dh_key_size_valid.exit.thread:             ; preds = %bb.g, %bb.i, %bb.e, %bb.c, %bb.a, %bb.j, %bb.h, %psa_is_dh_key_size_valid.exit, %bb.d
  %.0 = phi i32 [ -134, %bb.i ], [ -134, %bb.a ], [ 0, %bb.d ], [ %i.e, %bb.c ], [ %i.j, %psa_is_dh_key_size_valid.exit ], [ %i.k, %bb.h ], [ %i.n, %bb.j ], [ -134, %bb.e ], [ -134, %bb.g ]
  ret i32 %.0
}

declare i32 @mbedtls_psa_ffdh_import_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_ecp_import_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @mbedtls_psa_rsa_import_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noundef i32 @psa_remove_key_data_from_memory(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.b, i64 noundef %i.d) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret i32 0
}

declare void @mbedtls_zeroize_and_free(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @psa_wipe_key_slot(ptr noundef initializes((0, 24), (29, 32)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %psa_remove_key_data_from_memory.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.b, i64 noundef %i.d) #20
  br label %psa_remove_key_data_from_memory.exit

psa_remove_key_data_from_memory.exit:             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  switch i32 %i.f, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

.thread:                                          ; preds = %psa_remove_key_data_from_memory.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %psa_remove_key_data_from_memory.exit, %psa_remove_key_data_from_memory.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %.not9 = icmp eq i64 %i.h, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i8, ptr %i.i, align 4, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br i1 %.not9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %psa_remove_key_data_from_memory.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  %.not = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi i8 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  %i.p = zext i8 %i.o to i64
  %i.q = tail call i32 @psa_free_key_slot(i64 noundef %i.p, ptr noundef nonnull %0) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.thread, %bb.e, %bb.d
  %.1 = phi i32 [ %i.q, %bb.e ], [ -151, %bb.d ], [ -151, %.thread ], [ -151, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @psa_free_key_slot(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @psa_destroy_key(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @psa_get_and_lock_key_slot(i32 noundef %0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.e, 2
  br i1 %.not.i, label %bb.d, label %psa_key_slot_state_transition.exit

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %trunc = trunc i32 %i.g to i8
  switch i8 %trunc, label %bb.e [
    i8 -1, label %psa_key_slot_state_transition.exit
    i8 0, label %.fold.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = call i32 @psa_destroy_persistent_key(i32 noundef %i.i) #20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %psa_key_slot_state_transition.exit

.fold.split:                                      ; preds = %bb.d
  br label %psa_key_slot_state_transition.exit

psa_key_slot_state_transition.exit:               ; preds = %bb.c, %bb.d, %.fold.split, %bb.e
  %i.k = phi ptr [ %i.c, %.fold.split ], [ %.pre, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %.0 = phi i32 [ 0, %.fold.split ], [ %i.j, %bb.e ], [ -133, %bb.d ], [ -151, %bb.c ]
  %i.l = call i32 @psa_unregister_read(ptr noundef %i.k) #20 ; 2 uses
  %.not19 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not19, i32 %.0, i32 %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %psa_key_slot_state_transition.exit
  %.011 = phi i32 [ %spec.select, %psa_key_slot_state_transition.exit ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.011
}

declare i32 @psa_get_and_lock_key_slot(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @psa_destroy_persistent_key(i32 noundef) local_unnamed_addr #7

declare i32 @psa_unregister_read(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  tail call void @psa_reset_key_attributes(ptr noundef %1) #20
  %i.b = call i32 @psa_get_and_lock_key_slot(i32 noundef %0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %psa_get_and_lock_key_slot_with_policy.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !34
  %i.d = call i32 @psa_unregister_read_under_mutex(ptr noundef nonnull %i.c) #20
  br label %psa_get_and_lock_key_slot_with_policy.exit

psa_get_and_lock_key_slot_with_policy.exit:       ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare void @psa_reset_key_attributes(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 16385) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @psa_get_and_lock_key_slot(i32 noundef %0, ptr noundef nonnull %1) #20 ; 2 uses
end_hunk_0
begin_hunk_1_@psa_aead_finish:bb.a
bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i64 %.sroa.1156.06789, 0
  br i1 %.not.i.i, label %psa_crypto_copy_output.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.053.06393, ptr nonnull readonly align 1 %.sroa.654.06691, i64 %.sroa.1156.06789, i1 false)
  br label %psa_crypto_copy_output.exit.i

psa_crypto_copy_output.exit.i:                    ; preds = %bb.p, %bb.o
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.654.06691, i64 noundef %.sroa.1156.06789) #20
  br label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_aead_abort.exit, %psa_crypto_copy_output.exit.i, %bb.n
  %i.af = phi i32 [ -151, %bb.n ], [ %.0102, %psa_crypto_copy_output.exit.i ], [ %.0102, %psa_aead_abort.exit ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.6.097, null
  br i1 %i.ag, label %psa_crypto_local_output_free.exit50, label %bb.q

bb.q:                                             ; preds = %psa_crypto_local_output_free.exit
  %i.ah = icmp eq ptr %.sroa.0.095, null
  br i1 %i.ah, label %psa_crypto_local_output_free.exit50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i45 = icmp eq i64 %.sroa.11.099, 0
  br i1 %.not.i.i45, label %psa_crypto_copy_output.exit.i48, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.095, ptr nonnull readonly align 1 %.sroa.6.097, i64 %.sroa.11.099, i1 false)
  br label %psa_crypto_copy_output.exit.i48

psa_crypto_copy_output.exit.i48:                  ; preds = %bb.s, %bb.r
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.6.097, i64 noundef %.sroa.11.099) #20
  br label %psa_crypto_local_output_free.exit50

psa_crypto_local_output_free.exit50:              ; preds = %psa_crypto_local_output_free.exit, %psa_crypto_copy_output.exit.i48, %bb.q
  %i.ai = phi i32 [ -151, %bb.q ], [ %i.af, %psa_crypto_copy_output.exit.i48 ], [ %i.af, %psa_crypto_local_output_free.exit ]
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define i32 @psa_aead_verify(ptr noundef %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #19 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %psa_crypto_local_output_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.034.0.ph = phi ptr [ null, %bb.a ], [ %1, %bb.b ] ; 8 uses
  %.sroa.6.0.ph = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ] ; 9 uses
  %i.f = icmp eq i64 %5, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %psa_crypto_local_output_alloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 range(i64 1, 0) %5, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.0.1.ph = phi ptr [ %i.g, %bb.e ], [ null, %bb.c ] ; 8 uses
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.i = load i32, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %psa_aead_abort.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i8, ptr %i.k, align 8               ; 3 uses
  %i.m = and i8 %i.l, 1
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %psa_crypto_local_output_alloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i8 %i.l, 2
  %.not5.i = icmp eq i8 %i.n, 0
  br i1 %.not5.i, label %psa_aead_final_checks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !73
  %.not6.i = icmp eq i64 %i.p, 0
  br i1 %.not6.i, label %bb.j, label %psa_crypto_local_output_alloc.exit

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %psa_aead_final_checks.exit, label %psa_crypto_local_output_alloc.exit

psa_aead_final_checks.exit:                       ; preds = %bb.j, %bb.h
  %i.s = and i8 %i.l, 16
  %.not25 = icmp eq i8 %i.s, 0
  br i1 %.not25, label %bb.k, label %psa_crypto_local_output_alloc.exit

bb.k:                                             ; preds = %psa_aead_final_checks.exit
  %cond.i = icmp eq i32 %i.i, 1
  br i1 %cond.i, label %bb.l, label %psa_crypto_local_output_alloc.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = call i32 @mbedtls_psa_aead_finish(ptr noundef nonnull %i.t, ptr noundef %.sroa.6.0.ph, i64 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull %i.b) #20 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.b, align 8, !tbaa !27
  %.not.i30 = icmp eq i64 %5, %i.w
  br i1 %.not.i30, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = call i32 @mbedtls_ct_memcmp(ptr noundef %.sroa.0.1.ph, ptr noundef nonnull %i.a, i64 noundef %5) #20
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0.i29 = phi i32 [ -149, %bb.o ], [ 0, %bb.n ], [ %i.u, %bb.l ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %psa_crypto_local_output_alloc.exit

psa_crypto_local_output_alloc.exit:               ; preds = %bb.i, %bb.j, %bb.g, %bb.p, %bb.k, %bb.d, %bb.b, %psa_aead_final_checks.exit
  %.sroa.11.046.ph = phi i64 [ %2, %bb.i ], [ %2, %bb.j ], [ %2, %bb.g ], [ %2, %bb.k ], [ 0, %bb.b ], [ %2, %bb.p ], [ %2, %psa_aead_final_checks.exit ], [ %2, %bb.d ] ; 2 uses
  %.sroa.6.045.ph = phi ptr [ %.sroa.6.0.ph, %bb.i ], [ %.sroa.6.0.ph, %bb.j ], [ %.sroa.6.0.ph, %bb.g ], [ %.sroa.6.0.ph, %bb.k ], [ null, %bb.b ], [ %.sroa.6.0.ph, %bb.p ], [ %.sroa.6.0.ph, %psa_aead_final_checks.exit ], [ %.sroa.6.0.ph, %bb.d ] ; 2 uses
  %.sroa.034.042.ph = phi ptr [ %.sroa.034.0.ph, %bb.i ], [ %.sroa.034.0.ph, %bb.j ], [ %.sroa.034.0.ph, %bb.g ], [ %.sroa.034.0.ph, %bb.k ], [ null, %bb.b ], [ %.sroa.034.0.ph, %bb.p ], [ %.sroa.034.0.ph, %psa_aead_final_checks.exit ], [ %.sroa.034.0.ph, %bb.d ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1.ph, %bb.i ], [ %.sroa.0.1.ph, %bb.j ], [ %.sroa.0.1.ph, %bb.g ], [ %.sroa.0.1.ph, %bb.k ], [ null, %bb.b ], [ %.sroa.0.1.ph, %bb.p ], [ %.sroa.0.1.ph, %psa_aead_final_checks.exit ], [ null, %bb.d ] ; 2 uses
  %.sroa.8.0.ph = phi i64 [ %5, %bb.i ], [ %5, %bb.j ], [ %5, %bb.g ], [ %5, %bb.k ], [ 0, %bb.b ], [ %5, %bb.p ], [ %5, %psa_aead_final_checks.exit ], [ 0, %bb.d ] ; 2 uses
  %.0.ph = phi i32 [ -135, %bb.i ], [ -135, %bb.j ], [ -137, %bb.g ], [ -135, %bb.k ], [ -141, %bb.b ], [ %.0.i29, %bb.p ], [ -137, %psa_aead_final_checks.exit ], [ -141, %bb.d ] ; 2 uses
  %.pr = load i32, ptr %0, align 8, !tbaa !69
  switch i32 %.pr, label %psa_driver_wrapper_aead_abort.exit.i [
    i32 0, label %psa_aead_abort.exit
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %psa_crypto_local_output_alloc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = call i32 @mbedtls_psa_aead_abort(ptr noundef nonnull %i.y) #20 ; 0 uses
  br label %psa_driver_wrapper_aead_abort.exit.i

psa_driver_wrapper_aead_abort.exit.i:             ; preds = %bb.q, %psa_crypto_local_output_alloc.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  br label %psa_aead_abort.exit

psa_aead_abort.exit:                              ; preds = %bb.f, %psa_crypto_local_output_alloc.exit, %psa_driver_wrapper_aead_abort.exit.i
  %.071 = phi i32 [ %.0.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.0.ph, %psa_crypto_local_output_alloc.exit ], [ -137, %bb.f ] ; 2 uses
  %.sroa.8.070 = phi i64 [ %.sroa.8.0.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.sroa.8.0.ph, %psa_crypto_local_output_alloc.exit ], [ %5, %bb.f ]
  %.sroa.0.069 = phi ptr [ %.sroa.0.0.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.sroa.0.0.ph, %psa_crypto_local_output_alloc.exit ], [ %.sroa.0.1.ph, %bb.f ]
  %.sroa.034.04268 = phi ptr [ %.sroa.034.042.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.sroa.034.042.ph, %psa_crypto_local_output_alloc.exit ], [ %.sroa.034.0.ph, %bb.f ] ; 2 uses
  %.sroa.6.04567 = phi ptr [ %.sroa.6.045.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.sroa.6.045.ph, %psa_crypto_local_output_alloc.exit ], [ %.sroa.6.0.ph, %bb.f ] ; 3 uses
  %.sroa.11.04666 = phi i64 [ %.sroa.11.046.ph, %psa_driver_wrapper_aead_abort.exit.i ], [ %.sroa.11.046.ph, %psa_crypto_local_output_alloc.exit ], [ %2, %bb.f ] ; 3 uses
  %i.aa = icmp eq ptr %.sroa.6.04567, null
  br i1 %i.aa, label %psa_crypto_local_output_free.exit, label %bb.r

bb.r:                                             ; preds = %psa_aead_abort.exit
  %i.ab = icmp eq ptr %.sroa.034.04268, null
  br i1 %i.ab, label %psa_crypto_local_output_free.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i64 %.sroa.11.04666, 0
  br i1 %.not.i.i, label %psa_crypto_copy_output.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.034.04268, ptr nonnull readonly align 1 %.sroa.6.04567, i64 %.sroa.11.04666, i1 false)
  br label %psa_crypto_copy_output.exit.i

psa_crypto_copy_output.exit.i:                    ; preds = %bb.t, %bb.s
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.6.04567, i64 noundef %.sroa.11.04666) #20
  br label %psa_crypto_local_output_free.exit

psa_crypto_local_output_free.exit:                ; preds = %psa_aead_abort.exit, %psa_crypto_copy_output.exit.i, %bb.r
  %i.ac = phi i32 [ -151, %bb.r ], [ %.071, %psa_crypto_copy_output.exit.i ], [ %.071, %psa_aead_abort.exit ]
  call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.0.069, i64 noundef %.sroa.8.070) #20
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_abort(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !75    ; 3 uses
  %i.a = and i32 %.val, 2130706432
  %i.b = icmp eq i32 %i.a, 150994944
  %i.c = and i32 %.val, -2013200385
  %.0.i = select i1 %i.b, i32 %i.c, i32 %.val     ; 3 uses
  %i.d = icmp eq i32 %.0.i, 0
  br i1 %i.d, label %psa_mac_abort.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %.0.i, 8
  switch i32 %i.e, label %bb.m [
    i32 524289, label %bb.c
    i32 524292, label %bb.c
    i32 524293, label %bb.c
    i32 524290, label %bb.e
    i32 524291, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  switch i32 %i.i, label %psa_driver_wrapper_mac_abort.exit.i [
    i32 0, label %psa_mac_abort.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = tail call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.j) #20
  br label %psa_driver_wrapper_mac_abort.exit.i

psa_driver_wrapper_mac_abort.exit.i:              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.d ], [ -135, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 0, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.m, align 1
  store i32 0, ptr %i.h, align 8, !tbaa !56
  br label %psa_mac_abort.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.q, i64 noundef %i.s) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %.not30 = icmp eq ptr %i.u, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.u, i64 noundef %i.w) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %.not31 = icmp eq ptr %i.y, null
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.y, i64 noundef %i.aa) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.not32 = icmp eq ptr %i.ac, null
  br i1 %.not32, label %psa_mac_abort.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !29
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #20
  br label %psa_mac_abort.exit

bb.m:                                             ; preds = %bb.b
  %i.af = icmp eq i32 %.0.i, 134219273
  br i1 %i.af, label %bb.n, label %psa_mac_abort.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.ag, i64 noundef 32) #20
  br label %psa_mac_abort.exit

psa_mac_abort.exit:                               ; preds = %psa_driver_wrapper_mac_abort.exit.i, %bb.c, %bb.m, %bb.k, %bb.l, %bb.n, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -137, %bb.m ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.l ], [ %.0.i.i, %psa_driver_wrapper_mac_abort.exit.i ], [ %i.i, %bb.c ]
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 568) #20
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_key_derivation_get_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !75
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  store i64 %i.d, ptr %1, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -137, 1) i32 @psa_key_derivation_set_capacity(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !75
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -137, %bb.a ], [ -135, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_output_bytes(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %4 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %5 = alloca %struct.psa_mac_operation_s, align 8 ; 27 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %7 = alloca %struct.psa_crypto_local_output_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val = load i32, ptr %0, align 8, !tbaa !75    ; 4 uses
  %i.c = and i32 %.val, 2130706432
  %i.d = icmp eq i32 %i.c, 150994944
  %i.e = and i32 %.val, -2013200385
  %.0.i = select i1 %i.d, i32 %i.e, i32 %.val     ; 7 uses
  %i.f = icmp eq i32 %.val, 0
  br i1 %i.f, label %psa_crypto_local_output_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.h = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #19 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !41
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %psa_crypto_local_output_alloc.exit.thread79, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.k, align 8, !tbaa !43
  store ptr %1, ptr %7, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %psa_crypto_local_output_free.exit, label %.split45

.split45:                                         ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.split45, %bb.d
  %i.o = phi i64 [ %i.m, %.split45 ], [ %.pre, %bb.d ] ; 2 uses
  %i.p = phi ptr [ null, %.split45 ], [ %i.h, %bb.d ] ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp ugt i64 %2, %i.o
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.q, align 8, !tbaa !77
  br label %psa_crypto_local_output_alloc.exit.thread79

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.o, %2
  store i64 %i.s, ptr %i.q, align 8, !tbaa !77
  %i.t = and i32 %.0.i, -256
  %i.u = lshr i32 %.0.i, 8
  switch i32 %i.u, label %bb.bn [
    i32 524289, label %bb.i
    i32 524292, label %bb.i
    i32 524293, label %bb.i
    i32 524290, label %bb.af
    i32 524291, label %bb.af
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = and i32 %.0.i, 255                       ; 2 uses
  %trunc.i = trunc i32 %.0.i to i8
  switch i8 %trunc.i, label %bb.j [
    i8 3, label %bb.k
    i8 4, label %.fold.split.i
    i8 5, label %.fold.split.i
    i8 8, label %.fold.split85.i
    i8 9, label %.fold.split86.i
    i8 10, label %.fold.split87.i
    i8 11, label %.fold.split88.i
    i8 12, label %.fold.split85.i
    i8 13, label %.fold.split86.i
    i8 16, label %.fold.split85.i
    i8 17, label %.fold.split86.i
    i8 18, label %.fold.split87.i
    i8 19, label %.fold.split88.i
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

.fold.split.i:                                    ; preds = %bb.i, %bb.i
  br label %bb.k

.fold.split85.i:                                  ; preds = %bb.i, %bb.i, %bb.i
  br label %bb.k

.fold.split86.i:                                  ; preds = %bb.i, %bb.i, %bb.i
  br label %bb.k

.fold.split87.i:                                  ; preds = %bb.i, %bb.i
  br label %bb.k

.fold.split88.i:                                  ; preds = %bb.i, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %.fold.split88.i, %.fold.split87.i, %.fold.split86.i, %.fold.split85.i, %.fold.split.i, %bb.j, %bb.i
  %i.x = phi i1 [ false, %bb.i ], [ true, %bb.j ], [ false, %.fold.split.i ], [ false, %.fold.split88.i ], [ false, %.fold.split85.i ], [ false, %.fold.split86.i ], [ false, %.fold.split87.i ]
  %i.y = phi i8 [ 16, %bb.i ], [ 0, %bb.j ], [ 20, %.fold.split.i ], [ 64, %.fold.split88.i ], [ 28, %.fold.split85.i ], [ 32, %.fold.split86.i ], [ 48, %.fold.split87.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %.not77.i = icmp eq i32 %i.t, 134218752         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2              ; 3 uses
  %i.ab = and i8 %i.aa, 2
  %.not.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.not.i, label %psa_key_derivation_hkdf_read.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i8 %i.aa, 4
  %.not.i = icmp ne i8 %i.ac, 0
  %brmerge.i = or i1 %.not77.i, %.not.i
  br i1 %brmerge.i, label %bb.m, label %psa_key_derivation_hkdf_read.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = or i8 %i.aa, 3
  store i8 %i.ad, ptr %i.z, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 35 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.ah = select i1 %.not77.i, i32 0, i32 255
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.ak = zext nneg i8 %i.y to i64                ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.tr.i = zext nneg i8 %i.y to i16
  %i.am = shl nuw nsw i16 %.tr.i, 3
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  %i.ar = or disjoint i32 %i.w, 58720256
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %switch.tableidx = add nsw i32 %i.w, -3         ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx, 17
  %i.au = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.33, i64 %i.au
  br label %bb.n

bb.n:                                             ; preds = %bb.ae, %bb.m
  %.069.i = phi i64 [ %2, %bb.m ], [ %i.bb, %bb.ae ] ; 3 uses
  %.068.i = phi ptr [ %i.p, %bb.m ], [ %i.ba, %bb.ae ] ; 2 uses
  %.not76.i = icmp eq i64 %.069.i, 0
  br i1 %.not76.i, label %psa_key_derivation_hkdf_read.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.ae, align 8, !tbaa !78  ; 3 uses
  %i.aw = sub i8 %i.y, %i.av
  %i.ax = zext i8 %i.aw to i64
  %spec.select151.i = call i64 @llvm.umin.i64(i64 %.069.i, i64 %i.ax) ; 4 uses
  %spec.select.i = trunc nuw i64 %spec.select151.i to i8
  %i.ay = zext i8 %i.av to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.068.i, ptr nonnull align 1 %i.az, i64 %spec.select151.i, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.068.i, i64 %spec.select151.i
  %i.bb = sub i64 %.069.i, %spec.select151.i      ; 2 uses
  %i.bc = add i8 %i.av, %spec.select.i
  store i8 %i.bc, ptr %i.ae, align 8, !tbaa !78
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %psa_key_derivation_hkdf_read.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i8, ptr %i.ag, align 1, !tbaa !80  ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = icmp eq i32 %i.ah, %i.bf
  br i1 %i.bg, label %psa_key_derivation_hkdf_read.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = add i8 %i.be, 1
  store i8 %i.bh, ptr %i.ag, align 1, !tbaa !80
  store i8 0, ptr %i.ae, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  store i16 4352, ptr %6, align 4, !tbaa !26
  store i16 %i.am, ptr %i.an, align 2, !tbaa !48
  store i32 5120, ptr %i.ao, align 4, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ai, i8 0, i64 400, i1 false)
  store i8 1, ptr %i.ap, align 1
  br i1 %i.at, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %bb.q
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %switch.lookup
  %i.bi = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.q ]
  store i8 %i.bi, ptr %i.aq, align 4, !tbaa !58
  %i.bj = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.as, ptr noundef nonnull %6, ptr noundef nonnull %i.aj, i64 noundef %i.ak, i32 noundef %i.ar) #20 ; 2 uses
  %cond.i.i = icmp eq i32 %i.bj, 0
  br i1 %cond.i.i, label %bb.s, label %psa_key_derivation_start_hmac.exit.i

psa_key_derivation_start_hmac.exit.i:             ; preds = %bb.r
  call void @psa_reset_key_attributes(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %psa_key_derivation_hkdf_read.exit

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.ai, align 8, !tbaa !56
  call void @psa_reset_key_attributes(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bk = load i8, ptr %i.ag, align 1, !tbaa !80
  %.not79.i = icmp eq i8 %i.bk, 1
  br i1 %.not79.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %psa_key_derivation_hkdf_read.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.x, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 1) #19 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %psa_mac_update.exit.thread126.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.af, i64 range(i64 1, 0) %i.ak, i1 false)
  %i.bp = load i32, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %cond.i.i.i = icmp eq i32 %i.bp, 1
  br i1 %cond.i.i.i, label %psa_driver_wrapper_mac_update.exit.i.i, label %psa_driver_wrapper_mac_update.exit.thread.i.i

psa_driver_wrapper_mac_update.exit.i.i:           ; preds = %bb.w
  %i.bq = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.as, ptr noundef nonnull %i.bn, i64 noundef range(i64 1, 0) %i.ak) #20 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not17.i.i, label %psa_mac_update.exit.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %psa_driver_wrapper_mac_update.exit.i.i
  %.pr.i.i = load i32, ptr %i.ai, align 8, !tbaa !56
  br label %psa_driver_wrapper_mac_update.exit.thread.i.i

psa_driver_wrapper_mac_update.exit.thread.i.i:    ; preds = %bb.w, %thread-pre-split.i.i
  %i.br = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bp, %bb.w ]
  %.0.i1828.i.i = phi i32 [ %i.bq, %thread-pre-split.i.i ], [ -135, %bb.w ] ; 2 uses
  switch i32 %i.br, label %psa_driver_wrapper_mac_abort.exit.i.i.i [
    i32 0, label %psa_mac_update.exit.thread126.i
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %psa_driver_wrapper_mac_update.exit.thread.i.i
  %i.bs = call i32 @mbedtls_psa_mac_abort(ptr noundef nonnull %i.as) #20 ; 0 uses
  br label %psa_driver_wrapper_mac_abort.exit.i.i.i

psa_driver_wrapper_mac_abort.exit.i.i.i:          ; preds = %bb.x, %psa_driver_wrapper_mac_update.exit.thread.i.i
  store i8 0, ptr %i.aq, align 4, !tbaa !58
  %i.bt = load i8, ptr %i.ap, align 1
  %i.bu = and i8 %i.bt, -2
  store i8 %i.bu, ptr %i.ap, align 1
  store i32 0, ptr %i.ai, align 8, !tbaa !56
  br label %psa_mac_update.exit.thread126.i

psa_mac_update.exit.thread126.i:                  ; preds = %bb.v, %psa_driver_wrapper_mac_abort.exit.i.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i
  %.sroa.8.024.i.ph.i = phi i64 [ %i.ak, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %i.ak, %psa_driver_wrapper_mac_update.exit.thread.i.i ], [ 0, %bb.v ]
  %.0.i.ph.i = phi i32 [ %.0.i1828.i.i, %psa_driver_wrapper_mac_abort.exit.i.i.i ], [ %.0.i1828.i.i, %psa_driver_wrapper_mac_update.exit.thread.i.i ], [ -141, %bb.v ]
  call void @mbedtls_zeroize_and_free(ptr noundef %i.bn, i64 noundef %.sroa.8.024.i.ph.i) #20
end_hunk_1
begin_hunk_2_@psa_key_derivation_output_key_custom:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store i64 %i.ci, ptr %i.cn, align 8, !tbaa !25
  %.val.i.i = load i32, ptr %i.ce, align 4, !tbaa !40
  %cond.i.i = icmp ult i32 %.val.i.i, 256
  br i1 %cond.i.i, label %bb.ak, label %psa_driver_wrapper_import_key.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.co = call i32 @psa_import_key_into_slot(ptr noundef nonnull %i.p, ptr noundef %.271.i, i64 noundef range(i64 0, 2305843009213693952) %i.t, ptr noundef nonnull %i.cl, i64 noundef %i.ci, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.b)
  %.pre103.i = load i64, ptr %i.b, align 8, !tbaa !27
  br label %psa_driver_wrapper_import_key.exit.i

psa_driver_wrapper_import_key.exit.i:             ; preds = %bb.ak, %bb.aj
  %i.cp = phi i64 [ %.pre103.i, %bb.ak ], [ %i.cb, %bb.aj ]
  %.0.i55.i = phi i32 [ %i.co, %bb.ak ], [ -135, %bb.aj ] ; 2 uses
  %i.cq = load i16, ptr %i.cd, align 2, !tbaa !47
  %i.cr = zext i16 %i.cq to i64
  %.not50.i = icmp eq i64 %i.cp, %i.cr
  br i1 %.not50.i, label %bb.al, label %.thread26

.thread23:                                        ; preds = %bb.ac, %bb.f, %bb.ab, %bb.aa
  %.0.i18.ph = phi i32 [ -134, %bb.aa ], [ -135, %bb.ab ], [ -135, %bb.f ], [ -141, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread

.thread26:                                        ; preds = %psa_driver_wrapper_import_key.exit.i, %bb.t, %bb.ag, %bb.ad, %psa_generate_derived_ecc_key_weierstrass_helper.exit.i, %bb.w, %bb.x, %bb.v, %bb.ah, %bb.ai
  %.3.i.ph = phi ptr [ %.271.i, %bb.ai ], [ %.271.i, %bb.ah ], [ null, %bb.v ], [ %i.bh, %bb.x ], [ %i.bh, %bb.w ], [ %.6.i, %psa_generate_derived_ecc_key_weierstrass_helper.exit.i ], [ %i.bw, %bb.ad ], [ %.271.i, %bb.ag ], [ null, %bb.t ], [ %.271.i, %psa_driver_wrapper_import_key.exit.i ]
  %.2.i.ph = phi i32 [ -141, %bb.ai ], [ -139, %bb.ah ], [ -141, %bb.v ], [ -151, %bb.x ], [ %i.bj, %bb.w ], [ %.268.i.i, %psa_generate_derived_ecc_key_weierstrass_helper.exit.i ], [ %i.by, %bb.ad ], [ %i.ch, %bb.ag ], [ -135, %bb.t ], [ -135, %psa_driver_wrapper_import_key.exit.i ]
  call void @mbedtls_zeroize_and_free(ptr noundef %.3.i.ph, i64 noundef %i.t) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread

bb.al:                                            ; preds = %psa_driver_wrapper_import_key.exit.i
  call void @mbedtls_zeroize_and_free(ptr noundef %.271.i, i64 noundef %i.t) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cs = icmp eq i32 %.0.i55.i, 0
  br i1 %i.cs, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !31  ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = and i32 %i.cv, 255
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.thread.i19, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !25
  %i.dc = call i32 @psa_save_persistent_key(ptr noundef nonnull %i.ct, ptr noundef %i.cz, i64 noundef %i.db) #20 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread.i19, label %.thread

.thread.i19:                                      ; preds = %bb.an, %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33
  store i32 %i.df, ptr %5, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !28
  %.not.i.i20 = icmp eq i32 %i.dh, 1
  br i1 %.not.i.i20, label %psa_finish_key_creation.exit, label %psa_key_slot_state_transition.exit.i

psa_key_slot_state_transition.exit.i:             ; preds = %.thread.i19
  store i32 0, ptr %5, align 4, !tbaa !4
  br label %.thread

psa_finish_key_creation.exit:                     ; preds = %.thread.i19
  store i32 2, ptr %i.dg, align 8, !tbaa !28
  br label %psa_fail_key_creation.exit

.thread:                                          ; preds = %bb.e, %.thread26, %bb.al, %.thread23, %psa_key_slot_state_transition.exit.i, %bb.an
  %.1.ph = phi i32 [ %i.dc, %bb.an ], [ -151, %psa_key_slot_state_transition.exit.i ], [ %.0.i18.ph, %.thread23 ], [ %.2.i.ph, %.thread26 ], [ %.0.i55.i, %bb.al ], [ %i.n, %bb.e ] ; 5 uses
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !31  ; 12 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %psa_fail_key_creation.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %psa_remove_key_data_from_memory.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !25
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.dl, i64 noundef %i.dn) #20
  br label %psa_remove_key_data_from_memory.exit.i.i

psa_remove_key_data_from_memory.exit.i.i:         ; preds = %bb.ap, %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !28
  switch i32 %i.dp, label %.thread.i.i [
    i32 2, label %bb.aq
    i32 3, label %bb.aq
    i32 1, label %bb.ar
  ]

.thread.i.i:                                      ; preds = %psa_remove_key_data_from_memory.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.di, i8 0, i64 56, i1 false)
  br label %psa_fail_key_creation.exit

bb.aq:                                            ; preds = %psa_remove_key_data_from_memory.exit.i.i, %psa_remove_key_data_from_memory.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !29
  %.not9.i.i = icmp eq i64 %i.dr, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.di, i8 0, i64 56, i1 false)
  br i1 %.not9.i.i, label %bb.as, label %psa_fail_key_creation.exit

bb.ar:                                            ; preds = %psa_remove_key_data_from_memory.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !29
  %.not.i.i21 = icmp eq i64 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.di, i8 0, i64 56, i1 false)
  br i1 %.not.i.i21, label %bb.as, label %psa_fail_key_creation.exit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dy = phi i8 [ %i.dt, %bb.aq ], [ %i.dx, %bb.ar ]
  %i.dz = zext i8 %i.dy to i64
  %i.ea = call i32 @psa_free_key_slot(i64 noundef %i.dz, ptr noundef nonnull %i.di) #20 ; 0 uses
  br label %psa_fail_key_creation.exit

psa_fail_key_creation.exit:                       ; preds = %bb.as, %bb.ar, %bb.aq, %.thread.i.i, %.thread, %psa_finish_key_creation.exit, %bb.d, %bb.c, %bb.b, %bb.a
  %.014 = phi i32 [ -135, %bb.a ], [ -135, %bb.b ], [ -133, %bb.d ], [ -137, %bb.c ], [ 0, %psa_finish_key_creation.exit ], [ %.1.ph, %.thread ], [ %.1.ph, %.thread.i.i ], [ %.1.ph, %bb.aq ], [ %.1.ph, %bb.ar ], [ %.1.ph, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_output_key_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @psa_key_derivation_output_key_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nonnull poison, i64 noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_output_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @psa_key_derivation_output_key_custom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @default_custom_production, ptr poison, i64 noundef 0, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_setup(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !75
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, -2013200385                  ; 2 uses
  %i.c = and i32 %1, -16711681
  %or.cond = icmp eq i32 %i.c, 150994944
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %1, 2130706432
  switch i32 %i.d, label %.thread [
    i32 150994944, label %bb.d
    i32 134217728, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %1, -151060480
  %switch.selectcmp.i = icmp ult i32 %i.e, 131072
  br i1 %switch.selectcmp.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not32 = icmp eq i32 %i.b, 134219273
  br i1 %.not32, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.b, %bb.e ], [ %1, %bb.c ]
  %i.f = tail call fastcc i32 @psa_key_derivation_setup_kdf(ptr noundef nonnull %0, i32 noundef %.sink) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %0, align 8, !tbaa !75
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d, %bb.f, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ -135, %bb.b ], [ -137, %bb.a ], [ -135, %bb.c ], [ %i.f, %bb.f ], [ 0, %bb.g ], [ -135, %bb.e ], [ -134, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_key_derivation_setup_kdf(ptr nofree noundef writeonly captures(none) initializes((16, 568)) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.psa_hash_operation_s, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.a, i8 0, i64 552, i1 false)
  %3 = lshr i32 %1, 8                             ; 2 uses
  %i.b = add nsw i32 %3, -524294
  %switch.i = icmp ult i32 %i.b, -5
  %i.c = icmp ne i32 %1, 134219273                ; 2 uses
  %narrow.i.not = and i1 %i.c, %switch.i
  br i1 %narrow.i.not, label %psa_key_derivation_set_maximum_capacity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 32, ptr %i.d, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.d:                                             ; preds = %bb.b
  %i.e = and i32 %1, 255                          ; 5 uses
  %i.f = or disjoint i32 %i.e, 33554432
  %switch.tableidx = add nsw i32 %i.e, -3         ; 3 uses
  %i.g = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 124903, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %psa_key_derivation_set_maximum_capacity.exit

switch.lookup:                                    ; preds = %bb.d
  %i.h = icmp eq i32 %i.e, 0
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.psa_mac_finalize_alg_and_key_validation, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 0, ptr %2, align 8
  br i1 %i.h, label %psa_hash_try_support.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.j, i8 0, i64 224, i1 false)
  %i.k = call i32 @mbedtls_psa_hash_setup(ptr noundef nonnull %i.j, i32 noundef range(i32 0, 33554688) %i.f) #20 ; 3 uses
  %cond.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %cond.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pr.i.i.i = load i32, ptr %2, align 8, !tbaa !54
  %cond.i.i = icmp eq i32 %.pr.i.i.i, 1
  br i1 %cond.i.i, label %psa_hash_try_support.exit.i, label %psa_hash_try_support.exit.thread.i

psa_hash_try_support.exit.thread.i:               ; preds = %bb.f, %switch.lookup
  %.011.i3.i.ph.i = phi i32 [ -135, %switch.lookup ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %psa_key_derivation_set_maximum_capacity.exit

psa_hash_try_support.exit.i:                      ; preds = %bb.f
  %i.l = call i32 @mbedtls_psa_hash_abort(ptr noundef nonnull %i.j) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 8, !tbaa !54
  %i.m = call i32 @mbedtls_psa_hash_abort(ptr noundef nonnull %i.j) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  switch i32 %3, label %psa_key_derivation_set_maximum_capacity.exit [
    i32 524289, label %bb.h
    i32 524292, label %bb.i
    i32 524293, label %bb.j
    i32 524290, label %bb.k
    i32 524291, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = mul nuw nsw i64 %switch.ext, 255
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %switch.ext, ptr %i.p, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.j:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %switch.ext, 255
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.k:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.e, -9
  %or.cond.i = icmp ult i32 %i.s, 2
  br i1 %or.cond.i, label %bb.l, label %psa_key_derivation_set_maximum_capacity.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.t, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

bb.m:                                             ; preds = %bb.g
  %.old.i = add nsw i32 %i.e, -9
  %or.cond3.old.i = icmp ult i32 %.old.i, 2
  br i1 %or.cond3.old.i, label %bb.n, label %psa_key_derivation_set_maximum_capacity.exit

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 48, ptr %i.u, align 8, !tbaa !77
  br label %psa_key_derivation_set_maximum_capacity.exit

psa_key_derivation_set_maximum_capacity.exit:     ; preds = %bb.d, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %psa_hash_try_support.exit.i, %psa_hash_try_support.exit.thread.i, %bb.c, %bb.a
  %.0 = phi i32 [ -134, %bb.a ], [ 0, %bb.c ], [ %.011.i3.i.ph.i, %psa_hash_try_support.exit.thread.i ], [ %i.k, %psa_hash_try_support.exit.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ -134, %bb.g ], [ -134, %bb.m ], [ -134, %bb.d ], [ -134, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @psa_key_derivation_input_bytes(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 1) #19 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %psa_crypto_local_input_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 range(i64 1, 0) %3, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0.ph = phi ptr [ %i.b, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.d = tail call fastcc i32 @psa_key_derivation_input_internal(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef %.sroa.0.0.ph, i64 noundef %3)
  br label %psa_crypto_local_input_alloc.exit

psa_crypto_local_input_alloc.exit:                ; preds = %bb.b, %bb.d
  %.sroa.8.015 = phi i64 [ %3, %bb.d ], [ 0, %bb.b ]
  %.sroa.0.014 = phi ptr [ %.sroa.0.0.ph, %bb.d ], [ null, %bb.b ]
  %.0 = phi i32 [ %i.d, %bb.d ], [ -141, %bb.b ]
  tail call void @mbedtls_zeroize_and_free(ptr noundef %.sroa.0.014, i64 noundef %.sroa.8.015) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_key_derivation_input_internal(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %6 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %.val = load i32, ptr %0, align 8, !tbaa !75    ; 3 uses
  %i.b = and i32 %.val, 2130706432
  %i.c = icmp eq i32 %i.b, 150994944
  %i.d = and i32 %.val, -2013200385
  %.0.i = select i1 %i.c, i32 %i.d, i32 %.val     ; 8 uses
  %i.e = icmp eq i32 %.0.i, 0
  br i1 %i.e, label %psa_key_derivation_check_input_type.exit.thread47, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %1, label %psa_key_derivation_check_input_type.exit.thread47 [
    i16 257, label %bb.c
    i16 259, label %bb.d
    i16 513, label %bb.e
    i16 514, label %bb.e
    i16 515, label %bb.e
    i16 516, label %bb.e
    i16 258, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  switch i16 %2, label %psa_key_derivation_check_input_type.exit.thread47 [
    i16 4608, label %select.unfold
    i16 0, label %select.unfold
  ]

bb.d:                                             ; preds = %bb.b
  switch i16 %2, label %psa_key_derivation_check_input_type.exit.thread47 [
    i16 4608, label %select.unfold
    i16 0, label %select.unfold
  ]

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  switch i16 %2, label %psa_key_derivation_check_input_type.exit.thread47 [
    i16 4097, label %select.unfold
    i16 0, label %select.unfold
  ]

bb.f:                                             ; preds = %bb.b
  switch i16 %2, label %psa_key_derivation_check_input_type.exit.thread47 [
    i16 4611, label %select.unfold
    i16 4608, label %select.unfold
    i16 0, label %select.unfold
  ]

select.unfold:                                    ; preds = %bb.e, %bb.e, %bb.d, %bb.d, %bb.c, %bb.c, %bb.f, %bb.f, %bb.f
  %i.f = and i32 %.0.i, -256                      ; 5 uses
  %i.g = lshr i32 %.0.i, 8
  switch i32 %i.g, label %bb.bj [
    i32 524289, label %bb.g
    i32 524292, label %bb.g
    i32 524293, label %bb.g
    i32 524290, label %bb.an
    i32 524291, label %bb.ao
  ]

bb.g:                                             ; preds = %select.unfold, %select.unfold, %select.unfold
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %4, ptr %i.a, align 8, !tbaa !27
  %i.i = and i32 %.0.i, 255                       ; 4 uses
  switch i16 %1, label %psa_hkdf_input.exit [
    i16 514, label %bb.h
    i16 257, label %bb.m
    i16 515, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = icmp eq i32 %i.f, 134219008
  br i1 %i.j, label %psa_hkdf_input.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 3
  %.not103.i = icmp eq i8 %i.m, 0
  br i1 %.not103.i, label %bb.j, label %psa_hkdf_input.exit

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  store i16 4352, ptr %6, align 4, !tbaa !26
  %i.p = shl i64 %4, 3                            ; 2 uses
  %i.q = icmp ugt i64 %i.p, 65528
  %i.r = trunc nuw i64 %i.p to i16
  %spec.select.i.i.i = select i1 %i.q, i16 -1, i16 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %spec.select.i.i.i, ptr %i.s, align 2, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 5120, ptr %i.t, align 4, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.n, i8 0, i64 400, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 1, ptr %i.u, align 1
  %switch.tableidx = add nsw i32 %i.i, -3         ; 2 uses
  %i.v = icmp ult i32 %switch.tableidx, 17
  br i1 %i.v, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.33, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup
  %i.x = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.x, ptr %i.y, align 4, !tbaa !58
  %i.z = or disjoint i32 %i.i, 58720256
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.aa, ptr noundef nonnull %6, ptr noundef %3, i64 noundef %4, i32 noundef %i.z) #20 ; 2 uses
  %cond.i.i = icmp eq i32 %i.ab, 0
  br i1 %cond.i.i, label %bb.l, label %psa_key_derivation_start_hmac.exit.i

psa_key_derivation_start_hmac.exit.i:             ; preds = %bb.k
  call void @psa_reset_key_attributes(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %psa_hkdf_input.exit

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.n, align 8, !tbaa !56
  call void @psa_reset_key_attributes(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ac = load i8, ptr %i.k, align 2
  %i.ad = and i8 %i.ac, -4
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %i.k, align 2
  br label %psa_hkdf_input.exit

bb.m:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.f, 134219008
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 6 uses
  %i.ah = load i8, ptr %i.ag, align 2             ; 3 uses
  %i.ai = and i8 %i.ah, 3
  %.not101.i = icmp eq i8 %i.ai, 0                ; 2 uses
  br i1 %i.af, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %.not101.i, label %bb.o, label %psa_hkdf_input.exit

bb.o:                                             ; preds = %bb.n
  %trunc155.i = trunc i32 %.0.i to i8             ; 2 uses
  %switch.tableidx70 = add i8 %trunc155.i, -3     ; 2 uses
  %i.aj = icmp ult i8 %switch.tableidx70, 17
  br i1 %i.aj, label %switch.lookup71, label %bb.p

switch.lookup71:                                  ; preds = %bb.o
  %i.ak = zext nneg i8 %switch.tableidx70 to i64
  %switch.gep72 = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.33, i64 %i.ak
  %switch.load73 = load i8, ptr %switch.gep72, align 1
  %switch.ext = zext i8 %switch.load73 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup71
  %i.al = phi i64 [ %switch.ext, %switch.lookup71 ], [ 0, %bb.o ]
  %.not102.i = icmp eq i64 %4, %i.al
  br i1 %.not102.i, label %.thread.i, label %psa_hkdf_input.exit

.thread.i:                                        ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 99
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %3, i64 %4, i1 false)
  %i.an = or disjoint i8 %i.ah, 2
  store i8 %i.an, ptr %i.ag, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.ao, align 1, !tbaa !80
  br label %bb.ae

bb.q:                                             ; preds = %bb.m
  br i1 %.not101.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ap = icmp eq i32 %i.f, 134218752
  br i1 %i.ap, label %psa_hkdf_input.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  store i16 4352, ptr %5, align 4, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.as, align 2, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 5120, ptr %i.at, align 4, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.aq, i8 0, i64 400, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 1, ptr %i.au, align 1
  %switch.tableidx74 = add nsw i32 %i.i, -3       ; 2 uses
  %i.av = icmp ult i32 %switch.tableidx74, 17
  br i1 %i.av, label %switch.lookup75, label %bb.t

switch.lookup75:                                  ; preds = %bb.s
  %i.aw = zext nneg i32 %switch.tableidx74 to i64
  %switch.gep76 = getelementptr inbounds nuw i8, ptr @switch.table.psa_key_policy_algorithm_intersection.33, i64 %i.aw
  %switch.load77 = load i8, ptr %switch.gep76, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %switch.lookup75
  %i.ax = phi i8 [ %switch.load77, %switch.lookup75 ], [ 0, %bb.s ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.ax, ptr %i.ay, align 4, !tbaa !58
  %i.az = or disjoint i32 %i.i, 58720256
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.ba, ptr noundef nonnull %5, ptr noundef null, i64 noundef 0, i32 noundef %i.az) #20 ; 2 uses
  %cond.i140.i = icmp eq i32 %i.bb, 0
  br i1 %cond.i140.i, label %bb.u, label %psa_key_derivation_start_hmac.exit145.i

psa_key_derivation_start_hmac.exit145.i:          ; preds = %bb.t
  call void @psa_reset_key_attributes(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %psa_hkdf_input.exit

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.aq, align 8, !tbaa !56
  call void @psa_reset_key_attributes(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bc = load i8, ptr %i.ag, align 2
  %i.bd = and i8 %i.bc, -4
  %i.be = or disjoint i8 %i.bd, 1                 ; 2 uses
  store i8 %i.be, ptr %i.ag, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.bf = phi i8 [ %i.be, %bb.u ], [ %i.ah, %bb.q ]
  %i.bg = and i8 %i.bf, 3
  %.not98.i = icmp eq i8 %i.bg, 1
  br i1 %.not98.i, label %bb.w, label %psa_hkdf_input.exit

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %psa_hkdf_input.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp eq i64 %4, 0
  br i1 %i.bk, label %psa_mac_update.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #19 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %psa_mac_update.exit.thread151.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
  %i.bn = load i32, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %cond.i.i.i = icmp eq i32 %i.bn, 1
  br i1 %cond.i.i.i, label %psa_driver_wrapper_mac_update.exit.i.i, label %psa_driver_wrapper_mac_update.exit.thread.i.i

psa_driver_wrapper_mac_update.exit.i.i:           ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bp = call i32 @mbedtls_psa_mac_update(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bl, i64 noundef range(i64 1, 0) %4) #20 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.bp, 0
end_hunk_2
begin_hunk_3_@psa_generate_key_custom:bb.a
  %.not54 = icmp eq i32 %i.bc, 0
  br i1 %.not54, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre82 = load i64, ptr %i.c, align 8, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.v
  %i.bd = phi i64 [ %.pre82, %._crit_edge ], [ %i.bb, %bb.v ] ; 3 uses
  %i.be = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.v ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  %.not.i67 = icmp eq ptr %i.bg, null
  br i1 %.not.i67, label %bb.y, label %.thread.thread

bb.y:                                             ; preds = %bb.x
  %i.bh = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bd) #19 ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !18
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread, label %psa_allocate_buffer_to_slot.exit

psa_allocate_buffer_to_slot.exit:                 ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i64 %i.bd, ptr %i.bj, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %psa_allocate_buffer_to_slot.exit, %bb.g
  %i.bk = phi i64 [ %i.bd, %psa_allocate_buffer_to_slot.exit ], [ %i.n, %bb.g ]
  %i.bl = phi ptr [ %i.be, %psa_allocate_buffer_to_slot.exit ], [ %i.l, %bb.g ] ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.bm, align 4, !tbaa !40
  %i.bn = load i32, ptr %1, align 4, !tbaa !96
  %.not.i.i = icmp ne i32 %i.bn, 0
  %.not2.i.i = icmp ne i64 %3, 0
  %narrow.i.not18.i = or i1 %.not2.i.i, %.not.i.i
  %i.bo = icmp ugt i32 %.val.i, 255               ; 2 uses
  %or.cond.not17.i = select i1 %i.bo, i1 %narrow.i.not18.i, i1 false
  %.mux.i = select i1 %or.cond.not17.i, i32 -134, i32 -135
  br i1 %i.bo, label %psa_driver_wrapper_generate_key.exit.thread, label %psa_driver_wrapper_generate_key.exit

psa_driver_wrapper_generate_key.exit:             ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = call i32 @psa_generate_key_internal(ptr noundef nonnull %0, ptr nonnull readonly poison, ptr noundef %2, i64 noundef %3, ptr noundef %i.br, i64 noundef %i.bk, ptr noundef nonnull %i.bp) ; 2 uses
  %.not65 = icmp eq i32 %i.bs, 0
  %.pre83 = load ptr, ptr %i.a, align 8, !tbaa !31 ; 7 uses
  br i1 %.not65, label %bb.ab, label %psa_driver_wrapper_generate_key.exit.thread

psa_driver_wrapper_generate_key.exit.thread:      ; preds = %bb.z, %psa_driver_wrapper_generate_key.exit
  %i.bt = phi ptr [ %.pre83, %psa_driver_wrapper_generate_key.exit ], [ %i.bl, %bb.z ] ; 2 uses
  %.0.i6977 = phi i32 [ %i.bs, %psa_driver_wrapper_generate_key.exit ], [ %.mux.i, %bb.z ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %.not.i70 = icmp eq ptr %i.bv, null
  br i1 %.not.i70, label %psa_remove_key_data_from_memory.exit, label %bb.aa

bb.aa:                                            ; preds = %psa_driver_wrapper_generate_key.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !25
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bv, i64 noundef %i.bx) #20
  br label %psa_remove_key_data_from_memory.exit

psa_remove_key_data_from_memory.exit:             ; preds = %psa_driver_wrapper_generate_key.exit.thread, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  br label %.thread

bb.ab:                                            ; preds = %psa_driver_wrapper_generate_key.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.pre83, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !32
  %i.ca = and i32 %i.bz, 255
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre83, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre83, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25
  %i.cg = call i32 @psa_save_persistent_key(ptr noundef nonnull %.pre83, ptr noundef %i.cd, i64 noundef %i.cf) #20 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread.i, label %.thread

.thread.i:                                        ; preds = %bb.ac, %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre83, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !33
  store i32 %i.cj, ptr %4, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre83, i64 24 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !28
  %.not.i.i71 = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i71, label %psa_finish_key_creation.exit, label %psa_key_slot_state_transition.exit.i

psa_key_slot_state_transition.exit.i:             ; preds = %.thread.i
  store i32 0, ptr %4, align 4, !tbaa !4
  br label %.thread

psa_finish_key_creation.exit:                     ; preds = %.thread.i
  store i32 2, ptr %i.ck, align 8, !tbaa !28
  br label %psa_fail_key_creation.exit

.thread:                                          ; preds = %bb.y, %bb.w, %psa_remove_key_data_from_memory.exit, %bb.i, %bb.f, %psa_key_slot_state_transition.exit.i, %bb.ac
  %.1.ph.ph = phi i32 [ -141, %bb.y ], [ %i.v, %bb.i ], [ %i.k, %bb.f ], [ %.0.i6977, %psa_remove_key_data_from_memory.exit ], [ %i.bc, %bb.w ], [ -151, %psa_key_slot_state_transition.exit.i ], [ %i.cg, %bb.ac ] ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.cm = icmp eq ptr %.pr, null
  br i1 %i.cm, label %psa_fail_key_creation.exit, label %.thread.thread

.thread.thread:                                   ; preds = %bb.x, %.thread
  %.1.ph93 = phi i32 [ %.1.ph.ph, %.thread ], [ -139, %bb.x ] ; 4 uses
  %i.cn = phi ptr [ %.pr, %.thread ], [ %i.be, %bb.x ] ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %psa_remove_key_data_from_memory.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.thread.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cp, i64 noundef %i.cr) #20
  br label %psa_remove_key_data_from_memory.exit.i.i

psa_remove_key_data_from_memory.exit.i.i:         ; preds = %bb.ad, %.thread.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !28
  switch i32 %i.ct, label %.thread.i.i [
    i32 2, label %bb.ae
    i32 3, label %bb.ae
    i32 1, label %bb.af
  ]

.thread.i.i:                                      ; preds = %psa_remove_key_data_from_memory.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i8 0, i64 56, i1 false)
  br label %psa_fail_key_creation.exit

bb.ae:                                            ; preds = %psa_remove_key_data_from_memory.exit.i.i, %psa_remove_key_data_from_memory.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !29
  %.not9.i.i = icmp eq i64 %i.cv, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i8 0, i64 56, i1 false)
  br i1 %.not9.i.i, label %bb.ag, label %psa_fail_key_creation.exit

bb.af:                                            ; preds = %psa_remove_key_data_from_memory.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !29
  %.not.i.i72 = icmp eq i64 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.db = load i8, ptr %i.da, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i8 0, i64 56, i1 false)
  br i1 %.not.i.i72, label %bb.ag, label %psa_fail_key_creation.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dc = phi i8 [ %i.cx, %bb.ae ], [ %i.db, %bb.af ]
  %i.dd = zext i8 %i.dc to i64
  %i.de = call i32 @psa_free_key_slot(i64 noundef %i.dd, ptr noundef nonnull %i.cn) #20 ; 0 uses
  br label %psa_fail_key_creation.exit

psa_fail_key_creation.exit:                       ; preds = %bb.ag, %bb.af, %bb.ae, %.thread.i.i, %.thread, %psa_finish_key_creation.exit, %bb.e, %bb.d, %bb.b, %bb.a
  %.042 = phi i32 [ -135, %bb.d ], [ -135, %bb.a ], [ -135, %bb.b ], [ -135, %bb.e ], [ 0, %psa_finish_key_creation.exit ], [ %.1.ph.ph, %.thread ], [ %.1.ph93, %.thread.i.i ], [ %.1.ph93, %bb.ae ], [ %.1.ph93, %bb.af ], [ %.1.ph93, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -135, 1) i32 @psa_validate_key_type_and_size_for_key_generation(i16 noundef zeroext %0, i64 noundef range(i64 0, 65536) %1) unnamed_addr #1 {
bb.a:
  %i.a = and i16 %0, 28672
  switch i16 %i.a, label %bb.c [
    i16 8192, label %bb.b
    i16 4096, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = tail call i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %0, i64 noundef %1) ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %psa_is_dh_key_size_valid.exit, label %psa_is_dh_key_size_valid.exit.thread

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp eq i16 %0, 28673
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i64 %1, -1024
  %or.cond25 = icmp ult i64 %i.c, 3073
  %i.d = and i64 %1, 7
  %.not18 = icmp eq i64 %i.d, 0
  %or.cond26 = and i1 %or.cond25, %.not18
  br i1 %or.cond26, label %psa_is_dh_key_size_valid.exit, label %psa_is_dh_key_size_valid.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.e = and i16 %0, -256
  switch i16 %i.e, label %psa_is_dh_key_size_valid.exit.thread.fold.split [
    i16 28928, label %psa_is_dh_key_size_valid.exit.thread
    i16 29184, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %2 = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 54)
  %switch.tableidx = add i64 %2, -2               ; 2 uses
  %i.f = icmp ult i64 %switch.tableidx, 7
  br i1 %i.f, label %switch.lookup, label %psa_is_dh_key_size_valid.exit.thread

psa_is_dh_key_size_valid.exit:                    ; preds = %bb.d, %bb.b
  br label %psa_is_dh_key_size_valid.exit.thread

psa_is_dh_key_size_valid.exit.thread.fold.split:  ; preds = %bb.e
  br label %psa_is_dh_key_size_valid.exit.thread

switch.lookup:                                    ; preds = %bb.f
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.psa_validate_key_type_and_size_for_key_generation, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %psa_is_dh_key_size_valid.exit.thread

psa_is_dh_key_size_valid.exit.thread:             ; preds = %switch.lookup, %bb.f, %bb.e, %psa_is_dh_key_size_valid.exit.thread.fold.split, %bb.d, %bb.b, %psa_is_dh_key_size_valid.exit
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %psa_is_dh_key_size_valid.exit ], [ %i.b, %bb.b ], [ -134, %bb.d ], [ -134, %bb.f ], [ -134, %psa_is_dh_key_size_valid.exit.thread.fold.split ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @psa_generate_key_ext(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = tail call i32 @psa_generate_key_custom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %2, ptr noundef %3)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @psa_generate_key(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @psa_generate_key_custom(ptr noundef %0, ptr noundef nonnull @default_custom_production, ptr noundef null, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -137, 1) i32 @mbedtls_psa_crypto_configure_entropy_sources(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !107
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @mbedtls_psa_crypto_free() local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @global_data, align 8, !tbaa !8 ; 3 uses
  %i.b = and i8 %i.a, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -5                          ; 2 uses
  store i8 %i.c, ptr @global_data, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i8 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = and i8 %i.d, 2
  %.not1 = icmp eq i8 %i.e, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @psa_wipe_all_key_slots() #20
  %i.f = load i8, ptr @global_data, align 8, !tbaa !8
  %i.g = and i8 %i.f, -3
  store i8 %i.g, ptr @global_data, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  %.not2 = icmp eq i8 %i.h, 0
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_ctr_drbg_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 856)) #20
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !109
  tail call void %i.i(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24)) #20, !inline_history !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 8), i64 noundef 1192) #20
  %i.j = load i8, ptr @global_data, align 8, !tbaa !8 ; 2 uses
  %i.k = and i8 %i.j, 1
  %.not3 = icmp eq i8 %i.k, 0
  br i1 %.not3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i8 %i.j, -2
  store i8 %i.l, ptr @global_data, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @psa_wipe_all_key_slots() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @psa_crypto_init() local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68 ; 2 uses
  %i.c = icmp ne i8 %i.b, 2
  %i.d = load i8, ptr @global_data, align 8       ; 4 uses
  %i.e = icmp ne i8 %i.d, 7
  %.not30 = select i1 %i.c, i1 true, i1 %i.e
  br i1 %.not30, label %bb.b, label %mbedtls_psa_crypto_free.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i8 %i.d, 1
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %bb.c, label %mbedtls_psa_crypto_init_subsystem.exit

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i8 %i.d, 1                   ; 2 uses
  store i8 %i.g, ptr @global_data, align 8, !tbaa !8
  br label %mbedtls_psa_crypto_init_subsystem.exit

mbedtls_psa_crypto_init_subsystem.exit:           ; preds = %bb.c, %bb.b
  %i.h = phi i8 [ %i.g, %bb.c ], [ %i.d, %bb.b ]  ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not7.i = icmp eq i8 %i.i, 0
  br i1 %.not7.i, label %mbedtls_psa_crypto_init_subsystem.exit14, label %mbedtls_psa_crypto_init_subsystem.exit14.thread

mbedtls_psa_crypto_init_subsystem.exit14:         ; preds = %mbedtls_psa_crypto_init_subsystem.exit
  %i.j = tail call i32 @psa_initialize_key_slots() #20 ; 2 uses
  %i.k = load i8, ptr @global_data, align 8, !tbaa !8
  %i.l = or i8 %i.k, 2                            ; 3 uses
  store i8 %i.l, ptr @global_data, align 8, !tbaa !8
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge, label %mbedtls_psa_crypto_init_subsystem.exit16

mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge: ; preds = %mbedtls_psa_crypto_init_subsystem.exit14
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  br label %mbedtls_psa_crypto_init_subsystem.exit14.thread

mbedtls_psa_crypto_init_subsystem.exit14.thread:  ; preds = %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge, %mbedtls_psa_crypto_init_subsystem.exit
  %i.m = phi i8 [ %i.b, %mbedtls_psa_crypto_init_subsystem.exit ], [ %.pre, %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge ]
  %i.n = phi i8 [ %i.h, %mbedtls_psa_crypto_init_subsystem.exit ], [ %i.l, %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge ] ; 2 uses
  %i.o = icmp eq i8 %i.m, 0
  %i.p = trunc i8 %i.n to i1
  %or.cond.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %mbedtls_psa_crypto_init_subsystem.exit14.thread
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !111 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @mbedtls_entropy_init, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ @mbedtls_entropy_init, %bb.e ], [ %i.q, %bb.d ]
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !109
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %mbedtls_psa_random_init.exit.i

bb.g:                                             ; preds = %bb.f
  store ptr @mbedtls_entropy_free, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !109
  br label %mbedtls_psa_random_init.exit.i

mbedtls_psa_random_init.exit.i:                   ; preds = %bb.g, %bb.f
  tail call void %i.s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24)) #20, !inline_history !112
  tail call void @mbedtls_ctr_drbg_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 856)) #20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 4281168, ptr %i.a, align 4
  %i.v = call i32 @mbedtls_ctr_drbg_seed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 856), ptr noundef nonnull @mbedtls_entropy_func, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24), ptr noundef nonnull %i.a, i64 noundef 3) #20
  %i.w = call range(i32 -151, 1) i32 @mbedtls_to_psa_error(i32 noundef %i.v) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge

mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge: ; preds = %mbedtls_psa_random_init.exit.i
  %.pre31 = load i8, ptr @global_data, align 8, !tbaa !8
  br label %mbedtls_psa_crypto_init_subsystem.exit16

bb.h:                                             ; preds = %mbedtls_psa_random_init.exit.i
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !68
  %.pre32 = load i8, ptr @global_data, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %mbedtls_psa_crypto_init_subsystem.exit14.thread, %bb.h
  %i.y = phi i8 [ %i.n, %mbedtls_psa_crypto_init_subsystem.exit14.thread ], [ %.pre32, %bb.h ] ; 2 uses
  %i.z = and i8 %i.y, 4
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.j, label %mbedtls_psa_crypto_free.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = or disjoint i8 %i.y, 4
  br label %mbedtls_psa_crypto_free.exit.sink.split

mbedtls_psa_crypto_init_subsystem.exit16:         ; preds = %mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge, %mbedtls_psa_crypto_init_subsystem.exit14
  %i.ab = phi i8 [ %.pre31, %mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge ], [ %i.l, %mbedtls_psa_crypto_init_subsystem.exit14 ] ; 3 uses
  %.0 = phi i32 [ %i.w, %mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge ], [ %i.j, %mbedtls_psa_crypto_init_subsystem.exit14 ] ; 2 uses
  %i.ac = and i8 %i.ab, 4
  %.not.i19 = icmp eq i8 %i.ac, 0
  br i1 %.not.i19, label %bb.l, label %bb.k

end_hunk_3
