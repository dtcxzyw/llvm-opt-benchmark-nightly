Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vga?download=true
inline.NumInlined: 165
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@vga_init_io:bb.a
  %i.d = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #20 ; 3 uses
  tail call void @memory_region_init_io(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull @vga_mem_ops, ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 131072) #18
  tail call void @memory_region_set_flush_coalesced(ptr noundef %i.d) #18
  ret ptr %i.d
}

declare ptr @qdev_get_machine() local_unnamed_addr #6

declare ptr @object_dynamic_cast(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @memory_region_set_flush_coalesced(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vga_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  tail call void @qemu_register_reset(ptr noundef nonnull @vga_reset, ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2428
  store i32 0, ptr %i.a, align 4
  store ptr %2, ptr %0, align 16
  %i.b = tail call ptr @qdev_get_machine() #18
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #18
  %i.d = tail call ptr @object_dynamic_cast(ptr noundef %i.c, ptr noundef nonnull @.str.32) #18
  %i.e = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #20 ; 4 uses
  tail call void @memory_region_init_io(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull @vga_mem_ops, ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef 131072) #18
  tail call void @memory_region_set_flush_coalesced(ptr noundef %i.e) #18
  tail call void @memory_region_add_subregion_overlap(ptr noundef %2, i64 noundef 655360, ptr noundef %i.e, i32 noundef 1) #18
  tail call void @memory_region_set_coalescing(ptr noundef %i.e) #18
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 3 uses
  tail call void @portio_list_init(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef nonnull @vga_portio_list, ptr noundef nonnull %0, ptr noundef nonnull @.str) #18
  tail call void @portio_list_set_flush_coalesced(ptr noundef nonnull %i.f) #18
  tail call void @portio_list_add(ptr noundef nonnull %i.f, ptr noundef %3, i32 noundef 944) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %i.d, null
  %vbe_portio_list_no_x86.vbe_portio_list_x86.i = select i1 %.not.i, ptr @vbe_portio_list_no_x86, ptr @vbe_portio_list_x86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 2 uses
  tail call void @portio_list_init(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %vbe_portio_list_no_x86.vbe_portio_list_x86.i, ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #18
  tail call void @portio_list_add(ptr noundef nonnull %i.g, ptr noundef %3, i32 noundef 462) #18
  ret void
}

declare void @qemu_register_reset(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal void @vga_reset(ptr noundef initializes((592, 593)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 593
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1105
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(256) %i.e, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1362
  store i8 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.g, i8 noundef 0, i64 noundef 21, i1 noundef false) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.j, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1645
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1653
  store i64 0, ptr %i.k, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, i8 noundef 0, i64 noundef 3, i1 noundef false) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.n, i8 noundef 0, i64 noundef 768, i1 noundef false) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2428
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2586 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.q, i8 noundef 0, i64 noundef 20, i1 noundef false) #18
  store i16 -20283, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i32 0, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = load i32, ptr %i.t, align 16
  %i.v = lshr i32 %i.u, 16
  %i.w = add nsw i32 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2632
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store i32 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2652
  store i8 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2653
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i8 noundef 0, i64 noundef 16, i1 noundef false) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i32 0, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2706
  store i8 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2707
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i32 0, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ak, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.al, i8 noundef 0, i64 noundef 1024, i1 noundef false) #18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64000) %i.am, i8 noundef 0, i64 noundef 64000, i1 noundef false) #18
  %i.an = load i32, ptr @vga_retrace_method, align 4
  %cond.i = icmp eq i32 %i.an, 1
  br i1 %cond.i, label %bb.b, label %vga_common_reset.exit

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ao, i8 noundef 0, i64 noundef 40, i1 noundef false) #18
  br label %vga_common_reset.exit

vga_common_reset.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @vga_update_memory_access(ptr noundef nonnull %0)
  ret void
}

