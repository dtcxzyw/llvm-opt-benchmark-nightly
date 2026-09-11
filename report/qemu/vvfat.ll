Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vvfat?download=true
inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vvfat_close:bb.a
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32880
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @g_free(ptr noundef %i.r) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32892
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32888
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32984
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @g_free(ptr noundef %i.v) #22
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 33008
  %i.x = load ptr, ptr %i.w, align 8
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vvfat_close_current_file.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 33072
  tail call void @migrate_del_blocker(ptr noundef nonnull %i.y) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %vvfat_close_current_file.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @vvfat_refresh_limits(ptr nofree noundef writeonly captures(none) initializes((16464, 16468)) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16464
  store i32 512, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vvfat_child_perm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i64 %4, i64 %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.14, i32 noundef 3222, ptr noundef nonnull @__PRETTY_FUNCTION__.vvfat_child_perm) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 3, ptr %6, align 8
  store i64 4, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @vvfat_co_preadv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ashr i64 %1, 9
  %i.d = lshr i64 %2, 9
  %i.e = trunc i64 %i.d to i32
  %i.f = and i64 %1, 511
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.14, i32 noundef 1547, ptr noundef nonnull @__PRETTY_FUNCTION__.vvfat_co_preadv) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %2, 511
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.14, i32 noundef 1548, ptr noundef nonnull @__PRETTY_FUNCTION__.vvfat_co_preadv) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @g_try_malloc(i64 noundef %2) #26 ; 4 uses
  %i.k = icmp ne i64 %2, 0
  %i.l = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @qemu_co_mutex_lock(ptr noundef %i.b) #22
  %i.m = tail call i32 @vvfat_read(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef %i.j, i32 noundef %i.e)
  tail call void @qemu_co_mutex_unlock(ptr noundef %i.b) #22
  %i.n = tail call i64 @qemu_iovec_from_buf(ptr noundef %3, i64 noundef 0, ptr noundef %i.j, i64 noundef %2) #22 ; 0 uses
  tail call void @g_free(ptr noundef %i.j) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @vvfat_co_pwritev(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ashr i64 %1, 9
  %i.d = lshr i64 %2, 9
  %i.e = trunc i64 %i.d to i32
  %i.f = and i64 %1, 511
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.14, i32 noundef 3118, ptr noundef nonnull @__PRETTY_FUNCTION__.vvfat_co_pwritev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %2, 511
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.14, i32 noundef 3119, ptr noundef nonnull @__PRETTY_FUNCTION__.vvfat_co_pwritev) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @g_try_malloc(i64 noundef %2) #26 ; 4 uses
  %i.k = icmp ne i64 %2, 0
  %i.l = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @qemu_iovec_to_buf(ptr noundef %3, i64 noundef 0, ptr noundef %i.j, i64 noundef %2) #22 ; 0 uses
  tail call void @qemu_co_mutex_lock(ptr noundef %i.b) #22
  %i.n = tail call i32 @vvfat_write(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef %i.j, i32 noundef %i.e)
  tail call void @qemu_co_mutex_unlock(ptr noundef %i.b) #22
  tail call void @g_free(ptr noundef %i.j) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.n, %bb.f ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @vvfat_co_block_status(ptr nofree readnone captures(none) %0, i32 %1, i64 %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) #3 {
