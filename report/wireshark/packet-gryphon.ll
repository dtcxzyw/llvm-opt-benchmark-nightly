inline.NumInlined: 38
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@decode_data:bb.a
  %i.bj = load i32, ptr @hf_gryphon_data_padding, align 4
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %i.az, i32 noundef %i.bj, ptr noundef %0, i32 noundef %.2, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.bl = add i32 %.2, %i.l
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %i.bl, %bb.h ], [ %.2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_raw_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cmd_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12) ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_gryphon_cmd_mode, align 4
  %i.d = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.1029) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i8 %i.a to i32
  %i.f = load i32, ptr @hf_gryphon_cmd_mode, align 4
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull @.str.1030) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr @hf_gryphon_reserved, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef 13, i32 noundef 3, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @eventnum(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12)
  %.not = icmp eq i8 %i.a, 0
  %i.b = load i32, ptr @hf_gryphon_eventnum, align 4 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.1031) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 20, 25) i32 @resp_time(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = udiv i64 %i.a, 100000
  store i64 %i.b, ptr %3, align 8
  %i.c = urem i64 %i.a, 100000
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = load i32, ptr @hf_gryphon_resp_time, align 4
  %i.h = call ptr @proto_tree_add_time(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %1, i32 noundef 8, ptr noundef nonnull %3) ; 0 uses
  %i.i = add nuw nsw i32 %1, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 16, 21) i32 @speed(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_speed_baud_rate_index, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_reserved, align 4
  %i.d = add nuw nsw i32 %1, 1
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add nuw nsw i32 %1, 4
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 20, 132113) i32 @cmd_setfilt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 12) ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 16)
  %i.c = zext i8 %i.b to i32
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 17)
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, %i.c
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 18)
  %i.h = zext i16 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 3 uses
  %i.j = load i32, ptr @hf_gryphon_setfilt, align 4
  %.not = icmp eq i32 %i.a, 0
  %i.k = select i1 %.not, ptr @.str.771, ptr @.str.770
  %i.l = icmp eq i32 %i.i, 0                      ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.1033, ptr @.str.557
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef %i.a, ptr noundef nonnull @.str.1032, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m) ; 0 uses
  %i.o = load i32, ptr @hf_gryphon_setfilt_length, align 4
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.o, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef %i.i) ; 0 uses
  br i1 %i.l, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr @hf_gryphon_setfilt_discard_data, align 4
  %i.r = shl nuw nsw i32 %i.i, 1                  ; 3 uses
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.q, ptr noundef %0, i32 noundef 20, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  %i.t = add nuw nsw i32 %i.r, 20                 ; 3 uses
  %i.u = and i32 %i.r, 2                          ; 3 uses
  %.not37 = icmp eq i32 %i.u, 0
  br i1 %.not37, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr @hf_gryphon_setfilt_padding, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  %i.x = add nuw nsw i32 %i.t, %i.u
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.1 = phi i32 [ %i.x, %bb.c ], [ %i.t, %bb.b ], [ 20, %bb.a ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 16, 21) i32 @resp_addfilt(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_addfilt_handle, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_reserved, align 4
  %i.d = add nuw nsw i32 %1, 1
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add nuw nsw i32 %1, 4
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @cmd_addfilt(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i32, ptr @ett_gryphon_flags, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.30) ; 2 uses
  %i.d = load i32, ptr @hf_gryphon_addfilt_pass, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_gryphon_addfilt_active, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add nuw nsw i32 %1, 1
  %i.i = load i32, ptr @hf_gryphon_addfilt_blocks, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = load i32, ptr @hf_gryphon_reserved, align 4
  %i.l = add nuw nsw i32 %1, 2
  %i.m = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.n = add nuw nsw i32 %1, 8                    ; 2 uses
  %i.o = load i8, ptr %i.a, align 1
  %.not33 = icmp eq i8 %i.o, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.035 = phi i32 [ %i.x, %.lr.ph ], [ %i.n, %bb.a ] ; 3 uses
  %.03134 = phi i8 [ %i.y, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.p = zext i8 %.03134 to i32
  %i.q = add i32 %.035, 2
  %i.r = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.q)
  %i.s = add i16 %i.r, 8
  %i.t = zext i16 %i.s to i32
  %3 = add nuw nsw i32 %i.t, 3
  %i.u = and i32 %3, 131068
  %i.v = load i32, ptr @ett_gryphon_cmd_filter_block, align 4
  %i.w = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.035, i32 noundef %i.u, i32 noundef %i.v, ptr noundef null, ptr noundef nonnull @.str.1034, i32 noundef %i.p)
  %i.x = call fastcc i32 @filter_block(ptr noundef %0, i32 noundef %.035, ptr noundef %i.w) ; 2 uses
  %i.y = add i8 %.03134, 1                        ; 2 uses
  %i.z = load i8, ptr %i.a, align 1
  %.not = icmp ugt i8 %i.y, %i.z
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.n, %bb.a ], [ %i.x, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cmd_modfilt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12)
  %.not = icmp eq i8 %i.a, 0
  %i.b = load i32, ptr @hf_gryphon_modfilt, align 4 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.1035) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr @hf_gryphon_modfilt_action, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gryphon_reserved, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 16, 21) i32 @dfiltmode(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_dfiltmode, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_reserved, align 4
  %i.d = add nuw nsw i32 %1, 1
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add nuw nsw i32 %1, 4
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 16, 21) i32 @filtmode(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_filtmode, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_reserved, align 4
  %i.d = add nuw nsw i32 %1, 1
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add nuw nsw i32 %1, 4
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cmd_register(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_register_username, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 12, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_register_password, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 28, i32 noundef 32, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 20, 25) i32 @blm_mode(ptr noundef %0, i32 noundef range(i32 12, 17) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i32, ptr @hf_gryphon_blm_mode, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.d = load i32, ptr @ett_gryphon_blm_mode, align 4
  %i.e = call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = add nuw nsw i32 %1, 4                    ; 4 uses
  %i.g = load i32, ptr %i.a, align 4
  switch i32 %i.g, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.f) ; 3 uses
  %i.i = load i32, ptr @hf_gryphon_blm_mode_avg_period, align 4
  %i.j = udiv i32 %i.h, 1000
  %i.k = urem i32 %i.h, 1000
  %i.l = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef %i.h, ptr noundef nonnull @.str.1036, i32 noundef %i.j, i32 noundef %i.k) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_gryphon_blm_mode_avg_frames, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = load i32, ptr @hf_gryphon_reserved, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.q = add nuw nsw i32 %1, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cmd_ldf_desc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_gryphon_ldf_size, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gryphon_ldf_name, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 16, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_gryphon_ldf_description, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 48, i32 noundef 80, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @cmd_ldf_upload(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 12) ; 2 uses
  %i.b = load i32, ptr @hf_gryphon_ldf_blockn, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_gryphon_ldf_file, align 4
  %i.e = add i32 %i.a, -2
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 14, i32 noundef %i.e, i32 noundef 0) ; 0 uses
  %i.g = add i32 %i.a, 12
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @cmd_ldf_get_frame_info(ptr noundef %0, ptr %.416.val, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call ptr @tvb_get_stringz_enc(ptr noundef %.416.val, ptr noundef %0, i32 noundef 12, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_gryphon_ldf_get_frame, align 4
  %i.f = call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 12, i32 noundef %i.c, ptr noundef %i.b) ; 0 uses
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = add i32 %i.g, 12
  %i.i = load i32, ptr @hf_gryphon_ldf_ioctl_setflags_flags, align 4
  %i.j = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.1037) ; 0 uses
  %i.k = add i32 %i.g, 13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12)
  %i.m = load i32, ptr @hf_gryphon_ldf_ioctl_setflags_flags, align 4
  %i.n = zext i8 %i.l to i32                      ; 2 uses
  %i.o = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef %i.n, ptr noundef nonnull @.str.1038, i32 noundef %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 13, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @cmd_ldf_save_session(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 12) ; 2 uses
  %i.b = load i32, ptr @hf_gryphon_ldf_restore_session, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 12, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.d = add i32 %i.a, 12
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @cmd_ldf_emulate_nodes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12) ; 2 uses
  %i.c = load i32, ptr @hf_gryphon_ldf_nodenumber, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext i8 %i.b to i32
  %i.f = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi i32 [ 13, %.lr.ph ], [ %i.v, %bb.b ] ; 4 uses
  %.02932 = phi i32 [ 1, %.lr.ph ], [ %i.w, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = add i32 %.033, 1                         ; 3 uses
  %i.i = call ptr @tvb_get_stringz_enc(ptr noundef %i.g, ptr noundef %0, i32 noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0)
end_hunk_0
