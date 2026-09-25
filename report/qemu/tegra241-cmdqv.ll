Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tegra241-cmdqv?download=true
inline.NumInlined: 67
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tegra241_cmdqv_reset:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 340
  store i32 16401, ptr %i.k, align 4
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %trace_tegra241_cmdqv_init_regs.exit.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %tegra241_cmdqv_guest_unmap_vintf_page0.exit
  %i.m = load i16, ptr @_TRACE_TEGRA241_CMDQV_INIT_REGS_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.m, 0
  br i1 %.not1.i.i, label %trace_tegra241_cmdqv_init_regs.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i.i, label %trace_tegra241_cmdqv_init_regs.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, i32 noundef 16401) #10
  br label %trace_tegra241_cmdqv_init_regs.exit.i

trace_tegra241_cmdqv_init_regs.exit.i:            ; preds = %bb.f, %bb.e, %bb.d, %tegra241_cmdqv_guest_unmap_vintf_page0.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store i32 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 524
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.r, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = tail call i64 @qemu_minrampagesize() #10 ; 2 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.g, label %tegra241_cmdqv_init_regs.exit

bb.g:                                             ; preds = %trace_tegra241_cmdqv_init_regs.exit.i
  %i.v = tail call i32 @getpagesize() #12
  %i.w = sext i32 %i.v to i64
  br label %tegra241_cmdqv_init_regs.exit

