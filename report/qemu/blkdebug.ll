Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/blkdebug?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
begin_hunk_0_@blkdebug_co_pdiscard:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %1, -1
  %i.n = add i64 %i.m, %i.g
  %i.o = sdiv i64 %i.n, %i.g
  %i.p = add i64 %i.j, -1
  %i.q = add i64 %i.p, %i.g
  %i.r = sdiv i64 %i.q, %i.g
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.13, i32 noundef 745, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.t = srem i64 %1, %i.e
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.13, i32 noundef 748, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = urem i64 %2, %i.e
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.13, i32 noundef 749, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext i32 %i.c to i64                     ; 3 uses
  %.not43 = icmp samesign ult i64 %2, %i.x
  br i1 %.not43, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = srem i64 %1, %i.x
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.13, i32 noundef 751, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = urem i64 %2, %i.x
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.13, i32 noundef 752, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16472
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not44 = icmp ne i64 %i.ad, 0
  %.not45 = icmp sgt i64 %2, %i.ad
  %or.cond = and i1 %.not44, %.not45
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.13, i32 noundef 755, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_pdiscard) #18
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ae = tail call i32 @rule_check(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 3) ; 2 uses
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 @bdrv_co_pdiscard(ptr noundef %i.ag, i64 noundef %1, i64 noundef %2) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.d, %bb.c, %bb.b, %bb.s
  %.0 = phi i32 [ %i.ah, %bb.s ], [ -95, %bb.d ], [ -95, %bb.b ], [ -95, %bb.c ], [ %i.ae, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 1, 0) i32 @blkdebug_co_block_status(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = or i64 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16464
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = srem i64 %i.a, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.13, i32 noundef 773, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_block_status) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @rule_check(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, i32 noundef 5) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.13, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_block_status) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %3, ptr %4, align 8
  store i64 %2, ptr %5, align 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %6, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ %i.g, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @blkdebug_co_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @rule_check(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 4) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @bdrv_co_flush(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @blkdebug_co_getlength(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @bdrv_co_getlength(ptr noundef %i.c) #14
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @blkdebug_co_debug_event(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.d = icmp ult i32 %1, 48
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.13, i32 noundef 861, ptr noundef nonnull @__PRETTY_FUNCTION__.blkdebug_co_debug_event) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 488 ; 3 uses
  %i.f = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.f(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.54, i32 noundef 56) #14, !inline_history !0
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not1421 = icmp eq ptr %i.k, null
  br i1 %.not1421, label %qemu_lockable_auto_unlock.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = load i32, ptr %i.g, align 8
  br label %.lr.ph

qemu_lockable_auto_unlock.exit.thread:            ; preds = %bb.c
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.54, i32 noundef 56) #14
  br label %glib_autoptr_cleanup_QemuLockable.exit._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %process_rule.exit
  %.023 = phi ptr [ %i.n, %process_rule.exit ], [ %i.k, %.lr.ph.preheader ] ; 9 uses
  %.02022 = phi i32 [ %.1, %process_rule.exit ], [ %i.l, %.lr.ph.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 56 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.s = load i32, ptr %i.r, align 8
  %.not21.i = icmp eq i32 %i.q, %i.s
  br i1 %.not21.i, label %bb.e, label %process_rule.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  switch i32 %i.u, label %process_rule.exit [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %g_strdup_inline.exit.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 464 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.023, i64 72 ; 3 uses
  br i1 %i.aa, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  store ptr null, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.ab, align 8          ; 2 uses
  store ptr %.pre.i, ptr %2, align 8
  %i.ac = icmp eq ptr %.pre.i, null
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  store ptr %2, ptr %i.ad, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %.023, ptr %i.ab, align 8
  br label %process_rule.exit

bb.j:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  br label %process_rule.exit

g_strdup_inline.exit.i.i:                         ; preds = %bb.e
  %i.ag = tail call noalias dereferenceable_or_null(32) ptr @g_malloc(i64 noundef 32) #17 ; 5 uses
  %i.ah = tail call ptr @qemu_coroutine_self() #14
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noalias ptr @g_strdup(ptr noundef %i.aj) #14 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load i32, ptr %i.t, align 4
  %cond.i.i.i = icmp eq i32 %i.am, 2
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %g_strdup_inline.exit.i.i
  %i.an = load ptr, ptr %i.ai, align 8
  tail call void @g_free(ptr noundef %i.an) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %g_strdup_inline.exit.i.i
  %i.ao = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not.i25.i.i = icmp eq ptr %i.ao, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.023, i64 64
  %.pre10.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  br i1 %.not.i25.i.i, label %remove_rule.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr %.pre10.i.i.i, ptr %i.ap, align 8
  %.pre.i.i.i = load ptr, ptr %i.m, align 8
  br label %remove_rule.exit.i.i

remove_rule.exit.i.i:                             ; preds = %bb.m, %bb.l
  %i.aq = phi ptr [ %.pre.i.i.i, %bb.m ], [ null, %bb.l ]
  store ptr %i.aq, ptr %.pre10.i.i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %.023) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 480 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8
  %.not.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %remove_rule.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.au, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %remove_rule.exit.i.i
  store ptr %i.ag, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ar, ptr %i.av, align 8
  %i.aw = load i8, ptr @qtest_allowed, align 1, !range !9, !noundef !10
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %process_rule.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef %i.ak) #14 ; 0 uses
  br label %process_rule.exit

process_rule.exit:                                ; preds = %bb.d, %bb.e, %bb.i, %bb.j, %bb.o, %bb.p
  %.1 = phi i32 [ %.02022, %bb.e ], [ %.02022, %bb.i ], [ %i.af, %bb.j ], [ %.02022, %bb.o ], [ %.02022, %bb.p ], [ %.02022, %bb.d ] ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %qemu_lockable_auto_unlock.exit, label %.lr.ph, !llvm.loop !18

qemu_lockable_auto_unlock.exit:                   ; preds = %process_rule.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  store i32 %.1, ptr %i.g, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.54, i32 noundef 56) #14
  %i.az = icmp sgt i32 %.promoted.pre, 0
  br i1 %i.az, label %glib_autoptr_cleanup_QemuLockable.exit, label %glib_autoptr_cleanup_QemuLockable.exit._crit_edge

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %qemu_lockable_auto_unlock.exit, %glib_autoptr_cleanup_QemuLockable.exit
  %i.ba = phi i32 [ %i.bb, %glib_autoptr_cleanup_QemuLockable.exit ], [ %.promoted.pre, %qemu_lockable_auto_unlock.exit ] ; 2 uses
  tail call void @qemu_coroutine_yield() #14
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = icmp samesign ugt i32 %i.ba, 1
  br i1 %i.bc, label %glib_autoptr_cleanup_QemuLockable.exit, label %glib_autoptr_cleanup_QemuLockable.exit._crit_edge, !llvm.loop !19

