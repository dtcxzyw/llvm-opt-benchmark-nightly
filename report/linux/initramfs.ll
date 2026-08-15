inline.NumInlined: 45
inline.NumDeleted: 19
begin_hunk_0_@flush_buffer:bb.a
  br i1 %.not, label %.preheader.outer, label %.critedge

.preheader.outer:                                 ; preds = %bb.a, %.preheader.outer.backedge
  %.019.ph = phi ptr [ %i.n, %.preheader.outer.backedge ], [ %0, %bb.a ] ; 4 uses
  %.018.ph = phi i64 [ %i.g, %.preheader.outer.backedge ], [ %1, %bb.a ] ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %error.exit
  store i64 %.018.ph, ptr @byte_count, align 8
  store ptr %.019.ph, ptr @victim, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %i.b = load i32, ptr @state, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @actions, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 %i.e() #20, !inline_history !12
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %write_buffer.exit, !llvm.loop !13

write_buffer.exit:                                ; preds = %bb.b
  %i.g = load i64, ptr @byte_count, align 8       ; 2 uses
  %i.h = sub i64 %.018.ph, %i.g                   ; 4 uses
  %i.i = icmp ult i64 %i.h, %.018.ph
  %i.j = load ptr, ptr @message, align 8
  %.not23 = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.i, i1 %.not23, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %write_buffer.exit
  %i.k = getelementptr i8, ptr %.019.ph, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  switch i8 %i.l, label %error.exit [
    i8 48, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.019.ph, i64 %i.h
  br label %.preheader.outer.backedge

.preheader.outer.backedge:                        ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.o, %bb.e ], [ %i.m, %bb.d ]
  %storemerge = phi i32 [ 7, %bb.e ], [ 0, %bb.d ]
  store i32 %storemerge, ptr @state, align 4
  br label %.preheader.outer, !llvm.loop !18

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.019.ph, i64 %i.h
  br label %.preheader.outer.backedge

error.exit:                                       ; preds = %bb.c
  store ptr @.str.27, ptr @message, align 8
  br label %.preheader, !llvm.loop !18

