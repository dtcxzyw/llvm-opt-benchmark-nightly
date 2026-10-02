Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-sysfs?download=true
inline.NumInlined: 102
inline.NumDeleted: 31
begin_hunk_0_@blk_register_queue:bb.a
  tail call void @mutex_unlock(ptr noundef %i.k) #11
  %.val = load ptr, ptr %i.i, align 8
  %.not59 = icmp eq ptr %.val, null
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @blk_mq_sysfs_unregister(ptr noundef %0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.1 = phi i32 [ %i.j, %bb.c ], [ %i.y, %bb.m ], [ %i.y, %bb.l ]
  tail call void @kobject_del(ptr noundef %i.c) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.k
  %.042 = phi i32 [ 0, %bb.k ], [ %.1, %bb.n ], [ %i.g, %bb.a ]
  ret i32 %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_mq_sysfs_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @disk_register_independent_access_ranges(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @elevator_set_default(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @disk_unregister_independent_access_ranges(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_unregister_queue(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "654: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 654b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 654) #13, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1040, i32 2305, i64 16) #13, !srcloc !14
  tail call void asm sideeffect "655: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 655b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 655) #13, !srcloc !15
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 256
  %.not29 = icmp eq i64 %i.e, 0
  br i1 %.not29, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.f = getelementptr i8, ptr %i.b, i64 704      ; 4 uses
  tail call void @mutex_lock(ptr noundef %i.f) #11
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef nonnull %i.b) #11
  tail call void @mutex_unlock(ptr noundef %i.f) #11
  %i.g = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.val27 = load ptr, ptr %i.g, align 8
  %.not31 = icmp eq ptr %.val27, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @blk_mq_sysfs_unregister(ptr noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @mutex_lock(ptr noundef %i.f) #11
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %i.f) #11
  %i.h = getelementptr i8, ptr %0, i64 400        ; 2 uses
  %i.i = tail call i32 @kobject_uevent(ptr noundef %i.h, i32 noundef 1) #11 ; 0 uses
  tail call void @kobject_del(ptr noundef %i.h) #11
  %.val = load ptr, ptr %i.g, align 8
  %.not32 = icmp eq ptr %.val, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @elevator_set_none(ptr noundef nonnull %i.b) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val28 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.j = getelementptr i8, ptr %.val28, i64 888   ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.j) #11
  tail call void @blk_trace_shutdown(ptr noundef %.val28) #11
  %i.k = getelementptr i8, ptr %.val28, i64 864   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @debugfs_remove(ptr noundef %i.l) #11
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  tail call void @mutex_unlock(ptr noundef %i.j) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %.critedge, %bb.g
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @elevator_set_none(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @queue_attr_show(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -400       ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not18, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = getelementptr i8, ptr %0, i64 -320       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 728
  tail call void @mutex_lock(ptr noundef %i.i) #11
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = tail call i64 %i.j(ptr noundef %i.a, ptr noundef %2) #11
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 728
  tail call void @mutex_unlock(ptr noundef %i.m) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i64 %i.c(ptr noundef %i.a, ptr noundef %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %.thread
  %.0 = phi i64 [ %i.k, %.thread ], [ %i.n, %bb.d ], [ -5, %bb.b ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @queue_attr_store(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.queue_limits, align 8       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 -400       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -320
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.h = getelementptr i8, ptr %i.c, i64 728      ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.h) #11, !noalias !21
  %i.i = getelementptr i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef align 8 dereferenceable(192) %i.i, i64 192, i1 false)
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = call i32 %i.j(ptr noundef %i.a, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #11 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  call void @mutex_unlock(ptr noundef %i.h) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = call i32 @queue_limits_commit_update_frozen(ptr noundef %i.c, ptr noundef nonnull %4) #11 ; 2 uses
  %.not30 = icmp eq i32 %i.n, 0
  %i.o = sext i32 %i.n to i64
  %spec.select = select i1 %.not30, i64 %3, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %spec.select, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.p = tail call i64 %i.g(ptr noundef %i.a, ptr noundef %2, i64 noundef %3) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f
  %.1 = phi i64 [ %.0, %bb.f ], [ %i.p, %bb.g ], [ -5, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @queue_limits_commit_update_frozen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i16 @queue_attr_visible(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, @queue_max_open_zones_entry
  %i.b = icmp eq ptr %1, @queue_max_active_zones_entry
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, @queue_zoned_qd1_writes_entry
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_max_open_zones_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 280
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %i.e) #11
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_max_active_zones_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 284
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %i.e) #11
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_zoned_qd1_writes_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load volatile i64, ptr %i.c, align 8
  %.in.in = lshr i64 %i.d, 17
  %.in.in.lobit = and i64 %.in.in, 1
  %i.e = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %.in.in.lobit) #11
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @queue_zoned_qd1_writes_store(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.d = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #11
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %or.cond.i, label %queue_var_store.exit.thread, label %queue_var_store.exit

queue_var_store.exit:                             ; preds = %bb.a
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %queue_var_store.exit.thread, label %bb.b

bb.b:                                             ; preds = %queue_var_store.exit
  %i.i = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !10
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 44       ; 4 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = or i32 %i.l, 524288
  store i32 %i.m, ptr %i.k, align 4
  call void @blk_mq_freeze_queue_nomemsave(ptr noundef %i.c) #11
  call void @blk_mq_quiesce_queue(ptr noundef %i.c) #11
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @blk_queue_flag_set(i32 noundef 17, ptr noundef %i.c) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @blk_queue_flag_clear(i32 noundef 17, ptr noundef %i.c) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @blk_mq_unquiesce_queue(ptr noundef %i.c) #11
  call void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef %i.c) #11
  %i.n = or i32 %i.l, -524289
  %i.o = load i32, ptr %i.k, align 4
  %i.p = and i32 %i.o, %i.n
  store i32 %i.p, ptr %i.k, align 4
  br label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %bb.a, %queue_var_store.exit, %bb.e
  %.0 = phi i64 [ %2, %bb.e ], [ %2, %queue_var_store.exit ], [ -22, %bb.a ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue_nomemsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_max_hw_sectors_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 136
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %i.f) #11
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_max_sectors_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 148
  %i.d = load i32, ptr %i.c, align 4
  %i.e = lshr i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %i.f) #11
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
end_hunk_0
begin_hunk_1_@queue_async_depth_store:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.d, align 8
  %.not36 = icmp eq ptr %.val, null
  br i1 %.not36, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.e = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #11
  %i.f = icmp ne i32 %i.e, 0
  %i.g = load i64, ptr %i.a, align 8              ; 3 uses
  %i.h = icmp ugt i64 %i.g, 4294967295
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %or.cond.i, label %queue_var_store.exit.thread, label %queue_var_store.exit

queue_var_store.exit:                             ; preds = %bb.b
  %i.i = and i64 %2, 2147483648
  %.not28 = icmp eq i64 %i.i, 0
  br i1 %.not28, label %bb.c, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %bb.b, %queue_var_store.exit
  %.0.i35 = phi i64 [ %2, %queue_var_store.exit ], [ -22, %bb.b ]
  %sext27 = shl i64 %.0.i35, 32
  %i.j = ashr exact i64 %sext27, 32
  br label %bb.h

bb.c:                                             ; preds = %queue_var_store.exit
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !10
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 44       ; 4 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = or i32 %i.o, 524288
  store i32 %i.p, ptr %i.n, align 4
  call void @blk_mq_freeze_queue_nomemsave(ptr noundef %i.c) #11
  %i.q = getelementptr i8, ptr %i.c, i64 680      ; 2 uses
  call void @mutex_lock(ptr noundef %i.q) #11
  %i.r = getelementptr i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.c, i64 364
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.v)
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr i8, ptr %i.c, i64 368
  store i32 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.s, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.ab, null
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.ab(ptr noundef %i.c) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.023 = phi i64 [ %2, %bb.f ], [ %2, %bb.e ], [ -22, %bb.d ]
  call void @mutex_unlock(ptr noundef %i.q) #11
  call void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef %i.c) #11
  %i.ac = or i32 %i.o, -524289
  %i.ad = load i32, ptr %i.n, align 4
  %i.ae = and i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.n, align 4
  %sext = shl i64 %.023, 32
  %i.af = ashr exact i64 %sext, 32
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %bb.g, %queue_var_store.exit.thread
  %.0 = phi i64 [ %i.j, %queue_var_store.exit.thread ], [ -22, %bb.a ], [ %i.af, %bb.g ], [ -22, %bb.c ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @queue_rq_affinity_show(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = load volatile i64, ptr %i.c, align 8
  %i.f = trunc i64 %i.d to i32
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 1
  %i.i = trunc i64 %i.e to i32
  %i.j = lshr i32 %i.i, 5
  %i.k = and i32 %i.j, 1
  %i.l = shl nuw nsw i32 %i.h, %i.k
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %i.m) #11
  %i.o = sext i32 %i.n to i64
  ret i64 %i.o
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @queue_rq_affinity_store(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.d = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #11
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %or.cond.i, label %queue_var_store.exit.thread, label %queue_var_store.exit

queue_var_store.exit:                             ; preds = %bb.a
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %queue_var_store.exit.thread, label %bb.b

bb.b:                                             ; preds = %queue_var_store.exit
  %trunc = trunc nuw i64 %i.f to i32
  switch i32 %trunc, label %queue_var_store.exit.thread [
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @blk_queue_flag_set(i32 noundef 2, ptr noundef %i.c) #11
  call void @blk_queue_flag_set(i32 noundef 5, ptr noundef %i.c) #11
  br label %queue_var_store.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @blk_queue_flag_set(i32 noundef 2, ptr noundef %i.c) #11
  call void @blk_queue_flag_clear(i32 noundef 5, ptr noundef %i.c) #11
  br label %queue_var_store.exit.thread

bb.e:                                             ; preds = %bb.b
  call void @blk_queue_flag_clear(i32 noundef 2, ptr noundef %i.c) #11
  call void @blk_queue_flag_clear(i32 noundef 5, ptr noundef %i.c) #11
  br label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b, %queue_var_store.exit
  %.0.i14 = phi i64 [ %2, %queue_var_store.exit ], [ %2, %bb.c ], [ %2, %bb.e ], [ %2, %bb.d ], [ %2, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i14
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_trace_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2149799906}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 2157870852, i64 2157870727}
!14 = !{i64 2157871375, i64 2157872415, i64 2157872448, i64 2157872483, i64 2157872499, i64 2157873426, i64 2157873484, i64 2157873533, i64 2157873343, i64 2157872558, i64 2157872590, i64 2157872673}
!15 = !{i64 2157873831, i64 2157873707}
!19 = distinct !{!19, i1 false, !"queue_limits_start_update"}
!20 = distinct !{!20, !19, !"queue_limits_start_update: argument 0"}
!21 = !{!20}
end_hunk_1