tegra241_cmdqv_init_regs.exit:                    ; preds = %trace_tegra241_cmdqv_init_regs.exit.i, %bb.g
  %.067.i = phi i64 [ %i.w, %bb.g ], [ %i.t, %trace_tegra241_cmdqv_init_regs.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3564 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = lshr i32 %i.y, 21
  %i.aa = and i32 %i.z, 31
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 -9223372036854775808, 9223372036854775807) %.067.i, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -4
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.aa)
  %i.af = and i32 %i.y, -65011713
  %i.ag = shl nuw nsw i32 %i.ae, 21
  %i.ah = or disjoint i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.x, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %tegra241_cmdqv_init_regs.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare zeroext i1 @iommufd_backend_get_device_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tegra241_cmdqv_read_mmio(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 327679
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @qemu_loglevel, align 4
  %i.c = and i32 %i.b, 1024
  %.not49 = icmp eq i32 %i.c, 0
  br i1 %.not49, label %bb.x, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tegra241_cmdqv_read_mmio, i64 noundef %1, i32 noundef 327680) #10
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  switch i64 %1, label %bb.u [
    i64 0, label %bb.e
    i64 4, label %bb.f
    i64 8, label %bb.g
    i64 20, label %bb.h
    i64 21, label %bb.h
    i64 22, label %bb.h
    i64 23, label %bb.h
    i64 24, label %bb.h
    i64 28, label %bb.i
    i64 29, label %bb.i
    i64 30, label %bb.i
    i64 31, label %bb.i
    i64 32, label %bb.i
    i64 36, label %bb.j
    i64 37, label %bb.j
    i64 38, label %bb.j
    i64 39, label %bb.j
    i64 40, label %bb.j
    i64 41, label %bb.j
    i64 42, label %bb.j
    i64 43, label %bb.j
    i64 44, label %bb.j
    i64 45, label %bb.j
    i64 46, label %bb.j
    i64 47, label %bb.j
    i64 48, label %bb.j
    i64 512, label %bb.k
    i64 513, label %bb.k
    i64 514, label %bb.k
    i64 515, label %bb.k
    i64 516, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load i32, ptr %i.d, align 16
  %i.f = zext i32 %i.e to i64
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  br label %bb.x

bb.g:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  br label %bb.x

bb.h:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.n = add nsw i64 %1, -20
  %i.o = lshr i64 %i.n, 2
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64
  br label %bb.x

bb.i:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.t = add nsw i64 %1, -28
  %i.u = lshr i64 %i.t, 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  br label %bb.x

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.z = add nsw i64 %1, -36
  %i.aa = lshr i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  br label %bb.x

bb.k:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.af = add nsw i64 %1, -512
  %i.ag = lshr i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  br label %bb.x

bb.l:                                             ; preds = %bb.m
  %i.ak = tail call fastcc i64 @tegra241_cmdqv_config_vintf_read(ptr noundef %0, i64 noundef %1)
  br label %bb.x

bb.m:                                             ; preds = %bb.o
  %i.al = add nsw i64 %1, -4096
  %i.am = icmp ult i64 %i.al, 205
  br i1 %i.am, label %bb.l, label %bb.v

bb.n:                                             ; preds = %bb.o
  %i.an = add nuw nsw i64 %1, 549755617280
  %i.ao = lshr i64 %i.an, 7
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = and i64 %1, 65663
  %i.ar = tail call fastcc i64 @tegra241_cmdqv_read_vcmdq_page0(ptr noundef %0, i64 noundef %i.aq, i32 noundef %i.ap, i1 noundef zeroext false)
  br label %trace_tegra241_cmdqv_read_mmio.exit

bb.o:                                             ; preds = %bb.q
  %i.as = add nsw i64 %1, -196608
  %i.at = icmp ult i64 %i.as, 149
  br i1 %i.at, label %bb.n, label %bb.m

bb.p:                                             ; preds = %bb.q
  %i.au = lshr i64 %i.ay, 7
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i64 %1, 65663
  %i.ax = tail call fastcc i64 @tegra241_cmdqv_read_vcmdq_page0(ptr noundef %0, i64 noundef %i.aw, i32 noundef %i.av, i1 noundef zeroext true)
  br label %trace_tegra241_cmdqv_read_mmio.exit

bb.q:                                             ; preds = %bb.s
  %i.ay = add nsw i64 %1, -65536                  ; 2 uses
  %i.az = icmp ult i64 %i.ay, 149
  br i1 %i.az, label %bb.p, label %bb.o

bb.r:                                             ; preds = %bb.s
  %i.ba = add nuw nsw i64 %1, 549755551744
  %i.bb = lshr i64 %i.ba, 7
  %i.bc = trunc nuw i64 %i.bb to i32
  %i.bd = and i64 %i.bl, 131199
  %i.be = tail call fastcc i64 @tegra241_cmdqv_read_vcmdq_page1(ptr noundef %0, i64 noundef %i.bd, i32 noundef %i.bc, i1 noundef zeroext false)
  br label %trace_tegra241_cmdqv_read_mmio.exit

bb.s:                                             ; preds = %bb.u
  %i.bf = add nsw i64 %1, -262144
  %i.bg = icmp ult i64 %i.bf, 141
  br i1 %i.bg, label %bb.r, label %bb.q

bb.t:                                             ; preds = %bb.u
  %i.bh = lshr i64 %i.bl, 7
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i64 %1, 131199
  %i.bk = tail call fastcc i64 @tegra241_cmdqv_read_vcmdq_page1(ptr noundef %0, i64 noundef %i.bj, i32 noundef %i.bi, i1 noundef zeroext true)
  br label %trace_tegra241_cmdqv_read_mmio.exit

bb.u:                                             ; preds = %bb.d
  %i.bl = add nsw i64 %1, -131072                 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 141
  br i1 %i.bm, label %bb.t, label %bb.s

bb.v:                                             ; preds = %bb.m
  %i.bn = load i32, ptr @qemu_loglevel, align 4
  %i.bo = and i32 %i.bn, 1024
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.tegra241_cmdqv_read_mmio, i64 noundef %1) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.w, %bb.v, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ak, %bb.l ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.f, %bb.e ], [ %i.i, %bb.f ], [ %i.l, %bb.g ], [ %i.r, %bb.h ], [ %i.x, %bb.i ], [ %i.ad, %bb.j ], [ %i.aj, %bb.k ] ; 5 uses
  %i.bp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %trace_tegra241_cmdqv_read_mmio.exit, label %bb.y, !prof !8