.critedge:                                        ; preds = %write_buffer.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %1, %write_buffer.exit ]
  ret i64 %.0
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define internal void @error(ptr noundef %0) #5 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @message, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @message, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @dir_utime() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca [2 x %struct.timespec64], align 16  ; 7 uses
  %i.a = load ptr, ptr @dir_list, align 8         ; 2 uses
  %.not15 = icmp eq ptr %i.a, @dir_list
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi ptr [ %i.a, %.lr.ph ], [ %.014, %bb.b ] ; 6 uses
  %.014 = load ptr, ptr %.016, align 8            ; 4 uses
  %i.e = getelementptr i8, ptr %.016, i64 8       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %.014, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store volatile ptr %.014, ptr %i.f, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.016, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %.016, i64 24
  %i.i = getelementptr i8, ptr %.016, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store i64 %i.j, ptr %0, align 16
  store i64 0, ptr %i.b, align 8
  store i64 %i.j, ptr %i.c, align 16
  store i64 0, ptr %i.d, align 8
  %i.k = call i32 @init_utimes(ptr noundef %i.h, ptr noundef nonnull %0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @kfree(ptr noundef %.016) #20
  %.not = icmp eq ptr %.014, @dir_list
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @free_hash() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.b9 = load i1, ptr @hardlink_seen, align 1
  br i1 %.b9, label %.preheader, label %._crit_edge11

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.010 = phi ptr [ %i.f, %._crit_edge ], [ @head, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.010, align 8             ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.b = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %.010, align 8
  tail call void @kfree(ptr noundef nonnull %i.b) #20
  %i.e = load ptr, ptr %.010, align 8             ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.b.pre = load i1, ptr @hardlink_seen, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.b = phi i1 [ %.b.pre, %._crit_edge.loopexit ], [ true, %.preheader ]
  %i.f = getelementptr i8, ptr %.010, i64 8       ; 2 uses
  %i.g = icmp ult ptr %i.f, getelementptr inbounds nuw (i8, ptr @head, i64 256)
  %i.h = select i1 %.b, i1 %i.g, i1 false
  br i1 %i.h, label %.preheader, label %._crit_edge11, !llvm.loop !21

._crit_edge11:                                    ; preds = %._crit_edge, %bb.a
  store i1 false, ptr @hardlink_seen, align 1
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none)
define internal range(i32 0, 2) i32 @retain_initrd_param(ptr nofree noundef readonly captures(none) %0) #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @do_retain_initrd, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 0, 2) i32 @initramfs_async_setup(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @initramfs_async) #20
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @reserve_initrd_mem() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i64 0, ptr @initrd_end, align 8
  store i64 0, ptr @initrd_start, align 8
  %i.a = load i64, ptr @phys_initrd_size, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @phys_initrd_start, align 8 ; 2 uses
  %i.c = and i64 %i.b, -4096                      ; 4 uses
  %i.d = and i64 %i.b, 4095
  %i.e = add i64 %i.a, -1
  %i.f = add i64 %i.e, %i.d
  %0 = or i64 %i.f, 4095
  %1 = add i64 %0, 1                              ; 4 uses
  %i.g = tail call zeroext i1 @memblock_is_region_memory(i64 noundef %i.c, i64 noundef %1) #20
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @memblock_is_region_reserved(i64 noundef %i.c, i64 noundef %1) #20
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__memblock_reserve(i64 noundef range(i64 0, -4095) %i.c, i64 noundef range(i64 4096, 1) %1, i32 noundef -1, i32 noundef 0) #20 ; 0 uses
  %i.j = load i64, ptr @phys_initrd_start, align 8
  %i.k = load i64, ptr @page_offset_base, align 8
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  store i64 %i.l, ptr @initrd_start, align 8
  %i.m = load i64, ptr @phys_initrd_size, align 8
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr @initrd_end, align 8
  store i32 1, ptr @initrd_below_start_ok, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.str.5.sink = phi ptr [ @.str.5, %bb.b ], [ @.str.6, %bb.c ]
  %i.o = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink, i64 noundef %i.c, i64 noundef %1) #21 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #21 ; 0 uses
  store i64 0, ptr @initrd_start, align 8
  store i64 0, ptr @initrd_end, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define weak dso_local void @free_initrd_mem(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = inttoptr i64 %1 to ptr
  %i.c = tail call i64 @free_reserved_area(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 204, ptr noundef nonnull @.str.8) #20 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @wait_for_initramfs() #8 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @initramfs_cookie, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @wait_for_initramfs.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @wait_for_initramfs.__already_done, align 1
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, 1
  tail call void @async_synchronize_cookie_domain(i64 noundef %i.c, ptr noundef nonnull @initramfs_domain) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @async_synchronize_cookie_domain(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @populate_rootfs() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @async_schedule_node_domain(ptr noundef nonnull @do_populate_rootfs, ptr noundef null, i32 noundef -1, ptr noundef nonnull @initramfs_domain) #20
  store i64 %i.a, ptr @initramfs_cookie, align 8
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 0) #20
  %i.b = load i8, ptr @initramfs_async, align 1, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wait_for_initramfs() #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_large_noprof(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__show_mem(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @do_start() #5 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @byte_count, align 8       ; 2 uses
  %.not.i = icmp ult i64 %i.a, 110
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @victim, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 110
  store ptr %i.c, ptr @victim, align 8
  %i.d = load i64, ptr @this_header, align 8
  %i.e = add i64 %i.d, 110
  store i64 %i.e, ptr @this_header, align 8
  %i.f = add i64 %i.a, -110
  store i64 %i.f, ptr @byte_count, align 8
  br label %read_into.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @header_buf, align 8       ; 2 uses
  store ptr %i.g, ptr @collect, align 8
  store i64 110, ptr @remains, align 8
  store i32 2, ptr @next_state, align 4
  br label %read_into.exit

read_into.exit:                                   ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.b ]
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 2, %bb.b ]
  store ptr %.sink.i, ptr @collected, align 8
  store i32 %storemerge.i, ptr @state, align 4
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 0, 2) i32 @do_collect() #11 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @remains, align 8          ; 3 uses
  %i.b = load i64, ptr @byte_count, align 8       ; 3 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.a) ; 4 uses
  %i.c = load ptr, ptr @collect, align 8          ; 2 uses
  %i.d = load ptr, ptr @victim, align 8           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.d, i64 %spec.select, i1 false)
  %i.e = and i64 %spec.select, 4294967295         ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr @victim, align 8
  %i.g = load i64, ptr @this_header, align 8
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr @this_header, align 8
  %i.i = sub i64 %i.b, %i.e
  store i64 %i.i, ptr @byte_count, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 %spec.select
  store ptr %i.j, ptr @collect, align 8
  %i.k = sub i64 %i.a, %spec.select
  store i64 %i.k, ptr @remains, align 8
  %.not.not = icmp ugt i64 %i.a, %i.b
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @next_state, align 4
  store i32 %i.l, ptr @state, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 0, 2) i32 @do_header() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @collected, align 8        ; 7 uses
  %i.b = load i32, ptr %i.a, align 1
  %i.c = xor i32 %i.b, 925906736
  %i.d = getelementptr i8, ptr %i.a, i64 4
  %i.e = load i16, ptr %i.d, align 1
  %i.f = zext i16 %i.e to i32
  %i.g = xor i32 %i.f, 12592
  %i.h = or i32 %i.c, %i.g
  %i.i = icmp ne i32 %i.h, 0                      ; 3 uses
  %i.j = zext i1 %i.i to i32                      ; 0 uses
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 1
  %i.l = xor i32 %i.k, 925906736
  %i.m = getelementptr i8, ptr %i.a, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 12848
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %.not7 = icmp eq i32 %i.s, 0
  br i1 %.not7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.a, align 1
  %i.u = xor i32 %i.t, 925906736
  %i.v = getelementptr i8, ptr %i.a, i64 4
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = xor i32 %i.x, 14128
  %i.z = or i32 %i.u, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = load ptr, ptr @message, align 8
  %.not.i = icmp eq ptr %i.ad, null               ; 2 uses
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.e, label %error.exit

bb.e:                                             ; preds = %bb.d
  store ptr @.str.15, ptr @message, align 8
end_hunk_0
