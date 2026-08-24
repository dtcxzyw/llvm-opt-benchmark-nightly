Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/genhd?download=true
inline.NumInlined: 146
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@set_capacity:bb.a
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @bdev_set_nr_sectors(ptr noundef %i.e, i64 noundef %.0) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @bdev_set_nr_sectors(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @set_capacity_and_notify(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.c, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.set_capacity_and_notify.envp, i64 16, i1 false)
  %i.d = icmp ugt i64 %1, 18014398509481983
  br i1 %i.d, label %bb.b, label %set_capacity.exit

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @set_capacity.__already_done, align 1
  br i1 %.b.i, label %set_capacity.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @set_capacity.__already_done, align 1
  %i.e = getelementptr i8, ptr %0, i64 12
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %i.e, i64 noundef %1, i64 noundef 18014398509481983) #15 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %set_capacity.exit

set_capacity.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %i.g = phi ptr [ %.val, %bb.a ], [ %.val, %bb.b ], [ %.pre, %bb.c ]
  %.0.i = phi i64 [ %1, %bb.a ], [ 18014398509481983, %bb.b ], [ 18014398509481983, %bb.c ]
  tail call void @bdev_set_nr_sectors(ptr noundef %i.g, i64 noundef %.0.i) #16
  %i.h = icmp eq i64 %1, %.val.val
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %set_capacity.exit
  %i.i = tail call zeroext i1 @disk_live(ptr noundef %0) #16
  br i1 %i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 344
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @___ratelimit(ptr noundef nonnull @set_capacity_and_notify._rs, ptr noundef nonnull @__func__.set_capacity_and_notify) #16
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 12
  %i.o = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %i.n, i64 noundef %.val.val, i64 noundef %1) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = icmp ne i64 %.val.val, 0
  %i.q = icmp ne i64 %1, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 192
  %i.t = call i32 @kobject_uevent_env(ptr noundef %i.s, i32 noundef 2, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %set_capacity.exit, %bb.d, %bb.e, %bb.i
  %.0 = phi i1 [ false, %set_capacity.exit ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @disk_live(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local range(i32 0, -1) i32 @bdev_count_inflight(ptr nofree noundef readonly captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @__cpu_possible_mask, align 8
  %i.b = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.y, %bb.c ]
  %.024.i = phi i32 [ 0, %bb.a ], [ %i.w, %bb.c ] ; 3 uses
  %.01923.i = phi i32 [ 0, %bb.a ], [ %i.s, %bb.c ] ; 3 uses
  %i.d = shl nsw i64 -1, %i.c
  %i.e = and i64 %i.d, %i.a                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bdev_count_inflight_rw.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.b
  %i.f = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.e) #18, !srcloc !12 ; 3 uses
  %i.g = and i64 %i.f, 4294967232
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bdev_count_inflight_rw.exit

bb.c:                                             ; preds = %find_next_bit.exit.i
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.f, 63
  %i.l = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.j
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 136
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %.01923.i, %i.r                  ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 144
  %i.u = load volatile i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %.024.i, %i.v                    ; 2 uses
  %i.x = add nuw nsw i64 %i.f, 1
  %i.y = and i64 %i.x, 127                        ; 2 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  br i1 %i.z, label %bdev_count_inflight_rw.exit, label %bb.b, !prof !13, !llvm.loop !14

bdev_count_inflight_rw.exit:                      ; preds = %bb.b, %find_next_bit.exit.i, %bb.c
  %.019.lcssa.i = phi i32 [ %.01923.i, %bb.b ], [ %i.s, %bb.c ], [ %.01923.i, %find_next_bit.exit.i ]
  %.0.lcssa.i = phi i32 [ %.024.i, %bb.b ], [ %i.w, %bb.c ], [ %.024.i, %find_next_bit.exit.i ]
  %i.aa = tail call i32 @llvm.smax.i32(i32 %.019.lcssa.i, i32 0)
  %i.ab = tail call i32 @llvm.smax.i32(i32 %.0.lcssa.i, i32 0)
  %i.ac = add nuw i32 %i.ab, %i.aa
  ret i32 %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blkdev_show(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #16
  %i.a = trunc i64 %1 to i32
  %i.b = urem i32 %i.a, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @major_names, i64 %i.c
  %.07 = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %.0, %bb.c ], [ %.07, %bb.a ]  ; 3 uses
  %i.e = getelementptr i8, ptr %.09, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.09, i64 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %i.f, ptr noundef %i.i) #16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0 = load ptr, ptr %.09, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @_raw_spin_unlock(ptr noundef nonnull @major_names_spinlock) #16
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__register_blkdev(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @major_names_lock) #16
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a, %bb.b
  %.04055 = phi i32 [ %6, %bb.b ], [ 254, %bb.a ] ; 5 uses
  %3 = zext nneg i32 %.04055 to i64
  %i.b = getelementptr [8 x i8], ptr @major_names, i64 %3
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %4 = add nsw i32 %.04055, -1                    ; 4 uses
  %5 = zext nneg i32 %4 to i64
  %i.e = getelementptr [8 x i8], ptr @major_names, i64 %5
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.1
  %6 = add nsw i32 %.04055, -2
  %.not67 = icmp eq i32 %4, 1
  br i1 %.not67, label %bb.c, label %.preheader, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__register_blkdev, ptr noundef %1) #15 ; 0 uses
  br label %bb.i