bb.a:
  store i64 %3, ptr %4, align 8
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare void @qdict_put_str(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdict_put_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qdict_put_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @qemu_opts_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opts_absorb_qdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_opt_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @qemu_opt_get_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opt_get_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @bdrv_is_read_only(ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_apply_auto_read_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @bdrv_get_device_or_node_name(ptr noundef) local_unnamed_addr #1

declare i32 @migrate_add_blocker_normal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_mbr(ptr noundef %0, i32 noundef range(i32 64, 1025) %1, i32 noundef range(i32 2, 17) %2, i32 noundef range(i32 18, 64) %3) unnamed_addr #7 {
sector2CHS.exit:
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 502
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %4, i8 noundef 0, i64 noundef 512, i1 noundef false) #22
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 -1105527302, ptr %6, align 1
  store i8 -128, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 503
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32916
  %9 = load i32, ptr %8, align 4                  ; 4 uses
  %10 = sdiv i32 %9, %3                           ; 2 uses
  %11 = srem i32 %9, %3
  %12 = sdiv i32 %10, %2                          ; 3 uses
  %13 = srem i32 %10, %2
  %.not.i = icmp slt i32 %12, %1                  ; 4 uses
  %14 = trunc nsw i32 %13 to i8
  %15 = add nsw i32 %11, 1
  %16 = lshr i32 %12, 2
  %17 = and i32 %16, 192
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i8
  %20 = trunc i32 %12 to i8
  %.sink22.i = select i1 %.not.i, i8 %14, i8 -1
  %.sink21.i = select i1 %.not.i, i8 %19, i8 -1
  %.sink.i = select i1 %.not.i, i8 %20, i8 -1
  store i8 %.sink22.i, ptr %7, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.sink21.i, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 505
  store i8 %.sink.i, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 507
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16880 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = sdiv i32 %i.i, %3                        ; 2 uses
  %i.k = srem i32 %i.i, %3
  %i.l = sdiv i32 %i.j, %2                        ; 3 uses
  %i.m = srem i32 %i.j, %2
  %.not.i28 = icmp slt i32 %i.l, %1
  br i1 %.not.i28, label %bb.a, label %sector2CHS.exit33

bb.a:                                             ; preds = %sector2CHS.exit
  %i.n = trunc nsw i32 %i.m to i8
  %i.o = add nsw i32 %i.k, 1
  %i.p = lshr i32 %i.l, 2
  %i.q = and i32 %i.p, 192
  %i.r = or i32 %i.o, %i.q
  %i.s = trunc i32 %i.r to i8
  %i.t = trunc i32 %i.l to i8
  br label %sector2CHS.exit33

sector2CHS.exit33:                                ; preds = %sector2CHS.exit, %bb.a
  %.sink22.i29 = phi i8 [ %i.n, %bb.a ], [ -1, %sector2CHS.exit ]
  %.sink21.i30 = phi i8 [ %i.s, %bb.a ], [ -1, %sector2CHS.exit ]
  %.sink.i31 = phi i8 [ %i.t, %bb.a ], [ -1, %sector2CHS.exit ]
  %.0.i32 = phi i1 [ %.not.i, %bb.a ], [ false, %sector2CHS.exit ] ; 2 uses
  store i8 %.sink22.i29, ptr %i.c, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i8 %.sink21.i30, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 509
  store i8 %.sink.i31, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 510
  store i32 %9, ptr %i.w, align 2
  %i.x = load i64, ptr %i.f, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = sub i32 %i.y, %9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 514
  store i32 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.ac = load i32, ptr %i.ab, align 8
  switch i32 %i.ac, label %bb.c [
    i32 12, label %bb.d
    i32 16, label %bb.b
  ]

bb.b:                                             ; preds = %sector2CHS.exit33
  %21 = select i1 %.0.i32, i8 6, i8 14
  br label %bb.d

bb.c:                                             ; preds = %sector2CHS.exit33
  %22 = select i1 %.0.i32, i8 11, i8 12
  br label %bb.d

bb.d:                                             ; preds = %sector2CHS.exit33, %bb.b, %bb.c
  %23 = phi i8 [ 1, %sector2CHS.exit33 ], [ %21, %bb.b ], [ %22, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 506
  store i8 %23, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 566
  store i8 85, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 567
  store i8 -86, ptr %i.af, align 1
  ret void
}

declare void @qemu_co_mutex_init(ptr noundef) local_unnamed_addr #1

declare void @qemu_opts_del(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @bdrv_graph_rdlock_main_loop() local_unnamed_addr #1

declare void @bdrv_graph_rdunlock_main_loop() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #9

declare ptr @create_tmp_file(ptr noundef) local_unnamed_addr #1

declare ptr @bdrv_find_format(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opt_set_number(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opt_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @qdict_new() local_unnamed_addr #1

declare ptr @bdrv_open_child(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #10

declare void @qobject_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @array_get_next(ptr nofree noundef captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = mul i32 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp ugt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %array_ensure_allocated.exit

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.b, 32
  %i.k = mul i32 %i.e, %i.j                       ; 3 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = sext i32 %i.k to i64
  %i.n = tail call ptr @g_realloc(ptr noundef %i.l, i64 noundef %i.m) #22 ; 3 uses
  store ptr %i.n, ptr %0, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__.array_ensure_allocated) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 8              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = sub i32 %i.k, %i.o
  %i.s = zext i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.q, i8 noundef 0, i64 noundef range(i64 -2147483648, 4294967296) %i.s, i1 noundef false) #22
  store i32 %i.k, ptr %i.g, align 8
  br label %array_ensure_allocated.exit

array_ensure_allocated.exit:                      ; preds = %bb.a, %bb.d
  store i32 %i.c, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %array_ensure_allocated.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.f:                                             ; preds = %array_ensure_allocated.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i6, label %bb.g, label %array_get.exit

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit:                                   ; preds = %bb.f
  %i.u = load i32, ptr %i.d, align 8
  %i.v = mul i32 %i.u, %i.b
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  ret ptr %i.x
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @fat_set(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.j [
    i32 32, label %bb.b
    i32 16, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32844
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ult i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %array_get.exit

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit:                                   ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32848
  %i.i = load i32, ptr %i.h, align 8
  %i.j = mul i32 %i.i, %1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  store i32 %2, ptr %i.l, align 4
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32844
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ult i32 %1, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i23 = icmp eq ptr %i.q, null
  br i1 %.not.i23, label %bb.i, label %array_get.exit24

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit24:                                 ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32848
  %i.s = load i32, ptr %i.r, align 8
  %i.t = mul i32 %i.s, %1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = trunc i32 %2 to i16
  store i16 %i.w, ptr %i.v, align 2
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.x = mul i32 %1, 3
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32844
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i25, label %bb.m, label %array_get.exit26

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

end_hunk_0