bb.y:                                             ; preds = %bb.x
  %i.bq = load i16, ptr @_TRACE_TEGRA241_CMDQV_READ_MMIO_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.bq, 0
  br i1 %.not3.i, label %trace_tegra241_cmdqv_read_mmio.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = load i32, ptr @qemu_loglevel, align 4
  %i.bs = and i32 %i.br, 32768
  %.not4.i = icmp eq i32 %i.bs, 0
  br i1 %.not4.i, label %trace_tegra241_cmdqv_read_mmio.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.0, i32 noundef %2) #10
  br label %trace_tegra241_cmdqv_read_mmio.exit

trace_tegra241_cmdqv_read_mmio.exit:              ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.t, %bb.r, %bb.p, %bb.n
  %.044 = phi i64 [ %i.ar, %bb.n ], [ %i.bk, %bb.t ], [ %i.be, %bb.r ], [ %i.ax, %bb.p ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %.0, %bb.z ], [ %.0, %bb.aa ]
  ret i64 %.044
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tegra241_cmdqv_write_mmio(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = icmp ugt i64 %1, 327679
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 1024
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.bb, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tegra241_cmdqv_write_mmio, i64 noundef %1, i32 noundef 327680) #10
  br label %bb.bb

bb.d:                                             ; preds = %bb.a
  switch i32 %3, label %bb.az [
    i32 4, label %bb.e
    i32 8, label %bb.ac
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = trunc i64 %2 to i32                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8
  switch i64 %1, label %bb.y [
    i64 0, label %bb.f
    i64 28, label %bb.j
    i64 29, label %bb.j
    i64 30, label %bb.j
    i64 31, label %bb.j
    i64 32, label %bb.j
    i64 512, label %bb.k
    i64 513, label %bb.k
    i64 514, label %bb.k
    i64 515, label %bb.k
    i64 516, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.f, ptr %i.g, align 16
  %i.h = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = call fastcc zeroext i1 @tegra241_cmdqv_setup_vcmdq(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.b)
  br i1 %i.l, label %bb.h, label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.h:                                             ; preds = %bb.g
  %i.m = call fastcc zeroext i1 @tegra241_cmdqv_setup_vcmdq(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.i:                                             ; preds = %bb.f
  tail call fastcc void @tegra241_cmdqv_free_all_vcmdq(ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, -2
  store i32 %i.p, ptr %i.n, align 8
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.j:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.r = add nsw i64 %1, -28
  %i.s = lshr i64 %i.r, 2
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %i.f, ptr %i.t, align 4
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.k:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.u = add nuw nsw i64 %1, 17179868672          ; 2 uses
  %i.v = lshr i64 %i.u, 2                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.x = and i64 %i.u, 17179869180
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 1
  %.not61.i = icmp eq i32 %i.aa, 0                ; 2 uses
  %i.ab = trunc i64 %2 to i1                      ; 2 uses
  store i32 %i.f, ptr %i.y, align 4
  %or.cond.i = and i1 %.not61.i, %i.ab
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = trunc i64 %i.v to i32
  %i.ad = call fastcc zeroext i1 @tegra241_cmdqv_setup_vcmdq(ptr noundef nonnull %0, i32 noundef %i.ac, ptr noundef %i.b) ; 0 uses
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.m:                                             ; preds = %bb.k
  %or.cond4.i = or i1 %.not61.i, %i.ab
  br i1 %or.cond4.i, label %tegra241_cmdqv_setup_all_vcmdq.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = and i64 %i.v, 4294967295                ; 7 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %tegra241_cmdqv_setup_all_vcmdq.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i32, ptr %i.am, align 8
  tail call void @iommufd_backend_free_id(ptr noundef %i.al, i32 noundef %i.an) #10
  tail call void @g_free(ptr noundef nonnull %i.ah) #10
  store ptr null, ptr %i.ag, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.af
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.af
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.af
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.af
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.af
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.af
  store i32 0, ptr %i.az, align 4
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.p:                                             ; preds = %bb.q
  %i.ba = and i64 %2, 4294967295
  call fastcc void @tegra241_cmdqv_config_vintf_write(ptr noundef %0, i64 noundef range(i64 0, 327680) %1, i64 noundef %i.ba, ptr noundef %i.b)
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.q:                                             ; preds = %bb.s
  %i.bb = add nsw i64 %1, -4096
  %i.bc = icmp ult i64 %i.bb, 205
  br i1 %i.bc, label %bb.p, label %bb.z

bb.r:                                             ; preds = %bb.s
  %i.bd = add nuw nsw i64 %1, 549755617280
  %i.be = lshr i64 %i.bd, 7
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i64 %1, 65663
  tail call fastcc void @tegra241_cmdqv_write_vcmdq_page0(ptr noundef %0, i64 noundef %i.bg, i32 noundef %i.bf, i32 noundef %i.f, i1 noundef zeroext false)
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.s:                                             ; preds = %bb.u
  %i.bh = add nsw i64 %1, -196608
  %i.bi = icmp ult i64 %i.bh, 149
  br i1 %i.bi, label %bb.r, label %bb.q

bb.t:                                             ; preds = %bb.u
  %i.bj = lshr i64 %i.bm, 7
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i64 %1, 65663
  tail call fastcc void @tegra241_cmdqv_write_vcmdq_page0(ptr noundef %0, i64 noundef %i.bl, i32 noundef %i.bk, i32 noundef %i.f, i1 noundef zeroext true)
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.u:                                             ; preds = %bb.w
  %i.bm = add nsw i64 %1, -65536                  ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 149
  br i1 %i.bn, label %bb.t, label %bb.s

bb.v:                                             ; preds = %bb.w
  %i.bo = add nuw nsw i64 %1, 549755551744
  %i.bp = lshr i64 %i.bo, 7
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = and i64 %i.bx, 131199
  call fastcc void @tegra241_cmdqv_write_vcmdq_page1(ptr noundef %0, i64 noundef %i.br, i32 noundef %i.bq, i32 noundef %i.f, i1 noundef zeroext false, ptr noundef %i.b)
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.w:                                             ; preds = %bb.y
  %i.bs = add nsw i64 %1, -262144
  %i.bt = icmp ult i64 %i.bs, 141
  br i1 %i.bt, label %bb.v, label %bb.u

bb.x:                                             ; preds = %bb.y
  %i.bu = lshr i64 %i.bx, 7
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = and i64 %1, 131199
  call fastcc void @tegra241_cmdqv_write_vcmdq_page1(ptr noundef %0, i64 noundef %i.bw, i32 noundef %i.bv, i32 noundef %i.f, i1 noundef zeroext true, ptr noundef %i.b)
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

bb.y:                                             ; preds = %bb.e
  %i.bx = add nsw i64 %1, -131072                 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 141
  br i1 %i.by, label %bb.x, label %bb.w

bb.z:                                             ; preds = %bb.q
  %i.bz = load i32, ptr @qemu_loglevel, align 4
  %i.ca = and i32 %i.bz, 1024
  %.not63.i = icmp eq i32 %i.ca, 0
  br i1 %.not63.i, label %tegra241_cmdqv_setup_all_vcmdq.exit.i, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.tegra241_cmdqv_writel_mmio, i64 noundef range(i64 0, 327680) %1) #10
  br label %tegra241_cmdqv_setup_all_vcmdq.exit.i

tegra241_cmdqv_setup_all_vcmdq.exit.i:            ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g
  %i.cb = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not62.i = icmp eq ptr %i.cb, null
  br i1 %.not62.i, label %tegra241_cmdqv_writel_mmio.exit, label %bb.ab

bb.ab:                                            ; preds = %tegra241_cmdqv_setup_all_vcmdq.exit.i
  call void @error_report_err(ptr noundef nonnull %i.cb) #10
  br label %tegra241_cmdqv_writel_mmio.exit

tegra241_cmdqv_writel_mmio.exit:                  ; preds = %tegra241_cmdqv_setup_all_vcmdq.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bb

bb.ac:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %i.cc = add nsw i64 %1, -131072                 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 141
  br i1 %i.cd, label %bb.an, label %bb.am

bb.ad:                                            ; preds = %bb.am
  %i.ce = add nuw nsw i64 %1, 549755551744
  %i.cf = lshr i64 %i.ce, 7                       ; 3 uses
  %i.cg = trunc nuw i64 %i.cf to i32              ; 2 uses
  %i.ch = and i64 %i.cc, 131199                   ; 3 uses
  switch i64 %i.ch, label %bb.ag [
    i64 131072, label %bb.ae
    i64 131080, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cf
  store i64 %2, ptr %i.cj, align 8
  %i.ck = call fastcc zeroext i1 @tegra241_cmdqv_setup_vcmdq(ptr noundef %0, i32 noundef %i.cg, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cf
  store i64 %2, ptr %i.cm, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.cn = load i32, ptr @qemu_loglevel, align 4
  %i.co = and i32 %i.cn, 1024
  %.not.i.i15 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i15, label %bb.ai, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.tegra241_cmdqv_write_vcmdq_page1_64, i64 noundef range(i64 -2147614719, 2147680256) %i.ch) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.cp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.aj, !prof !8

bb.aj:                                            ; preds = %bb.ai
  %i.cq = load i16, ptr @_TRACE_TEGRA241_CMDQV_WRITE_VCMDQ_PAGE1_DSTATE, align 2
  %.not3.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not3.i.i.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = load i32, ptr @qemu_loglevel, align 4
  %i.cs = and i32 %i.cr, 32768
  %.not4.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not4.i.i.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.cg, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147614719, 2147680256) %i.ch, i64 noundef %2) #10
  br label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i

bb.am:                                            ; preds = %bb.ac
  %i.ct = add nsw i64 %1, -262144
  %i.cu = icmp ult i64 %i.ct, 141
  br i1 %i.cu, label %bb.ad, label %bb.aw

bb.an:                                            ; preds = %bb.ac
  %i.cv = lshr i64 %i.cc, 7                       ; 3 uses
  %i.cw = trunc nuw nsw i64 %i.cv to i32          ; 2 uses
  %i.cx = and i64 %1, 131199                      ; 3 uses
  switch i64 %i.cx, label %bb.aq [
    i64 131072, label %bb.ao
    i64 131080, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cv
  store i64 %2, ptr %i.cz, align 8
  %i.da = call fastcc zeroext i1 @tegra241_cmdqv_setup_vcmdq(ptr noundef %0, i32 noundef %i.cw, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cv
  store i64 %2, ptr %i.dc, align 8
  br label %bb.as

bb.aq:                                            ; preds = %bb.an
  %i.dd = load i32, ptr @qemu_loglevel, align 4
  %i.de = and i32 %i.dd, 1024
  %.not.i18.i = icmp eq i32 %i.de, 0
  br i1 %.not.i18.i, label %bb.as, label %bb.ar, !prof !8

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.tegra241_cmdqv_write_vcmdq_page1_64, i64 noundef range(i64 -2147614719, 2147680256) %i.cx) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.df = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i15.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i15.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.at, !prof !8

bb.at:                                            ; preds = %bb.as
  %i.dg = load i16, ptr @_TRACE_TEGRA241_CMDQV_WRITE_VCMDQ_PAGE1_DSTATE, align 2
  %.not3.i.i16.i = icmp eq i16 %i.dg, 0
  br i1 %.not3.i.i16.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = load i32, ptr @qemu_loglevel, align 4
  %i.di = and i32 %i.dh, 32768
  %.not4.i.i17.i = icmp eq i32 %i.di, 0
  br i1 %.not4.i.i17.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.cw, ptr noundef nonnull @.str.11, i64 noundef range(i64 -2147614719, 2147680256) %i.cx, i64 noundef %2) #10
  br label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i

bb.aw:                                            ; preds = %bb.am
  %i.dj = load i32, ptr @qemu_loglevel, align 4
  %i.dk = and i32 %i.dj, 1024
  %.not20.i = icmp eq i32 %i.dk, 0
  br i1 %.not20.i, label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, label %bb.ax, !prof !8

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.tegra241_cmdqv_writell_mmio, i64 noundef range(i64 0, 327680) %1) #10
  br label %tegra241_cmdqv_write_vcmdq_page1_64.exit.i

tegra241_cmdqv_write_vcmdq_page1_64.exit.i:       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.dl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i14 = icmp eq ptr %i.dl, null
  br i1 %.not.i14, label %tegra241_cmdqv_writell_mmio.exit, label %bb.ay

bb.ay:                                            ; preds = %tegra241_cmdqv_write_vcmdq_page1_64.exit.i
  call void @error_report_err(ptr noundef nonnull %i.dl) #10
  br label %tegra241_cmdqv_writell_mmio.exit

tegra241_cmdqv_writell_mmio.exit:                 ; preds = %tegra241_cmdqv_write_vcmdq_page1_64.exit.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bb

bb.az:                                            ; preds = %bb.d
  %i.dm = load i32, ptr @qemu_loglevel, align 4
  %i.dn = and i32 %i.dm, 2048
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.bb, label %bb.ba, !prof !8

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.tegra241_cmdqv_write_mmio, i32 noundef %3, i64 noundef %1) #10
  br label %bb.bb