.thread:                                          ; preds = %.preheader, %.preheader.1, %bb.a
  %.041 = phi i32 [ 0, %bb.a ], [ %.04055, %.preheader ], [ %4, %.preheader.1 ]
  %.0 = phi i32 [ %0, %bb.a ], [ %.04055, %.preheader ], [ %4, %.preheader.1 ] ; 6 uses
  %i.i = icmp ugt i32 %.0, 511
  br i1 %i.i, label %.thread45, label %bb.d

.thread45:                                        ; preds = %.thread
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__register_blkdev, i32 noundef %.0, i32 noundef 511, ptr noundef %1) #15 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %.thread
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.l = tail call noalias align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3264, i64 noundef 40) #19 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 8
  store i32 %.0, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 32
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 12
  %i.q = tail call i64 @sized_strscpy(ptr noundef %i.p, ptr noundef %1, i64 noundef 16) #16 ; 0 uses
  store ptr null, ptr %i.l, align 8
  %.lhs.trunc = trunc nuw nsw i32 %.0 to i16
  %i.r = urem i16 %.lhs.trunc, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #16
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr @major_names, i64 %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.038 = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.g ] ; 2 uses
  %i.u = load ptr, ptr %.038, align 8             ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %.0
  br i1 %i.x, label %.thread50, label %bb.f, !llvm.loop !18

.thread50:                                        ; preds = %bb.g
  tail call void @_raw_spin_unlock(ptr noundef nonnull @major_names_spinlock) #16
  %i.y = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %.0, ptr noundef %1) #15 ; 0 uses
  tail call void @kfree(ptr noundef nonnull %i.l) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.l, ptr %.038, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @major_names_spinlock) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %.thread50, %.thread45, %bb.c
  %.2 = phi i32 [ -16, %bb.c ], [ -22, %.thread45 ], [ %.041, %bb.h ], [ -16, %.thread50 ], [ -12, %bb.d ]
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #16
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unregister_blkdev(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = urem i32 %0, 255
  tail call void @mutex_lock(ptr noundef nonnull @major_names_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #16
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [8 x i8], ptr @major_names, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.c ]  ; 2 uses
  %i.d = load ptr, ptr %.0, align 8               ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 12
  %i.i = tail call i32 @strcmp(ptr noundef %i.h, ptr noundef %1) #16
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  tail call void asm sideeffect "651: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 651b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 651) #17, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 315, i32 2305, i64 16) #17, !srcloc !21
  tail call void asm sideeffect "652: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 652b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 652) #17, !srcloc !22
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %.0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.015 = phi ptr [ null, %.thread ], [ %i.d, %bb.e ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @major_names_spinlock) #16
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #16
  tail call void @kfree(ptr noundef %.015) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -27, -28) i32 @blk_alloc_ext_minor() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @ida_alloc_range(ptr noundef nonnull @ext_devt_ida, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #16 ; 2 uses
  %i.b = icmp eq i32 %i.a, -28
  %. = select i1 %i.b, i32 -16, i32 %i.a
  ret i32 %.
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_free_ext_minor(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @ida_free(ptr noundef nonnull @ext_devt_ida, i32 noundef %0) #16
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @disk_uevent(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  tail call void @__rcu_read_lock() #16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.c = call ptr @xa_find(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #16 ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.012 = phi ptr [ %i.k, %bb.e ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.012, i64 48
  %i.e = load volatile i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 255
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.012, i64 8
  %.0.val = load i64, ptr %i.g, align 8
  %.not8 = icmp eq i64 %.0.val, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr i8, ptr %.012, i64 192     ; 3 uses
  %i.i = call ptr @kobject_get_unless_zero(ptr noundef %i.h) #16
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @__rcu_read_unlock() #16
  %i.j = call i32 @kobject_uevent(ptr noundef %i.h, i32 noundef %1) #16 ; 0 uses
  call void @put_device(ptr noundef %i.h) #16
  call void @__rcu_read_lock() #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.k = call ptr @xa_find_after(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #16 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @__rcu_read_unlock() #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobject_get_unless_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
