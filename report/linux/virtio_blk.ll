Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_blk?download=true
inline.NumInlined: 167
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@virtblk_getgeo:bb.a
  %i.q = call i32 @__SCT__might_resched() #13     ; 0 uses
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 784
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef %i.r, i32 noundef 18, ptr noundef nonnull %i.b, i32 noundef 1) #13
  %i.v = load i8, ptr %i.b, align 1
  store i8 %i.v, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 0, ptr %i.c, align 1, !annotation !12
  %i.w = call i32 @__SCT__might_resched() #13     ; 0 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 784
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef %i.x, i32 noundef 19, ptr noundef nonnull %i.c, i32 noundef 1) #13
  %i.ab = load i8, ptr %i.c, align 1
  %i.ac = getelementptr i8, ptr %1, i64 1
  store i8 %i.ab, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 64, ptr %1, align 8
  %i.ad = getelementptr i8, ptr %1, i64 1
  store i8 32, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %0, i64 64
  %.val20 = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load i64, ptr %i.af, align 8
  %i.ag = lshr i64 %.val20.val, 11
  %i.ah = trunc i64 %i.ag to i16
  store i16 %i.ah, ptr %i.j, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ -6, %bb.a ]
  call void @mutex_unlock(ptr noundef %i.e) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtblk_free_disk(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 296
  %i.d = load i32, ptr %i.c, align 8
  tail call void @ida_free(ptr noundef nonnull @vd_index_ida, i32 noundef %i.d) #13
  tail call void @kfree(ptr noundef %i.b) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @virtblk_attrs_are_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, @dev_attr_cache_type
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.g, i32 noundef 11) #13
  %i.h = getelementptr i8, ptr %i.g, i64 824
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 2048
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i16 [ %i.k, %bb.c ], [ 292, %bb.b ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @cache_type_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.g, i32 noundef 11) #13
  %i.h = getelementptr i8, ptr %i.g, i64 824      ; 2 uses
  %.val.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i.i, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %virtblk_get_cache_mode.exit.thread, label %virtblk_get_cache_mode.exit

virtblk_get_cache_mode.exit.thread:               ; preds = %bb.a
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.g, i32 noundef 9) #13
  %.val.i8.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %.val.i8.i, 9
  %i.k = trunc i64 %i.j to i8
  %i.l = and i8 %i.k, 1
  br label %bb.c

virtblk_get_cache_mode.exit:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !annotation !12
  %i.m = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.n = getelementptr i8, ptr %i.g, i64 784
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef %i.g, i32 noundef 32, ptr noundef nonnull %i.a, i32 noundef 1) #13, !inline_history !22
  %i.q = load i8, ptr %i.a, align 1               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.r = icmp ugt i8 %i.q, 1
  br i1 %i.r, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %virtblk_get_cache_mode.exit
  call void asm sideeffect "595: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 595b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 595) #14, !srcloc !57
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.15, i32 1128, i32 0, i64 16) #14, !srcloc !58
  unreachable