bb.bb:                                            ; preds = %tegra241_cmdqv_writel_mmio.exit, %tegra241_cmdqv_writell_mmio.exit, %bb.ba, %bb.az, %bb.b, %bb.c
  %i.do = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i16 = icmp eq i32 %i.do, 0
  br i1 %.not.i16, label %trace_tegra241_cmdqv_write_mmio.exit, label %bb.bc, !prof !8

bb.bc:                                            ; preds = %bb.bb
  %i.dp = load i16, ptr @_TRACE_TEGRA241_CMDQV_WRITE_MMIO_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.dp, 0
  br i1 %.not3.i, label %trace_tegra241_cmdqv_write_mmio.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dq = load i32, ptr @qemu_loglevel, align 4
  %i.dr = and i32 %i.dq, 32768
  %.not4.i = icmp eq i32 %i.dr, 0
  br i1 %.not4.i, label %trace_tegra241_cmdqv_write_mmio.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i64 noundef %1, i64 noundef %2, i32 noundef %3) #10
  br label %trace_tegra241_cmdqv_write_mmio.exit

trace_tegra241_cmdqv_write_mmio.exit:             ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.be
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, 4294967296) i64 @tegra241_cmdqv_config_vintf_read(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 327680) %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.g [
    i64 4096, label %bb.b
    i64 4100, label %bb.c
    i64 4160, label %bb.d
    i64 4161, label %bb.d
    i64 4162, label %bb.d
    i64 4163, label %bb.d
    i64 4164, label %bb.d
    i64 4165, label %bb.d
    i64 4166, label %bb.d
    i64 4167, label %bb.d
    i64 4168, label %bb.d
    i64 4169, label %bb.d
    i64 4170, label %bb.d
    i64 4171, label %bb.d
    i64 4172, label %bb.d
    i64 4173, label %bb.d
    i64 4174, label %bb.d
    i64 4175, label %bb.d
    i64 4176, label %bb.d
    i64 4177, label %bb.d
    i64 4178, label %bb.d
    i64 4179, label %bb.d
    i64 4180, label %bb.d
    i64 4181, label %bb.d
    i64 4182, label %bb.d
    i64 4183, label %bb.d
    i64 4184, label %bb.d
    i64 4185, label %bb.d
    i64 4186, label %bb.d
    i64 4187, label %bb.d
    i64 4188, label %bb.d
    i64 4189, label %bb.d
    i64 4190, label %bb.d
    i64 4191, label %bb.d
    i64 4192, label %bb.d
    i64 4193, label %bb.d
    i64 4194, label %bb.d
    i64 4195, label %bb.d
    i64 4196, label %bb.d
    i64 4197, label %bb.d
    i64 4198, label %bb.d
    i64 4199, label %bb.d
    i64 4200, label %bb.d
    i64 4201, label %bb.d
    i64 4202, label %bb.d
    i64 4203, label %bb.d
    i64 4204, label %bb.d
end_hunk_0