declare void @memory_region_add_subregion_overlap(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @memory_region_set_coalescing(ptr noundef) local_unnamed_addr #6

declare void @portio_list_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @portio_list_set_flush_coalesced(ptr noundef) local_unnamed_addr #6

declare void @portio_list_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #6

declare void @memory_region_del_subregion(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @object_unparent(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @memory_region_init_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @memory_region_owner(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @vga_endian_state_needed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2755
  %i.b = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.d = load i8, ptr %i.c, align 2, !range !8, !noundef !9
  %i.e = icmp ne i8 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @vga_invalidate_display(ptr nofree noundef writeonly captures(none) initializes((2684, 2692)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2684
  store i32 -1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i32 -1, ptr %i.b, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @vga_update_display(ptr noundef %0) #1 {
bb.a:
  %1 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %2 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 14 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = tail call ptr @qemu_console_surface(ptr noundef %i.d) #18 ; 2 uses
  tail call void @qemu_flush_coalesced_mmio_buffer() #18
  %.val2.i = load ptr, ptr %i.e, align 8
  %i.f = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i) #18
  %.val.i = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @pixman_image_get_format(ptr noundef %.val.i) #18 ; 0 uses
  %i.h = icmp ult i32 %i.f, 16777216
  br i1 %i.h, label %vga_draw_blank.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1362
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, 32
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ 2, %bb.b ]     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not17 = icmp eq i32 %.0, %i.q                 ; 2 uses
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.0, ptr %i.p, align 8
  %i.r = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #18
  %i.s = sdiv i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i64 %i.s, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 2 uses
  %i.u = load ptr, ptr %i.c, align 16
  %i.v = tail call ptr @qemu_console_surface(ptr noundef %i.u) #18 ; 8 uses
  switch i32 %.0, label %bb.dw [
    i32 0, label %bb.g
    i32 1, label %bb.bh
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #18
  %i.x = sdiv i64 %i.w, 1000000                   ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 2594       ; 2 uses
  %.val.i.i = load i16, ptr %i.y, align 2
  %i.z = trunc i16 %.val.i.i to i1
  %i.aa = select i1 %i.z, i64 852, i64 596
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1
  %i.ab = zext i8 %.in.i.i to i32                 ; 4 uses
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = and i32 %i.ac, 1
  %i.ae = shl nuw nsw i32 %i.ab, 1
  %i.af = and i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = shl nuw nsw i32 %i.ag, 15
  %i.ai = or disjoint i32 %i.ah, 2                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %.not.i = icmp eq i32 %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ai, ptr %i.aj, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0220.i = phi i32 [ 1, %bb.h ], [ %.016, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = lshr i32 %i.ab, 5
  %i.ao = and i32 %i.an, 1
  %i.ap = lshr i32 %i.ab, 1
  %i.aq = and i32 %i.ap, 6
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = shl nuw nsw i32 %i.ar, 15
  %i.at = or disjoint i32 %i.as, 2                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2636 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %.not236.i = icmp eq i32 %i.at, %i.av
  br i1 %.not236.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.at, ptr %i.au, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1221.i = phi i32 [ 1, %bb.j ], [ %.0220.i, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 16
  %i.ay = and i32 %i.ax, 4
  %.not237.i = icmp eq i32 %i.ay, 0
  br i1 %.not237.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ba = load i8, ptr %i.az, align 4, !range !8, !noundef !9
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr %i.aw, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2222.i = phi i32 [ 1, %bb.m ], [ %.1221.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull %0, ptr noundef nonnull %2) #18, !inline_history !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.bf = load i128, ptr %2, align 4
  %i.bg = load i128, ptr %i.be, align 1
  %i.bh = icmp ne i128 %i.bf, %i.bg
  %i.bi = zext i1 %i.bh to i32
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %update_basic_params.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  br label %update_basic_params.exit.i

update_basic_params.exit.i:                       ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ 1, %bb.o ], [ %.2222.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bj = load i32, ptr %i.be, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.bl = load i8, ptr %i.bk, align 2
  %i.bm = and i8 %i.bl, 31                        ; 2 uses
  %narrow.i.i = add nuw nsw i8 %i.bm, 1           ; 4 uses
  %.val.i.i.i = load i16, ptr %i.y, align 2
  %i.bn = trunc i16 %.val.i.i.i to i1
  %i.bo = select i1 %i.bn, i64 850, i64 594
  %.in.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %.in.i.i.i = load i8, ptr %.in.in.i.i.i, align 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1390
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1395
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 100
  br i1 %i.bt, label %vga_get_text_resolution.exit.i, label %bb.p

bb.p:                                             ; preds = %update_basic_params.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1407
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = zext i8 %i.by to i16                    ; 2 uses
  %i.ca = shl nuw nsw i16 %i.bz, 7
  %i.cb = and i16 %i.ca, 256
  %i.cc = shl nuw nsw i16 %i.bz, 3
  %i.cd = and i16 %i.cc, 512
  %i.ce = add nuw nsw i16 %i.bw, 1
  %i.cf = or disjoint i16 %i.ce, %i.cd
  %.lhs.trunc.i.i = add nuw nsw i16 %i.cf, %i.cb
  %.rhs.trunc.i.i = zext nneg i8 %narrow.i.i to i16
  %i.cg = udiv i16 %.lhs.trunc.i.i, %.rhs.trunc.i.i
  %.zext.i.i = zext nneg i16 %i.cg to i32
  br label %vga_get_text_resolution.exit.i

vga_get_text_resolution.exit.i:                   ; preds = %bb.p, %update_basic_params.exit.i
  %.0.i270.i = phi i32 [ %.zext.i.i, %bb.p ], [ 100, %update_basic_params.exit.i ] ; 7 uses
  %i.ch = zext nneg i8 %narrow.i.i to i32         ; 9 uses
  %i.ci = and i8 %.in.i.i.i, 8
  %.not18.i.i = icmp eq i8 %i.ci, 0
  %i.cj = and i8 %.in.i.i.i, 1
  %.not.i271.i = icmp eq i8 %i.cj, 0
  %spec.select.i.i = select i1 %.not.i271.i, i32 9, i32 8
  %.1.i.i = select i1 %.not18.i.i, i32 %spec.select.i.i, i32 16 ; 8 uses
  %i.ck = zext i8 %i.bq to i32                    ; 2 uses
  %i.cl = add nuw nsw i32 %i.ck, 1                ; 6 uses
  %i.cm = mul nuw nsw i32 %.0.i270.i, %i.cl
  %i.cn = add nsw i32 %i.cm, -16001
  %or.cond268.i = icmp ult i32 %i.cn, -15999
  br i1 %or.cond268.i, label %vga_draw_blank.exit, label %bb.q

bb.q:                                             ; preds = %vga_get_text_resolution.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2684 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %.not238.i = icmp eq i32 %i.cl, %i.cp
  br i1 %.not238.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.cr = load i32, ptr %i.cq, align 16
  %.not239.i = icmp eq i32 %.0.i270.i, %i.cr
  br i1 %.not239.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.ct = load i8, ptr %i.cs, align 8
  %i.cu = zext i8 %i.ct to i32
  %.not240.i = icmp eq i32 %.1.i.i, %i.cu
  br i1 %.not240.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2681
  %i.cw = load i8, ptr %i.cv, align 1
  %.not241.i = icmp eq i8 %narrow.i.i, %i.cw
  br i1 %.not241.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2700
  %i.cy = load i32, ptr %i.cx, align 4
  %.not242.i = icmp eq i32 %i.cy, 0
  br i1 %.not242.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cz = mul nuw nsw i32 %.1.i.i, %i.cl          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2692
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = mul nuw nsw i32 %.0.i270.i, %i.ch       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %i.c, align 16
  call void @qemu_console_resize(ptr noundef %i.dd, i32 noundef %i.cz, i32 noundef %i.db) #18
  %i.de = load ptr, ptr %i.c, align 16
  %i.df = call ptr @qemu_console_surface(ptr noundef %i.de) #18
  %i.dg = load ptr, ptr %i.c, align 16
  call void @qemu_console_text_resize(ptr noundef %i.dg, i32 noundef %i.cl, i32 noundef %.0.i270.i) #18
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2700
  store i32 0, ptr %i.dh, align 4
  store i32 %i.cl, ptr %i.co, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i32 %.0.i270.i, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 %narrow.i.i, ptr %i.dj, align 1
  %i.dk = trunc nuw nsw i32 %.1.i.i to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2680
  store i8 %i.dk, ptr %i.dl, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3.i = phi i32 [ 1, %bb.v ], [ %.0.i.i, %bb.u ]
  %.0219.i = phi ptr [ %i.df, %bb.v ], [ %i.v, %bb.u ] ; 4 uses
  %i.dm = call fastcc i32 @update_palette16(ptr noundef nonnull %0)
  %i.dn = or i32 %i.dm, %.3.i                     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 3 uses
  %.val2.i.i = load ptr, ptr %.0219.i, align 8
  %i.dp = call i32 @pixman_image_get_format(ptr noundef %.val2.i.i) #18
  %i.dq = lshr i32 %i.dp, 24
  %.val.i272.i = load ptr, ptr %.0219.i, align 8
  %i.dr = call i32 @pixman_image_get_format(ptr noundef %.val.i272.i) #18
  %i.ds = lshr i32 %i.dr, 22
  %i.dt = and i32 %i.ds, 3
  %i.du = shl nuw nsw i32 %i.dq, %i.dt
  %i.dv = add nuw nsw i32 %i.du, 7
  %i.dw = lshr i32 %i.dv, 3
  %i.dx = mul nuw nsw i32 %i.dw, %.1.i.i
  %.not243.i = icmp eq i32 %i.dn, 0
  br i1 %.not243.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i8 1, ptr %i.dy, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2753 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !range !8, !noundef !9
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.dz, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.4.i = phi i32 [ 1, %bb.z ], [ %i.dn, %bb.y ]  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1403
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2660 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = sub i32 %i.ej, %i.el                    ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 16           ; 3 uses
  %.not244.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not244.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1399
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2706
  %i.es = load i8, ptr %i.er, align 2
  %.not245.i = icmp eq i8 %i.eq, %i.es
  br i1 %.not245.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.eu = load i8, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2707
  %i.ew = load i8, ptr %i.ev, align 1
  %.not246.i = icmp eq i8 %i.eu, %i.ew
  br i1 %.not246.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ex = icmp ult i32 %i.eo, 16000
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.ez = zext nneg i32 %i.eo to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ez
  store i32 -1, ptr %i.fa, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fb = icmp ult i32 %i.em, 16000
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.fd = zext nneg i32 %i.em to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  store i32 -1, ptr %i.fe, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store i32 %i.em, ptr %i.en, align 16
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1399
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2706
  store i8 %i.fg, ptr %i.fh, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.fj = load i8, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2707
  store i8 %i.fj, ptr %i.fk, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fl = load ptr, ptr %i.al, align 8
  %i.fm = shl nuw nsw i32 %i.ej, 2
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8
  %.not247.i = icmp slt i64 %i.x, %i.fq
  br i1 %.not247.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fr = add nsw i64 %i.x, 266
  store i64 %i.fr, ptr %i.fp, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2708 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 4, !range !8, !noundef !9
  %i.fu = xor i8 %i.ft, 1
  store i8 %i.fu, ptr %i.fs, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %.not248.i = icmp slt i64 %i.x, %i.fw
  br i1 %.not248.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = add nsw i64 %i.x, 533
  store i64 %i.fx, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 16, !range !8, !noundef !9
  %i.ga = xor i8 %i.fz, 1
  store i8 %i.ga, ptr %i.fy, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1379
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = and i8 %i.gc, 8
  %.not249.i = icmp eq i8 %i.gd, 0
  %spec.select.i = select i1 %.not249.i, i32 %.4.i, i32 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.5.i = phi i32 [ %.4.i, %bb.ak ], [ %spec.select.i, %bb.al ]
  %.0219.val.i = load ptr, ptr %.0219.i, align 8
  %i.ge = call ptr @pixman_image_get_data(ptr noundef %.0219.val.i) #18
  %.0219.val269.i = load ptr, ptr %.0219.i, align 8
  %i.gf = call i32 @pixman_image_get_stride(ptr noundef %.0219.val269.i) #18 ; 3 uses
  %.not402.i = icmp eq i32 %.0.i270.i, 0
  br i1 %.not402.i, label %vga_draw_blank.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.gg = load i32, ptr %i.ek, align 4
  %i.gh = shl i32 %i.gg, 2
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.not250.i = icmp eq i32 %.5.i, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1379
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.gm = sext i32 %i.gf to i64                   ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1399
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.gq = zext nneg i32 %i.dx to i64
  %i.gr = mul i32 %i.gf, %i.ch
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2664
  br label %bb.an

bb.an:                                            ; preds = %bb.bg, %.lr.ph.i
  %.0202401.i = phi ptr [ %i.gi, %.lr.ph.i ], [ %.1.lcssa.i, %bb.bg ]
  %.0204400.i = phi ptr [ %i.ge, %.lr.ph.i ], [ %i.sm, %bb.bg ] ; 2 uses
  %.0209399.i = phi i32 [ %i.gh, %.lr.ph.i ], [ %.1210.i, %bb.bg ] ; 2 uses
  %.0211398.i = phi i32 [ 0, %.lr.ph.i ], [ %i.sn, %bb.bg ] ; 2 uses
  %.0217397.i = phi i32 [ 0, %.lr.ph.i ], [ %i.sr, %bb.bg ] ; 2 uses
  %i.gu = load ptr, ptr %i.al, align 8
  %i.gv = zext i32 %.0209399.i to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  br label %bb.ao

bb.ao:                                            ; preds = %vga_draw_glyph16.exit319.i, %bb.an
  %.1396.i = phi ptr [ %.0202401.i, %bb.an ], [ %i.sf, %vga_draw_glyph16.exit319.i ] ; 4 uses
  %.0205394.i = phi ptr [ %i.gw, %bb.an ], [ %i.se, %vga_draw_glyph16.exit319.i ] ; 5 uses
  %.0206393.i = phi ptr [ %.0204400.i, %bb.an ], [ %i.sd, %vga_draw_glyph16.exit319.i ] ; 6 uses
  %.0212392.i = phi i32 [ -1, %bb.an ], [ %.2.i, %vga_draw_glyph16.exit319.i ] ; 3 uses
  %.0214391.i = phi i32 [ %i.cl, %bb.an ], [ %.2216.i, %vga_draw_glyph16.exit319.i ] ; 3 uses
  %.0218390.i = phi i32 [ 0, %bb.an ], [ %i.sg, %vga_draw_glyph16.exit319.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0205394.i, i64 2
  %i.gy = load ptr, ptr %i.al, align 8
  %i.gz = load i32, ptr %i.gj, align 16
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha
  %i.hc = icmp ugt ptr %i.gx, %i.hb
  br i1 %i.hc, label %bb.be, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = load i16, ptr %.0205394.i, align 2      ; 2 uses
  %i.he = zext i16 %i.hd to i32                   ; 6 uses
  br i1 %.not250.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hf = load i32, ptr %.1396.i, align 4
  %.not251.i = icmp ne i32 %i.hf, %i.he
  %i.hg = icmp eq ptr %.0205394.i, %i.fo
  %or.cond261.i = select i1 %.not251.i, i1 true, i1 %i.hg
  br i1 %or.cond261.i, label %bb.ar, label %vga_draw_glyph16.exit319.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %spec.select262.i = call i32 @llvm.smin.i32(i32 %.0218390.i, i32 %.0214391.i) ; 7 uses
  %.1213.i = call i32 @llvm.smax.i32(i32 %.0218390.i, i32 %.0212392.i) ; 7 uses
  store i32 %i.he, ptr %.1396.i, align 4
  %i.hh = and i32 %i.he, 255                      ; 2 uses
  %i.hi = lshr i32 %i.he, 8
  %3 = and i32 %i.he, 2048
  %.sroa.idx.not.i = icmp eq i32 %3, 0
  %.sroa.speculated.v.v.i = select i1 %.sroa.idx.not.i, i32 %i.ai, i32 %i.at
  %.sroa.speculated.v.i = zext nneg i32 %.sroa.speculated.v.v.i to i64
  %.sroa.speculated.i = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.speculated.v.i
  %i.hj = shl nuw nsw i32 %i.hh, 7
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.speculated.i, i64 %i.hk ; 4 uses
  %i.hm = load i8, ptr %i.gk, align 1             ; 2 uses
  %i.hn = and i8 %i.hm, 8
  %.not252.i = icmp eq i8 %i.hn, 0
  %i.ho = lshr i32 %i.he, 12                      ; 2 uses
  br i1 %.not252.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hp = and i32 %i.ho, 7
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4            ; 4 uses
  %.not253.i = icmp sgt i16 %i.hd, -1
  br i1 %.not253.i, label %.sink.split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ht = load i8, ptr %i.gl, align 16, !range !8, !noundef !9
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %.sink.split.i, label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.hv = zext nneg i32 %i.ho to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.au, %bb.at, %bb.as
  %.0207.ph.i = phi i32 [ %i.hx, %bb.au ], [ %i.hs, %bb.at ], [ %i.hs, %bb.as ]
  %i.hy = and i32 %i.hi, 15
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4
  br label %bb.av

bb.av:                                            ; preds = %.sink.split.i, %bb.at
  %.0208.i = phi i32 [ %i.hs, %bb.at ], [ %i.ib, %.sink.split.i ] ; 32 uses
  %.0207.i = phi i32 [ %i.hs, %bb.at ], [ %.0207.ph.i, %.sink.split.i ] ; 42 uses
  switch i32 %.1.i.i, label %bb.ay [
    i32 16, label %bb.aw
    i32 9, label %select.unfold.i
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ic = xor i32 %.0207.i, %.0208.i              ; 2 uses
  %i.id = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.if = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.ig = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.015.i.i = phi i32 [ %i.ch, %bb.aw ], [ %i.kg, %bb.ax ]
  %.014.i.i = phi ptr [ %i.hl, %bb.aw ], [ %i.ke, %bb.ax ] ; 2 uses
  %.0.i273.i = phi ptr [ %.0206393.i, %bb.aw ], [ %i.kf, %bb.ax ] ; 11 uses
  %i.ih = load i8, ptr %.014.i.i, align 1
  %i.ii = zext i8 %i.ih to i32                    ; 2 uses
  %i.ij = lshr i32 %i.ii, 4
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @expand4to8, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i32                    ; 5 uses
  %i.io = lshr i32 %i.in, 7
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = and i32 %i.ic, %i.ip
  %i.ir = xor i32 %i.iq, %.0207.i
  store i32 %i.ir, ptr %.0.i273.i, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 4
  %i.it = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.iv = and <4 x i32> %i.iu, <i32 64, i32 32, i32 16, i32 8>
  %i.iw = icmp eq <4 x i32> %i.iv, zeroinitializer
  %i.ix = select <4 x i1> %i.iw, <4 x i32> %i.ie, <4 x i32> %i.ig
  store <4 x i32> %i.ix, ptr %i.is, align 4
  %.mask37.i.i.i = and i32 %i.in, 4
  %isneg.not38.i.i.i = icmp eq i32 %.mask37.i.i.i, 0
  %i.iy = select i1 %isneg.not38.i.i.i, i32 %.0207.i, i32 %.0208.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 20
  store i32 %i.iy, ptr %i.iz, align 4
  %.mask39.i.i.i = and i32 %i.in, 2
  %isneg.not40.i.i.i = icmp eq i32 %.mask39.i.i.i, 0
  %i.ja = select i1 %isneg.not40.i.i.i, i32 %.0207.i, i32 %.0208.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 24
  store i32 %i.ja, ptr %i.jb, align 4
  %i.jc = and i32 %i.in, 1
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = select i1 %i.jd, i32 %.0207.i, i32 %.0208.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 28
  store i32 %i.je, ptr %i.jf, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 32
  %i.jh = and i32 %i.ii, 15
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @expand4to8, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = zext i8 %i.jk to i32                    ; 5 uses
  %i.jm = lshr i32 %i.jl, 7
  %i.jn = sub nsw i32 0, %i.jm
  %i.jo = and i32 %i.ic, %i.jn
  %i.jp = xor i32 %i.jo, %.0207.i
  store i32 %i.jp, ptr %i.jg, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 36
  %i.jr = insertelement <4 x i32> poison, i32 %i.jl, i64 0
  %i.js = shufflevector <4 x i32> %i.jr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jt = and <4 x i32> %i.js, <i32 64, i32 32, i32 16, i32 8>
  %i.ju = icmp eq <4 x i32> %i.jt, zeroinitializer
  %i.jv = select <4 x i1> %i.ju, <4 x i32> %i.ie, <4 x i32> %i.ig
  store <4 x i32> %i.jv, ptr %i.jq, align 4
  %.mask37.i24.i.i = and i32 %i.jl, 4
  %isneg.not38.i25.i.i = icmp eq i32 %.mask37.i24.i.i, 0
  %i.jw = select i1 %isneg.not38.i25.i.i, i32 %.0207.i, i32 %.0208.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 52
  store i32 %i.jw, ptr %i.jx, align 4
  %.mask39.i26.i.i = and i32 %i.jl, 2
  %isneg.not40.i27.i.i = icmp eq i32 %.mask39.i26.i.i, 0
  %i.jy = select i1 %isneg.not40.i27.i.i, i32 %.0207.i, i32 %.0208.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 56
  store i32 %i.jy, ptr %i.jz, align 4
  %i.ka = and i32 %i.jl, 1
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = select i1 %i.kb, i32 %.0207.i, i32 %.0208.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 60
  store i32 %i.kc, ptr %i.kd, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.kf = getelementptr inbounds i8, ptr %.0.i273.i, i64 %i.gm
  %i.kg = add nsw i32 %.015.i.i, -1               ; 2 uses
  %.not.i274.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i274.i, label %vga_draw_glyph16.exit.i, label %bb.ax, !llvm.loop !17

bb.ay:                                            ; preds = %bb.av
  %i.kh = xor i32 %.0207.i, %.0208.i
  %i.ki = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.kj = shufflevector <4 x i32> %i.ki, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kk = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.kl = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.011.i.i = phi i32 [ %i.ch, %bb.ay ], [ %i.li, %bb.az ]
  %.010.i.i = phi ptr [ %i.hl, %bb.ay ], [ %i.lg, %bb.az ] ; 2 uses
  %.0.i275.i = phi ptr [ %.0206393.i, %bb.ay ], [ %i.lh, %bb.az ] ; 6 uses
  %i.km = load i8, ptr %.010.i.i, align 1
  %i.kn = zext i8 %i.km to i32                    ; 5 uses
  %i.ko = lshr i32 %i.kn, 7
  %i.kp = sub nsw i32 0, %i.ko
  %i.kq = and i32 %i.kh, %i.kp
  %i.kr = xor i32 %i.kq, %.0207.i
  store i32 %i.kr, ptr %.0.i275.i, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i275.i, i64 4
  %i.kt = insertelement <4 x i32> poison, i32 %i.kn, i64 0
  %i.ku = shufflevector <4 x i32> %i.kt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kv = and <4 x i32> %i.ku, <i32 64, i32 32, i32 16, i32 8>
  %i.kw = icmp eq <4 x i32> %i.kv, zeroinitializer
  %i.kx = select <4 x i1> %i.kw, <4 x i32> %i.kj, <4 x i32> %i.kl
  store <4 x i32> %i.kx, ptr %i.ks, align 4
  %.mask37.i.i284.i = and i32 %i.kn, 4
  %isneg.not38.i.i285.i = icmp eq i32 %.mask37.i.i284.i, 0
  %i.ky = select i1 %isneg.not38.i.i285.i, i32 %.0207.i, i32 %.0208.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i275.i, i64 20
  store i32 %i.ky, ptr %i.kz, align 4
  %.mask39.i.i286.i = and i32 %i.kn, 2
  %isneg.not40.i.i287.i = icmp eq i32 %.mask39.i.i286.i, 0
  %i.la = select i1 %isneg.not40.i.i287.i, i32 %.0207.i, i32 %.0208.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i275.i, i64 24
  store i32 %i.la, ptr %i.lb, align 4
  %i.lc = and i32 %i.kn, 1
  %i.ld = icmp eq i32 %i.lc, 0
  %i.le = select i1 %i.ld, i32 %.0207.i, i32 %.0208.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i275.i, i64 28
  store i32 %i.le, ptr %i.lf, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.lh = getelementptr inbounds i8, ptr %.0.i275.i, i64 %i.gm
  %i.li = add nsw i32 %.011.i.i, -1               ; 2 uses
  %.not.i288.i = icmp eq i32 %i.li, 0
  br i1 %.not.i288.i, label %vga_draw_glyph16.exit.i, label %bb.az, !llvm.loop !18

select.unfold.i:                                  ; preds = %bb.av
  %i.lj = add nsw i32 %i.hh, -224
  %or.cond.i = icmp ult i32 %i.lj, -48
  %i.lk = xor i32 %.0207.i, %.0208.i              ; 2 uses
  %i.ll = and i8 %i.hm, 4
  %.not.i289384.i = icmp eq i8 %i.ll, 0
  %.not.i289.i = or i1 %or.cond.i, %.not.i289384.i
  br i1 %.not.i289.i, label %.split.us.i.i.preheader, label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %select.unfold.i
  %i.lm = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.ln = shufflevector <4 x i32> %i.lm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lo = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.split.i.i

.split.us.i.i.preheader:                          ; preds = %select.unfold.i
  %i.lq = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.lr = shufflevector <4 x i32> %i.lq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ls = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.lt = shufflevector <4 x i32> %i.ls, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader, %.split.us.i.i
  %.045.us.i.i = phi i32 [ %i.mr, %.split.us.i.i ], [ %i.ch, %.split.us.i.i.preheader ]
  %.044.us.i.i = phi ptr [ %i.mp, %.split.us.i.i ], [ %i.hl, %.split.us.i.i.preheader ] ; 2 uses
  %.0.us.i.i = phi ptr [ %i.mq, %.split.us.i.i ], [ %.0206393.i, %.split.us.i.i.preheader ] ; 7 uses
end_hunk_0
begin_hunk_1_@vga_update_display:bb.a
  %i.oe = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.split.i337.i

.preheader55.preheader:                           ; preds = %bb.bd
  %i.of = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.og = shufflevector <4 x i32> %i.of, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oh = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.oi = shufflevector <4 x i32> %i.oh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader55

.preheader.preheader:                             ; preds = %bb.bd
  %i.oj = insertelement <4 x i32> poison, i32 %.0207.i, i64 0
  %i.ok = shufflevector <4 x i32> %i.oj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ol = insertelement <4 x i32> poison, i32 %.0208.i, i64 0
  %i.om = shufflevector <4 x i32> %i.ol, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader55:                                     ; preds = %.preheader55.preheader, %.preheader55
  %.015.i291.i = phi i32 [ %i.qm, %.preheader55 ], [ %i.nw, %.preheader55.preheader ]
  %.014.i292.i = phi ptr [ %i.qk, %.preheader55 ], [ @cursor_glyph, %.preheader55.preheader ] ; 2 uses
  %.0.i293.i = phi ptr [ %i.ql, %.preheader55 ], [ %i.nz, %.preheader55.preheader ] ; 11 uses
  %i.on = load i8, ptr %.014.i292.i, align 1
  %i.oo = zext i8 %i.on to i32                    ; 2 uses
  %i.op = lshr i32 %i.oo, 4
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @expand4to8, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = zext i8 %i.os to i32                    ; 5 uses
  %i.ou = lshr i32 %i.ot, 7
  %i.ov = sub nsw i32 0, %i.ou
  %i.ow = and i32 %i.oa, %i.ov
  %i.ox = xor i32 %i.ow, %.0207.i
  store i32 %i.ox, ptr %.0.i293.i, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 4
  %i.oz = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %i.pa = shufflevector <4 x i32> %i.oz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pb = and <4 x i32> %i.pa, <i32 64, i32 32, i32 16, i32 8>
  %i.pc = icmp eq <4 x i32> %i.pb, zeroinitializer
  %i.pd = select <4 x i1> %i.pc, <4 x i32> %i.og, <4 x i32> %i.oi
  store <4 x i32> %i.pd, ptr %i.oy, align 4
  %.mask37.i.i302.i = and i32 %i.ot, 4
  %isneg.not38.i.i303.i = icmp eq i32 %.mask37.i.i302.i, 0
  %i.pe = select i1 %isneg.not38.i.i303.i, i32 %.0207.i, i32 %.0208.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 20
  store i32 %i.pe, ptr %i.pf, align 4
  %.mask39.i.i304.i = and i32 %i.ot, 2
  %isneg.not40.i.i305.i = icmp eq i32 %.mask39.i.i304.i, 0
  %i.pg = select i1 %isneg.not40.i.i305.i, i32 %.0207.i, i32 %.0208.i
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 24
  store i32 %i.pg, ptr %i.ph, align 4
  %i.pi = and i32 %i.ot, 1
  %i.pj = icmp eq i32 %i.pi, 0
  %i.pk = select i1 %i.pj, i32 %.0207.i, i32 %.0208.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 28
  store i32 %i.pk, ptr %i.pl, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 32
  %i.pn = and i32 %i.oo, 15
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @expand4to8, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = zext i8 %i.pq to i32                    ; 5 uses
  %i.ps = lshr i32 %i.pr, 7
  %i.pt = sub nsw i32 0, %i.ps
  %i.pu = and i32 %i.oa, %i.pt
  %i.pv = xor i32 %i.pu, %.0207.i
  store i32 %i.pv, ptr %i.pm, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 36
  %i.px = insertelement <4 x i32> poison, i32 %i.pr, i64 0
  %i.py = shufflevector <4 x i32> %i.px, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pz = and <4 x i32> %i.py, <i32 64, i32 32, i32 16, i32 8>
  %i.qa = icmp eq <4 x i32> %i.pz, zeroinitializer
  %i.qb = select <4 x i1> %i.qa, <4 x i32> %i.og, <4 x i32> %i.oi
  store <4 x i32> %i.qb, ptr %i.pw, align 4
  %.mask37.i24.i314.i = and i32 %i.pr, 4
  %isneg.not38.i25.i315.i = icmp eq i32 %.mask37.i24.i314.i, 0
  %i.qc = select i1 %isneg.not38.i25.i315.i, i32 %.0207.i, i32 %.0208.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 52
  store i32 %i.qc, ptr %i.qd, align 4
  %.mask39.i26.i316.i = and i32 %i.pr, 2
  %isneg.not40.i27.i317.i = icmp eq i32 %.mask39.i26.i316.i, 0
  %i.qe = select i1 %isneg.not40.i27.i317.i, i32 %.0207.i, i32 %.0208.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 56
  store i32 %i.qe, ptr %i.qf, align 4
  %i.qg = and i32 %i.pr, 1
  %i.qh = icmp eq i32 %i.qg, 0
  %i.qi = select i1 %i.qh, i32 %.0207.i, i32 %.0208.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i293.i, i64 60
  store i32 %i.qi, ptr %i.qj, align 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.014.i292.i, i64 4
  %i.ql = getelementptr inbounds i8, ptr %.0.i293.i, i64 %i.gm
  %i.qm = add nsw i32 %.015.i291.i, -1            ; 2 uses
  %.not.i318.i = icmp eq i32 %i.qm, 0
  br i1 %.not.i318.i, label %vga_draw_glyph16.exit319.i, label %.preheader55, !llvm.loop !17

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.011.i320.i = phi i32 [ %i.rj, %.preheader ], [ %i.nw, %.preheader.preheader ]
  %.010.i321.i = phi ptr [ %i.rh, %.preheader ], [ @cursor_glyph, %.preheader.preheader ] ; 2 uses
  %.0.i322.i = phi ptr [ %i.ri, %.preheader ], [ %i.nz, %.preheader.preheader ] ; 6 uses
  %i.qn = load i8, ptr %.010.i321.i, align 1
  %i.qo = zext i8 %i.qn to i32                    ; 5 uses
  %i.qp = lshr i32 %i.qo, 7
  %i.qq = sub nsw i32 0, %i.qp
  %i.qr = and i32 %i.oa, %i.qq
  %i.qs = xor i32 %i.qr, %.0207.i
  store i32 %i.qs, ptr %.0.i322.i, align 4
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i322.i, i64 4
  %i.qu = insertelement <4 x i32> poison, i32 %i.qo, i64 0
  %i.qv = shufflevector <4 x i32> %i.qu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qw = and <4 x i32> %i.qv, <i32 64, i32 32, i32 16, i32 8>
  %i.qx = icmp eq <4 x i32> %i.qw, zeroinitializer
  %i.qy = select <4 x i1> %i.qx, <4 x i32> %i.ok, <4 x i32> %i.om
  store <4 x i32> %i.qy, ptr %i.qt, align 4
  %.mask37.i.i331.i = and i32 %i.qo, 4
  %isneg.not38.i.i332.i = icmp eq i32 %.mask37.i.i331.i, 0
  %i.qz = select i1 %isneg.not38.i.i332.i, i32 %.0207.i, i32 %.0208.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.i322.i, i64 20
  store i32 %i.qz, ptr %i.ra, align 4
  %.mask39.i.i333.i = and i32 %i.qo, 2
  %isneg.not40.i.i334.i = icmp eq i32 %.mask39.i.i333.i, 0
  %i.rb = select i1 %isneg.not40.i.i334.i, i32 %.0207.i, i32 %.0208.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i322.i, i64 24
  store i32 %i.rb, ptr %i.rc, align 4
  %i.rd = and i32 %i.qo, 1
  %i.re = icmp eq i32 %i.rd, 0
  %i.rf = select i1 %i.re, i32 %.0207.i, i32 %.0208.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i322.i, i64 28
  store i32 %i.rf, ptr %i.rg, align 4
  %i.rh = getelementptr inbounds nuw i8, ptr %.010.i321.i, i64 4
  %i.ri = getelementptr inbounds i8, ptr %.0.i322.i, i64 %i.gm
  %i.rj = add nsw i32 %.011.i320.i, -1            ; 2 uses
  %.not.i335.i = icmp eq i32 %i.rj, 0
  br i1 %.not.i335.i, label %vga_draw_glyph16.exit319.i, label %.preheader, !llvm.loop !18

.split.i337.i:                                    ; preds = %.split.i337.i.preheader, %.split.i337.i
  %.045.i338.i = phi i32 [ %i.sc, %.split.i337.i ], [ %i.nw, %.split.i337.i.preheader ]
  %.044.i339.i = phi ptr [ %i.sa, %.split.i337.i ], [ @cursor_glyph, %.split.i337.i.preheader ] ; 2 uses
  %.0.i340.i = phi ptr [ %i.sb, %.split.i337.i ], [ %i.nz, %.split.i337.i.preheader ] ; 4 uses
  %i.rk = load i8, ptr %.044.i339.i, align 1
  %i.rl = zext i8 %i.rk to i32                    ; 2 uses
  %i.rm = lshr i32 %i.rl, 7
  %i.rn = sub nsw i32 0, %i.rm
  %i.ro = and i32 %i.oa, %i.rn
  %i.rp = xor i32 %i.ro, %.0207.i
  store i32 %i.rp, ptr %.0.i340.i, align 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i340.i, i64 4
  %i.rr = insertelement <4 x i32> poison, i32 %i.rl, i64 0
  %i.rs = shufflevector <4 x i32> %i.rr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rt = and <4 x i32> %i.rs, <i32 64, i32 32, i32 16, i32 8>
  %i.ru = icmp eq <4 x i32> %i.rt, zeroinitializer
  %i.rv = select <4 x i1> %i.ru, <4 x i32> %i.oc, <4 x i32> %i.oe
  store <4 x i32> %i.rv, ptr %i.rq, align 4
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i340.i, i64 20
  %i.rx = and <4 x i32> %i.rs, <i32 4, i32 2, i32 1, i32 1>
  %i.ry = icmp eq <4 x i32> %i.rx, zeroinitializer
  %i.rz = select <4 x i1> %i.ry, <4 x i32> %i.oc, <4 x i32> %i.oe
  store <4 x i32> %i.rz, ptr %i.rw, align 4
  %i.sa = getelementptr inbounds nuw i8, ptr %.044.i339.i, i64 4
  %i.sb = getelementptr inbounds i8, ptr %.0.i340.i, i64 %i.gm
  %i.sc = add nsw i32 %.045.i338.i, -1            ; 2 uses
  %.not57.i353.i = icmp eq i32 %i.sc, 0
  br i1 %.not57.i353.i, label %vga_draw_glyph16.exit319.i, label %.split.i337.i, !llvm.loop !19

vga_draw_glyph16.exit319.i:                       ; preds = %.split.i337.i, %.preheader55, %.preheader, %bb.bc, %bb.bb, %bb.ba, %vga_draw_glyph16.exit.i, %bb.aq
  %.2216.i = phi i32 [ %spec.select262.i, %bb.ba ], [ %.0214391.i, %bb.aq ], [ %spec.select262.i, %bb.bb ], [ %spec.select262.i, %vga_draw_glyph16.exit.i ], [ %spec.select262.i, %bb.bc ], [ %spec.select262.i, %.preheader ], [ %spec.select262.i, %.preheader55 ], [ %spec.select262.i, %.split.i337.i ] ; 2 uses
  %.2.i = phi i32 [ %.1213.i, %bb.ba ], [ %.0212392.i, %bb.aq ], [ %.1213.i, %bb.bb ], [ %.1213.i, %vga_draw_glyph16.exit.i ], [ %.1213.i, %bb.bc ], [ %.1213.i, %.preheader ], [ %.1213.i, %.preheader55 ], [ %.1213.i, %.split.i337.i ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0206393.i, i64 %i.gq
  %i.se = getelementptr inbounds nuw i8, ptr %.0205394.i, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %.1396.i, i64 4 ; 2 uses
  %i.sg = add nuw nsw i32 %.0218390.i, 1
  %exitcond.i = icmp eq i32 %.0218390.i, %i.ck
  br i1 %exitcond.i, label %bb.be, label %bb.ao, !llvm.loop !20

bb.be:                                            ; preds = %vga_draw_glyph16.exit319.i, %bb.ao
  %.0214.lcssa.i = phi i32 [ %.0214391.i, %bb.ao ], [ %.2216.i, %vga_draw_glyph16.exit319.i ] ; 2 uses
  %.0212.lcssa.i = phi i32 [ %.0212392.i, %bb.ao ], [ %.2.i, %vga_draw_glyph16.exit319.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.1396.i, %bb.ao ], [ %i.sf, %vga_draw_glyph16.exit319.i ]
  %.not259.i = icmp eq i32 %.0212.lcssa.i, -1
  br i1 %.not259.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sh = load ptr, ptr %i.c, align 16
  %i.si = mul i32 %.0214.lcssa.i, %.1.i.i
  %i.sj = mul nuw nsw i32 %.0217397.i, %i.ch
  %reass.sub = sub i32 %.0212.lcssa.i, %.0214.lcssa.i
  %i.sk = add i32 %reass.sub, 1
  %i.sl = mul i32 %i.sk, %.1.i.i
  call void @qemu_console_update(ptr noundef %i.sh, i32 noundef %i.si, i32 noundef %i.sj, i32 noundef %i.sl, i32 noundef %i.ch) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.sm = getelementptr inbounds i8, ptr %.0204400.i, i64 %i.gs
  %i.sn = add nuw nsw i32 %.0211398.i, %i.ch      ; 2 uses
  %i.so = add i32 %.0209399.i, %i.bj
  %i.sp = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.sq = icmp uge i32 %.0211398.i, %i.sp
  %.not260.i = icmp ult i32 %i.sn, %i.sp
  %or.cond267.i = select i1 %i.sq, i1 true, i1 %.not260.i
  %.1210.i = select i1 %or.cond267.i, i32 %i.so, i32 0
  %i.sr = add nuw nsw i32 %.0217397.i, 1          ; 2 uses
  %exitcond408.not.i = icmp eq i32 %i.sr, %.0.i270.i
  br i1 %exitcond408.not.i, label %vga_draw_blank.exit, label %bb.an, !llvm.loop !21

bb.bh:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !annotation !13
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2754 ; 5 uses
  %i.st = load i8, ptr %i.ss, align 2, !range !8, !noundef !9 ; 3 uses
  %i.su = trunc nuw i8 %i.st to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !13
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull %0, ptr noundef nonnull %1) #18, !inline_history !22
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 6 uses
  %i.sy = load i128, ptr %1, align 4
  %i.sz = load i128, ptr %i.sx, align 1
  %i.ta = icmp ne i128 %i.sy, %i.sz
  %i.tb = zext i1 %i.ta to i32
  %.not.i.i19 = icmp eq i32 %i.tb, 0
  br i1 %.not.i.i19, label %update_basic_params.exit.i20, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sx, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  br label %update_basic_params.exit.i20

update_basic_params.exit.i20:                     ; preds = %bb.bi, %bb.bh
  %.0.i.i21 = phi i32 [ 1, %bb.bi ], [ %.016, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.td = load ptr, ptr %i.tc, align 16
  call void %i.td(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18, !inline_history !23
  %i.te = load i32, ptr %i.a, align 4             ; 7 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.tg = load ptr, ptr %i.tf, align 16
  %i.th = call i32 %i.tg(ptr noundef nonnull %0) #18, !inline_history !23 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 1111
  %i.tj = load i8, ptr %i.ti, align 1
  %i.tk = lshr i8 %i.tj, 5
  %i.tl = and i8 %i.tk, 3                         ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.tn = load i8, ptr %i.tm, align 2
  %i.to = zext i8 %i.tn to i32                    ; 2 uses
  %i.tp = lshr i32 %i.to, 7                       ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 1412 ; 3 uses
  %i.tr = load i8, ptr %i.tq, align 4
  %i.ts = and i8 %i.tr, 1
  %.not.i22 = icmp eq i8 %i.ts, 0
  %i.tt = and i32 %i.to, 31
  %i.tu = add nuw nsw i32 %i.tt, 1
  %i.tv = shl nuw nsw i32 %i.tu, %i.tp
  %i.tw = add nsw i32 %i.tv, -1
  %.0218.i = select i1 %.not.i22, i32 %i.tp, i32 %i.tw ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 2652 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 4
  %.not247.i23 = icmp eq i8 %i.tl, %i.ty
  br i1 %.not247.i23, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %update_basic_params.exit.i20
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 2653
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = zext i8 %i.ua to i32
  %.not248.i43 = icmp eq i32 %i.tp, %i.ub
  br i1 %.not248.i43, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %update_basic_params.exit.i20
  store i8 %i.tl, ptr %i.tx, align 4
  %i.uc = trunc nuw nsw i32 %i.tp to i8
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 2653
  store i8 %i.uc, ptr %i.ud, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0.i = phi i32 [ 1, %bb.bk ], [ %.0.i.i21, %bb.bj ] ; 2 uses
  switch i8 %i.tl, label %bb.bo [
    i8 0, label %bb.bm
    i8 1, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ue = call fastcc i32 @update_palette16(ptr noundef nonnull %0)
  %i.uf = getelementptr i8, ptr %0, i64 2594
  %.val.i.i36 = load i16, ptr %i.uf, align 2
  %i.ug = trunc i16 %.val.i.i36 to i1
  %i.uh = select i1 %i.ug, i64 850, i64 594
  %.in.in.i.i37 = getelementptr inbounds nuw i8, ptr %0, i64 %i.uh
  %.in.i.i38 = load i8, ptr %.in.in.i.i37, align 1
  %i.ui = and i8 %.in.i.i38, 8                    ; 2 uses
  %.not250.not.i = icmp eq i8 %i.ui, 0
  %.lobit339.i = lshr exact i8 %i.ui, 3
  %i.uj = zext nneg i8 %.lobit339.i to i32
  %.0219.i39 = shl i32 %i.te, %i.uj
  %.0209.i = select i1 %.not250.not.i, i64 2, i64 3
  br label %update_palette256.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.uk = call fastcc i32 @update_palette16(ptr noundef nonnull %0)
  %i.ul = getelementptr i8, ptr %0, i64 2594
  %.val.i279.i = load i16, ptr %i.ul, align 2
  %i.um = trunc i16 %.val.i279.i to i1
  %i.un = select i1 %i.um, i64 850, i64 594
  %.in.in.i282.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.un
  %.in.i283.i = load i8, ptr %.in.in.i282.i, align 1
  %i.uo = lshr i8 %.in.i283.i, 3
  %.lobit.i = and i8 %i.uo, 1                     ; 2 uses
  %i.up = zext nneg i8 %.lobit.i to i32
  %.1220.i = shl i32 %i.te, %i.up
  %.1210.i24 = zext nneg i8 %.lobit.i to i64
  br label %update_palette256.exit.i

bb.bo:                                            ; preds = %bb.bl
  switch i32 %i.th, label %bb.bp [
    i32 32, label %bb.cc
    i32 8, label %bb.bu
    i32 15, label %bb.bz
    i32 16, label %bb.ca
    i32 24, label %bb.cb
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.us = load i32, ptr %i.ur, align 8
  %.not.i284.i = icmp eq i32 %i.us, 0
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  br i1 %.not.i284.i, label %.split.us.i.i42, label %.split.i.i40

.split.us.i.i42:                                  ; preds = %bb.bp, %bb.br
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %indvars.iv38.i.i = phi i64 [ %indvars.iv.next39.i.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.02527.us.i.i = phi i32 [ %.1.us.i.i, %bb.br ], [ 0, %bb.bp ]
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv38.i.i ; 3 uses
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = zext i8 %i.uv to i32                    ; 2 uses
  %i.ux = and i32 %i.uw, 1                        ; 2 uses
  %i.uy = shl nuw nsw i32 %i.uw, 2
  %i.uz = and i32 %i.uy, 252
  %i.va = shl nuw nsw i32 %i.ux, 1
  %i.vb = or disjoint i32 %i.uz, %i.va
  %i.vc = or disjoint i32 %i.vb, %i.ux
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = zext i8 %i.ve to i32                    ; 2 uses
  %i.vg = and i32 %i.vf, 1                        ; 2 uses
  %i.vh = shl nuw nsw i32 %i.vf, 2
  %i.vi = and i32 %i.vh, 252
  %i.vj = shl nuw nsw i32 %i.vg, 1
  %i.vk = or disjoint i32 %i.vi, %i.vj
  %i.vl = or disjoint i32 %i.vk, %i.vg
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = zext i8 %i.vn to i32                    ; 2 uses
  %i.vp = and i32 %i.vo, 1                        ; 2 uses
  %i.vq = shl nuw nsw i32 %i.vo, 2
  %i.vr = and i32 %i.vq, 252
  %i.vs = shl nuw nsw i32 %i.vp, 1
  %i.vt = or disjoint i32 %i.vr, %i.vs
  %i.vu = or disjoint i32 %i.vt, %i.vp
  %i.vv = shl nuw nsw i32 %i.vc, 16
  %i.vw = shl nuw nsw i32 %i.vl, 8
  %i.vx = or disjoint i32 %i.vw, %i.vv
  %i.vy = or disjoint i32 %i.vx, %i.vu            ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv40.i.i ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4
  %.not26.us.i.i = icmp eq i32 %i.vy, %i.wa
  br i1 %.not26.us.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.split.us.i.i42
  store i32 %i.vy, ptr %i.vz, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.split.us.i.i42
  %.1.us.i.i = phi i32 [ 1, %bb.bq ], [ %.02527.us.i.i, %.split.us.i.i42 ] ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 3
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, 256
  br i1 %exitcond45.not.i.i, label %update_palette256.exit.i, label %.split.us.i.i42, !llvm.loop !24

.split.i.i40:                                     ; preds = %bb.bp, %bb.bt
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %bb.bt ], [ 0, %bb.bp ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bt ], [ 0, %bb.bp ] ; 2 uses
  %.02527.i.i = phi i32 [ %.1.i.i41, %bb.bt ], [ 0, %bb.bp ]
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv.i.i ; 3 uses
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = zext i8 %i.wc to i32
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = zext i8 %i.wf to i32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = zext i8 %i.wi to i32
  %i.wk = shl nuw nsw i32 %i.wd, 16
  %i.wl = shl nuw nsw i32 %i.wg, 8
  %i.wm = or disjoint i32 %i.wl, %i.wk
  %i.wn = or disjoint i32 %i.wm, %i.wj            ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv33.i.i ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4
  %.not26.i.i = icmp eq i32 %i.wn, %i.wp
  br i1 %.not26.i.i, label %bb.bt, label %bb.bs

end_hunk_1
begin_hunk_2_@vga_update_display:bb.a
  %.0231.shrunk.i = phi i1 [ %i.aem, %bb.df ], [ %i.aek, %bb.de ] ; 2 uses
  %i.aen = icmp samesign ugt i32 %.0232347.i, 2047
  br i1 %i.aen, label %vga_scanline_invalidated.exit.i, label %.split.i

.thread:                                          ; preds = %bb.da
  %i.aeo = icmp samesign ugt i32 %.0232347.i, 2047
  br i1 %i.aeo, label %vga_scanline_invalidated.exit.i.thread, label %.split.i

.split.i:                                         ; preds = %.thread, %bb.dg
  %.0231.shrunk.i52 = phi i1 [ true, %.thread ], [ %.0231.shrunk.i, %bb.dg ]
  %i.aep = lshr i32 %.0232347.i, 5
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4
  %i.aet = and i32 %.0232347.i, 31
  %i.aeu = shl nuw i32 1, %i.aet
  %i.aev = and i32 %i.aes, %i.aeu
  %i.aew = icmp ne i32 %i.aev, 0
  %i.aex = or i1 %.0231.shrunk.i52, %i.aew
  br i1 %i.aex, label %vga_scanline_invalidated.exit.i.thread, label %bb.dl

vga_scanline_invalidated.exit.i:                  ; preds = %bb.dg
  br i1 %.0231.shrunk.i, label %vga_scanline_invalidated.exit.i.thread, label %bb.dl

vga_scanline_invalidated.exit.i.thread:           ; preds = %.thread, %vga_scanline_invalidated.exit.i, %.split.i
  %i.aey = icmp slt i32 %.0228348.i, 0
  %spec.select272.i = select i1 %i.aey, i32 %.0232347.i, i32 %.0228348.i ; 3 uses
  %.0235.val275.i = load i8, ptr %i.acm, align 8
  %i.aez = and i8 %.0235.val275.i, 1
  %.not266.i = icmp eq i8 %i.aez, 0
  br i1 %.not266.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %vga_scanline_invalidated.exit.i.thread
  %i.afa = load i32, ptr %i.a, align 4
  %i.afb = call ptr %i.acl(ptr noundef nonnull %0, ptr noundef %.0212351.i, i32 noundef %.1204.i, i32 noundef %i.afa, i32 noundef %.0213350.i) #18, !inline_history !23 ; 2 uses
  %.not267.i = icmp eq ptr %i.afb, null
  br i1 %.not267.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0212351.i, ptr noundef nonnull align 1 %i.afb, i64 noundef range(i64 -8589934592, 8589934589) %i.ade, i1 noundef false) #18
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.afc = load ptr, ptr %i.adf, align 8          ; 2 uses
  %.not268.i = icmp eq ptr %i.afc, null
  br i1 %.not268.i, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void %i.afc(ptr noundef nonnull %0, ptr noundef %.0212351.i, i32 noundef %.0232347.i) #18, !inline_history !23
  br label %bb.dn

bb.dl:                                            ; preds = %vga_scanline_invalidated.exit.i, %.split.i
  %i.afd = icmp sgt i32 %.0228348.i, -1
  br i1 %i.afd, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.afe = load ptr, ptr %i.c, align 16
  %i.aff = sub nsw i32 %.0232347.i, %.0228348.i
  call void @qemu_console_update(ptr noundef %i.afe, i32 noundef 0, i32 noundef %.0228348.i, i32 noundef %.2221313331.i, i32 noundef %i.aff) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %vga_scanline_invalidated.exit.i.thread
  %.2230.i = phi i32 [ %.0228348.i, %bb.dl ], [ %spec.select272.i, %vga_scanline_invalidated.exit.i.thread ], [ -1, %bb.dm ], [ %spec.select272.i, %bb.dk ], [ %spec.select272.i, %bb.dj ] ; 4 uses
  %.not269.i = icmp eq i32 %.0216349.i, 0
  br i1 %.not269.i, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.afg = load i8, ptr %i.tq, align 4
  %i.afh = or i8 %i.afg, -4
  %i.afi = sext i8 %i.afh to i32
  %i.afj = or i32 %.0233346.i, %i.afi
  %i.afk = icmp eq i32 %i.afj, -1
  br i1 %i.afk, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.afl = load i32, ptr %i.sx, align 16
  %i.afm = add i32 %i.afl, %.0205353.i
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.1206.i = phi i32 [ %i.afm, %bb.dp ], [ %.0205353.i, %bb.do ]
  %i.afn = add i32 %.0233346.i, 1
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.afo = add nsw i32 %.0216349.i, -1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.1234.i = phi i32 [ %.0233346.i, %bb.dr ], [ %i.afn, %bb.dq ]
  %.1217.i = phi i32 [ %i.afo, %bb.dr ], [ %.0218.i, %bb.dq ]
  %.2207.i = phi i32 [ %.0205353.i, %bb.dr ], [ %.1206.i, %bb.dq ]
  %i.afp = load i32, ptr %i.aai, align 8
  %i.afq = icmp eq i32 %.0232347.i, %i.afp
  br i1 %i.afq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.afr = load i8, ptr %i.adg, align 1, !range !8, !noundef !9
  %i.afs = trunc nuw i8 %i.afr to i1
  %spec.select273.i = select i1 %i.afs, i32 8, i32 %.0213350.i
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.2215.i = phi i32 [ %spec.select273.i, %bb.dt ], [ %.0213350.i, %bb.ds ]
  %.3208.i = phi i32 [ 0, %bb.dt ], [ %.2207.i, %bb.ds ]
  %i.aft = getelementptr inbounds i8, ptr %.0212351.i, i64 %i.adh
  %i.afu = add nuw nsw i32 %.0232347.i, 1         ; 3 uses
  %i.afv = load i32, ptr %i.b, align 4
  %i.afw = icmp slt i32 %i.afu, %i.afv
  br i1 %i.afw, label %bb.cy, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.du
  %i.afx = icmp sgt i32 %.2230.i, -1
  br i1 %i.afx, label %bb.dv, label %vga_draw_graphic.exit

bb.dv:                                            ; preds = %._crit_edge.i
  %i.afy = load ptr, ptr %i.c, align 16
  %i.afz = sub nsw i32 %i.afu, %.2230.i
  call void @qemu_console_update(ptr noundef %i.afy, i32 noundef 0, i32 noundef %.2230.i, i32 noundef %.2221313331.i, i32 noundef %i.afz) #18
  br label %vga_draw_graphic.exit

vga_draw_graphic.exit:                            ; preds = %bb.cx, %._crit_edge.i, %bb.dv
  call void @g_free(ptr noundef %.0222.i) #18
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 2760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.aga, i8 noundef 0, i64 noundef 256, i1 noundef false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %vga_draw_blank.exit

bb.dw:                                            ; preds = %bb.f
  br i1 %.not17, label %vga_draw_blank.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 2692 ; 2 uses
  %i.agc = load i32, ptr %i.agb, align 4          ; 3 uses
  %i.agd = icmp eq i32 %i.agc, 0
  br i1 %i.agd, label %vga_draw_blank.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 3 uses
  %i.agf = load i32, ptr %i.age, align 8          ; 2 uses
  %i.agg = icmp eq i32 %i.agf, 0
  br i1 %i.agg, label %vga_draw_blank.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.agh = getelementptr i8, ptr %i.v, i64 8
  %.val.i45 = load i8, ptr %i.agh, align 8
  %i.agi = and i8 %.val.i45, 1
  %.not21.i = icmp eq i8 %i.agi, 0
  br i1 %.not21.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.agj = tail call ptr @qemu_create_displaysurface(i32 noundef %i.agc, i32 noundef %i.agf) #18 ; 2 uses
  %i.agk = load ptr, ptr %i.c, align 16
  tail call void @qemu_console_set_surface(ptr noundef %i.agk, ptr noundef %i.agj) #18
  %.pre.i50 = load i32, ptr %i.agb, align 4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.agl = phi i32 [ %i.agc, %bb.dz ], [ %.pre.i50, %bb.ea ]
  %.020.i = phi ptr [ %i.v, %bb.dz ], [ %i.agj, %bb.ea ] ; 4 uses
  %.val2.i.i46 = load ptr, ptr %.020.i, align 8
  %i.agm = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i.i46) #18
  %.val.i.i47 = load ptr, ptr %.020.i, align 8
  %i.agn = tail call i32 @pixman_image_get_format(ptr noundef %.val.i.i47) #18
  %.020.val.i = load ptr, ptr %.020.i, align 8
  %i.ago = tail call ptr @pixman_image_get_data(ptr noundef %.020.val.i) #18
  %i.agp = load i32, ptr %i.age, align 8
  %.not25.i = icmp eq i32 %i.agp, 0
  br i1 %.not25.i, label %._crit_edge.i49, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.eb
  %i.agq = lshr i32 %i.agm, 24
  %i.agr = lshr i32 %i.agn, 22
  %i.ags = and i32 %i.agr, 3
  %i.agt = shl nuw nsw i32 %i.agq, %i.ags
  %i.agu = add nuw nsw i32 %i.agt, 7
  %i.agv = lshr i32 %i.agu, 3
  %i.agw = mul i32 %i.agv, %i.agl
  %i.agx = sext i32 %i.agw to i64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i48
  %.024.i = phi ptr [ %i.ago, %.lr.ph.i48 ], [ %i.aha, %bb.ec ] ; 2 uses
  %.01923.i = phi i32 [ 0, %.lr.ph.i48 ], [ %i.ahb, %bb.ec ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.024.i, i8 noundef 0, i64 noundef range(i64 -2147483648, 4294967296) %i.agx, i1 noundef false) #18
  %.020.val22.i = load ptr, ptr %.020.i, align 8
  %i.agy = tail call i32 @pixman_image_get_stride(ptr noundef %.020.val22.i) #18
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds i8, ptr %.024.i, i64 %i.agz
  %i.ahb = add nuw i32 %.01923.i, 1               ; 2 uses
  %i.ahc = load i32, ptr %i.age, align 8
  %i.ahd = icmp ult i32 %i.ahb, %i.ahc
  br i1 %i.ahd, label %bb.ec, label %._crit_edge.i49, !llvm.loop !26

._crit_edge.i49:                                  ; preds = %bb.ec, %bb.eb
  %i.ahe = load ptr, ptr %i.c, align 16
  tail call void @qemu_console_update_full(ptr noundef %i.ahe) #18
  br label %vga_draw_blank.exit

vga_draw_blank.exit:                              ; preds = %bb.bg, %._crit_edge.i49, %bb.dy, %bb.dx, %bb.dw, %bb.am, %vga_get_text_resolution.exit.i, %vga_draw_graphic.exit, %bb.a
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vga_update_text(ptr noundef %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %struct.VGADisplayParams, align 4   ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca [80 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  tail call void @qemu_flush_coalesced_mmio_buffer() #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1362
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, 32
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0166 = phi i32 [ %i.k, %bb.b ], [ 2, %bb.a ]  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not171 = icmp eq i32 %.0166, %i.m
  br i1 %.not171, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.0166, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2684 ; 9 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ 1, %bb.f ], [ %.0, %bb.e ]      ; 3 uses
  store i32 0, ptr %i.b, align 4, !annotation !13
  store i32 0, ptr %i.c, align 4, !annotation !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false), !annotation !13
  switch i32 %.0166, label %bb.ai [
    i32 0, label %bb.h
    i32 1, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull %0, ptr noundef nonnull %2) #18, !inline_history !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.t = load i128, ptr %2, align 4
  %i.u = load i128, ptr %i.s, align 1
  %i.v = icmp ne i128 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %update_basic_params.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  br label %update_basic_params.exit

update_basic_params.exit:                         ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 1, %bb.i ], [ %.1, %bb.h ]    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1398
  %i.y = load i8, ptr %i.x, align 2
  %i.z = and i8 %i.y, 31
  %narrow = add nuw nsw i8 %i.z, 1                ; 4 uses
  %i.aa = zext nneg i8 %narrow to i32
  %i.ab = getelementptr i8, ptr %0, i64 2594
  %.val.i = load i16, ptr %i.ab, align 2
  %i.ac = trunc i16 %.val.i to i1
  %i.ad = select i1 %i.ac, i64 850, i64 594
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %.in.i = load i8, ptr %.in.in.i, align 1        ; 2 uses
  %i.ae = and i8 %.in.i, 1
  %.not173 = icmp eq i8 %i.ae, 0
  %spec.select = select i1 %.not173, i32 9, i32 8
  %i.af = and i8 %.in.i, 8
  %.not174 = icmp eq i8 %i.af, 0
  %.1160 = select i1 %.not174, i32 %spec.select, i32 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1390
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, 1                ; 10 uses
  store i32 %i.aj, ptr %i.b, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1395
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 100
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %update_basic_params.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1407
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = zext i8 %i.ar to i16                    ; 2 uses
  %i.at = shl nuw nsw i16 %i.as, 7
  %i.au = and i16 %i.at, 256
  %i.av = or disjoint i16 %i.au, %i.ap
  %i.aw = shl nuw nsw i16 %i.as, 3
  %i.ax = and i16 %i.aw, 512
  %i.ay = or disjoint i16 %i.ax, 1
  %.lhs.trunc = add nuw nsw i16 %i.ay, %i.av
  %.rhs.trunc = zext nneg i8 %narrow to i16
  %i.az = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.az to i32
  br label %bb.k

bb.k:                                             ; preds = %update_basic_params.exit, %bb.j
  %i.ba = phi i32 [ %.zext, %bb.j ], [ 100, %update_basic_params.exit ] ; 10 uses
  store i32 %i.ba, ptr %i.c, align 4
  %i.bb = mul nuw nsw i32 %i.ba, %i.aj            ; 12 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 16000
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not187 = icmp eq i32 %.0.i, 0
  br i1 %.not187, label %bb.al, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 80, i32 noundef 1, i64 noundef 80, ptr noundef nonnull @.str.48, i32 noundef %i.aj, i32 noundef %i.ba) #18 ; 0 uses
  br label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.n, align 4
  %.not175 = icmp eq i32 %i.aj, %i.be
  br i1 %.not175, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.bg = load i32, ptr %i.bf, align 16
  %.not176 = icmp eq i32 %i.ba, %i.bg
  br i1 %.not176, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = zext i8 %i.bi to i32
  %.not177 = icmp eq i32 %.1160, %i.bj
  br i1 %.not177, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2681
  %i.bl = load i8, ptr %i.bk, align 1
  %.not178 = icmp eq i8 %narrow, %i.bl
  br i1 %.not178, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.bm = mul nuw nsw i32 %.1160, %i.aj           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2692
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = mul nuw nsw i32 %i.ba, %i.aa            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store i32 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 16
  call void @qemu_console_resize(ptr noundef %i.br, i32 noundef %i.bm, i32 noundef %i.bo) #18
  %i.bs = load ptr, ptr %i.bq, align 16
  call void @qemu_console_text_resize(ptr noundef %i.bs, i32 noundef %i.aj, i32 noundef %i.ba) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2700
  store i32 0, ptr %i.bt, align 4
  store i32 %i.aj, ptr %i.n, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i32 %i.ba, ptr %i.bu, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 %narrow, ptr %i.bv, align 1
  %i.bw = trunc nuw nsw i32 %.1160 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2680
  store i8 %i.bw, ptr %i.bx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %.not179 = icmp eq i32 %.0.i, 0
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2753
  store i8 1, ptr %i.by, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
end_hunk_2