bb.c:                                             ; preds = %virtblk_get_cache_mode.exit.thread, %virtblk_get_cache_mode.exit
  %.1.i8 = phi i8 [ %i.l, %virtblk_get_cache_mode.exit.thread ], [ %i.q, %virtblk_get_cache_mode.exit ]
  %i.s = zext nneg i8 %.1.i8 to i64
  %i.t = getelementptr [8 x i8], ptr @virtblk_cache_types, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef %i.u) #13
  %i.w = sext i32 %i.v to i64
  ret i64 %i.w
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cache_type_store(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.queue_limits, align 8       ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 -176
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.h, i32 noundef 11) #13
  %i.i = getelementptr i8, ptr %i.h, i64 824      ; 3 uses
  %.val.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.val.i, 2048
  %.not20 = icmp eq i64 %i.j, 0
  br i1 %.not20, label %bb.b, label %bb.c, !prof !62

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "594: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 594b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 594) #14, !srcloc !63
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.15, i32 1103, i32 0, i64 16) #14, !srcloc !64
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @__sysfs_match_string(ptr noundef nonnull @virtblk_cache_types, i64 noundef 2, ptr noundef %2) #13 ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i32 %i.k to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1
  %i.o = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.p = getelementptr i8, ptr %i.h, i64 784      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef %i.h, i32 noundef 32, ptr noundef nonnull %i.b, i32 noundef 1) #13, !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr i8, ptr %i.d, i64 80       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 728
  call void @mutex_lock(ptr noundef %i.v) #13, !noalias !68
  %i.w = getelementptr i8, ptr %i.u, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef align 8 dereferenceable(192) %i.w, i64 192, i1 false)
  call void @virtio_check_driver_offered_feature(ptr noundef %i.h, i32 noundef 11) #13
  %.val.i.i = load i64, ptr %i.i, align 8
  %i.x = and i64 %.val.i.i, 2048
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !annotation !12
  %i.y = call i32 @__SCT__might_resched() #13     ; 0 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef %i.h, i32 noundef 32, ptr noundef nonnull %i.a, i32 noundef 1) #13, !inline_history !22
  %i.ab = load i8, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %virtblk_get_cache_mode.exit

bb.f:                                             ; preds = %bb.e
  call void @virtio_check_driver_offered_feature(ptr noundef %i.h, i32 noundef 9) #13
  %.val.i8.i = load i64, ptr %i.i, align 8
  %i.ac = lshr i64 %.val.i8.i, 9
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  br label %virtblk_get_cache_mode.exit

virtblk_get_cache_mode.exit:                      ; preds = %.thread.i, %bb.f
  %.1.i = phi i8 [ %i.ae, %bb.f ], [ %i.ab, %.thread.i ]
  %.not = icmp ne i8 %.1.i, 0
  %i.af = load i32, ptr %4, align 8
  %i.ag = and i32 %i.af, -2
  %masksel = zext i1 %.not to i32
  %storemerge = or disjoint i32 %i.ag, %masksel
  store i32 %storemerge, ptr %4, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = call i32 @queue_limits_commit_update_frozen(ptr noundef %i.ah, ptr noundef nonnull %4) #13 ; 2 uses
  %.not19 = icmp eq i32 %i.ai, 0
  %i.aj = sext i32 %i.ai to i64
  %spec.select = select i1 %.not19, i64 %3, i64 %i.aj
  br label %bb.g