glib_autoptr_cleanup_QemuLockable.exit._crit_edge: ; preds = %glib_autoptr_cleanup_QemuLockable.exit, %qemu_lockable_auto_unlock.exit.thread, %qemu_lockable_auto_unlock.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdict_put_str(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @qstring_from_substr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @qdict_put_obj(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_opts_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opts_absorb_qdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_opt_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_open_file_child(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bdrv_graph_rdlock_main_loop() local_unnamed_addr #1

declare i64 @qemu_opt_get_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @bdrv_debug_event(ptr noundef, i32 noundef) #1

declare void @bdrv_graph_rdunlock_main_loop() local_unnamed_addr #1

declare void @qemu_mutex_destroy(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @qemu_opts_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #6

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

declare void @error_setg_file_open_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare i32 @qemu_config_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_config_parse_qdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @qemu_opts_foreach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @add_rule(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  %i.c = tail call ptr @qemu_opt_get(ptr noundef %1, ptr noundef nonnull @.str.33) #14 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 201, ptr noundef nonnull @__func__.add_rule, ptr noundef nonnull @.str.42) #14
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @qapi_enum_parse(ptr noundef nonnull @BlkdebugEvent_lookup, ptr noundef nonnull %i.c, i32 noundef -1, ptr noundef %2) #14 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #17 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i64 @qemu_opt_get_number(ptr noundef %1, ptr noundef nonnull @.str.34, i64 noundef 0) #14
  %i.j = trunc i64 %i.i to i32
  store i32 %i.d, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.5.0..sroa_idx, i8 0, i64 68, i1 false)
  %i.k = load i32, ptr %i.g, align 8
  switch i32 %i.k, label %bb.k [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %g_strdup_inline.exit
  ]
end_hunk_0