bb.g:                                             ; preds = %virtblk_get_cache_mode.exit, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %spec.select, %virtblk_get_cache_mode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @queue_limits_commit_update_frozen(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @serial_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef initializes((20, 21)) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %2, i64 20
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %i.b, i64 88
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @blk_mq_alloc_request(ptr noundef %i.h, i32 noundef 34, i32 noundef 0) #13 ; 9 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = trunc i64 %i.k to i32
  br label %virtblk_get_id.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.i, i64 248
  %i.n = getelementptr i8, ptr %i.i, i64 280
  store i64 1, ptr %i.n, align 8
  store i32 8, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 256
  store i64 0, ptr %i.o, align 8
  %i.p = tail call i32 @blk_rq_map_kern(ptr noundef %i.i, ptr noundef %2, i32 noundef 20, i32 noundef 3264) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %virtblk_result.exit.i, label %bb.d

virtblk_result.exit.i:                            ; preds = %bb.c
  %i.q = tail call zeroext i8 @blk_execute_rq(ptr noundef %i.i, i1 noundef zeroext false) #13 ; 0 uses
  %i.r = getelementptr i8, ptr %i.i, i64 264
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %switch.cast = zext i8 %i.s to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 4237560930961920, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i.i = select i1 %i.t, i8 %switch.masked, i8 10
  %i.u = tail call i32 @blk_status_to_errno(i8 noundef zeroext %.0.i.i) #13
  br label %bb.d

bb.d:                                             ; preds = %virtblk_result.exit.i, %bb.c
  %.0.i = phi i32 [ %i.p, %bb.c ], [ %i.u, %virtblk_result.exit.i ]
  tail call void @blk_mq_free_request(ptr noundef %i.i) #13
  br label %virtblk_get_id.exit

virtblk_get_id.exit:                              ; preds = %bb.b, %bb.d
  %.017.i = phi i32 [ %i.l, %bb.b ], [ %.0.i, %bb.d ] ; 2 uses
  switch i32 %.017.i, label %bb.f [
    i32 0, label %bb.e
    i32 -5, label %bb.g
  ]

bb.e:                                             ; preds = %virtblk_get_id.exit
  %i.v = tail call i64 @strlen(ptr noundef %2) #13
  br label %bb.g

bb.f:                                             ; preds = %virtblk_get_id.exit
  %i.w = sext i32 %.017.i to i64
  br label %bb.g

bb.g:                                             ; preds = %virtblk_get_id.exit, %bb.f, %bb.e
  %.0 = phi i64 [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ 0, %virtblk_get_id.exit ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue_nowait(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue_nomemsave(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_workqueue_noprof(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__register_virtio_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #17 = { noredzone "no-builtin-wcslen" }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{null, ptr @virtio_device_ready}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"auto-init"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2149662733}
!15 = !{i64 41777}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 2156856142, i64 2156856017}
!18 = !{i64 2156856665, i64 2156857737, i64 2156857770, i64 2156857805, i64 2156857821, i64 2156858748, i64 2156858806, i64 2156858855, i64 2156858665, i64 2156857880, i64 2156857912, i64 2156857995}
!19 = !{i64 2156859164, i64 2156859040}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{ptr @virtblk_get_cache_mode}
!23 = distinct !{null}
!24 = distinct !{!24, !13}
!25 = !{i64 37998}
!26 = !{i64 38979}
!27 = !{i64 39618}
!28 = !{i64 39657}
!29 = !{i64 24219}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{null}
!33 = distinct !{!33, !13}
!34 = distinct !{null}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = !{i64 12875}
!40 = !{i64 13070}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13, !43}
!43 = !{!"llvm.loop.peeled.count", i32 3}
!44 = distinct !{!44, !13}
!45 = !{i64 2156996033, i64 2156995908}
!46 = !{i64 2156996556, i64 2156997595, i64 2156997628, i64 2156997663, i64 2156997679, i64 2156998606, i64 2156998664, i64 2156998713, i64 2156998523, i64 2156997738, i64 2156997770, i64 2156997853}
!47 = !{i64 2156999019, i64 2156998895}
!48 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!49 = !{i64 2156990700, i64 2156990575}
!50 = !{i64 2156991223, i64 2156992274, i64 2156992307, i64 2156992342, i64 2156992358, i64 2156993285, i64 2156993343, i64 2156993392, i64 2156993202, i64 2156992417, i64 2156992449, i64 2156992532}
!51 = !{i64 2156993698, i64 2156993574}
!52 = !{!"branch_weights", !"expected", i32 247785, i32 2147235863}
!53 = !{i64 10533}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = !{!"branch_weights", !"expected", i32 2, i32 2147483646}
!57 = !{i64 2157056017, i64 2157055892}
!58 = !{i64 2157056540, i64 2157057016, i64 2157057049, i64 2157057084, i64 2157057100, i64 2157057941, i64 2157057999, i64 2157058048, i64 2157057858, i64 2157057159, i64 2157057191}
!59 = distinct !{null}
!62 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!63 = !{i64 2157050347, i64 2157050222}
!64 = !{i64 2157050870, i64 2157051346, i64 2157051379, i64 2157051414, i64 2157051430, i64 2157052271, i64 2157052329, i64 2157052378, i64 2157052188, i64 2157051489, i64 2157051521}
!66 = distinct !{!66, i1 false, !"queue_limits_start_update"}
!67 = distinct !{!67, !66, !"queue_limits_start_update: argument 0"}
!68 = !{!67}
end_hunk_0
