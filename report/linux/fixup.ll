Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fixup?download=true
inline.NumInlined: 19
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pci_early_fixup_cyrix_5530:bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @pci_siemens_interrupt_controller(ptr nofree noundef captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 992        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, 16
  store i64 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sb600_disable_hpet_bar(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !annotation !11
  %i.b = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.c = load i8, ptr %i.a, align 1
  %i.d = icmp ult i8 %i.c, 47
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 85, i16 3286) #12, !srcloc !15
  %i.e = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 3287) #12, !srcloc !16
  store i8 %i.e, ptr %i.a, align 1
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 85, i16 3286) #12, !srcloc !15
  %i.f = load i8, ptr %i.a, align 1
  %i.g = or i8 %i.f, -128
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 85, 0) %i.g, i16 3287) #12, !srcloc !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sb600_hpet_quirk(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1056       ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 512
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1032
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr @hpet_address, align 8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = or i64 %i.b, 16
  store i64 %i.h, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 200
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.i, ptr noundef nonnull @.str.14) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @twinhead_reserve_killing_zone(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp eq i16 %i.b, 5375
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 66
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, -24573
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13 ; 0 uses
  %i.h = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i64 noundef 4289724416, i64 noundef 1048576, ptr noundef nonnull @.str.16, i32 noundef 0) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @pci_invalid_bar(ptr nofree noundef captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1740       ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = or i16 %i.b, 8
  store i16 %i.c, ptr %i.a, align 4
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_fixup_amd_ehci_pme(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.a, ptr noundef nonnull @.str.17) #13
  %i.b = getelementptr i8, ptr %0, i64 165        ; 2 uses
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, -25
  store i16 %i.d, ptr %i.b, align 1
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_fixup_amd_fch_xhci_pme(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.a, ptr noundef nonnull @.str.18) #13
  %i.b = getelementptr i8, ptr %0, i64 165        ; 2 uses
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, -2
  store i16 %i.d, ptr %i.b, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_apple_mbp_poweroff(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.b = tail call zeroext i1 @dmi_match(i32 noundef 7, ptr noundef nonnull @.str.19) #14
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @dmi_match(i32 noundef 7, ptr noundef nonnull @.str.20) #14
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 216
  %i.g = load i8, ptr %i.f, align 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8
  %.not8 = icmp eq i32 %i.i, 224
  br i1 %.not8, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i64 noundef 2141192192, i64 noundef 2097152, ptr noundef nonnull @.str.21, i32 noundef 0) #14 ; 3 uses
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.a, ptr noundef nonnull @.str.22, ptr noundef %i.l, ptr noundef nonnull %i.j) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.a, ptr noundef nonnull @.str.23) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @quirk_no_aersid(ptr nofree readnone captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @quirk_intel_th_dnv(ptr nofree noundef captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1224       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 1232       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, 2047
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  store i64 4194303, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 1248       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, 536870912
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_amd_enable_64bit_bar(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 28 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = load i32, ptr @pci_probe, align 4
  %i.d = and i32 %i.c, 4194304
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr i8, ptr %0, i64 62         ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = tail call ptr @pci_get_device(i32 noundef %i.g, i32 noundef %i.j, ptr noundef null) #14 ; 3 uses
  %.not52 = icmp eq ptr %i.k, %0
  br i1 %.not52, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.e, align 4
  %i.m = zext i16 %i.l to i32
  %i.n = load i16, ptr %i.h, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = tail call ptr @pci_get_device(i32 noundef %i.m, i32 noundef %i.o, ptr noundef %i.k) #14 ; 2 uses
  %.not53 = icmp eq ptr %i.p, null
  br i1 %.not53, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !annotation !11
  store i32 0, ptr %i.b, align 4, !annotation !11
  %1 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %i.a) #14 ; 0 uses
  %2 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 384, ptr noundef nonnull %i.b) #14 ; 0 uses
  %3 = load i32, ptr %i.a, align 4                ; 2 uses
  %4 = and i32 %3, 3
  %.not54 = icmp eq i32 %4, 0
  br i1 %.not54, label %.thread, label %5

bb.d:                                             ; preds = %bb.c, %bb.b
  %.046 = phi ptr [ %i.k, %bb.b ], [ %i.p, %bb.c ]
  tail call void @pci_dev_put(ptr noundef %.046) #14
  br label %.loopexit

5:                                                ; preds = %.preheader.preheader
  %6 = load i32, ptr %i.b, align 4
  %7 = call i32 @llvm.fshl.i32(i32 %6, i32 %3, i32 24) ; 2 uses
  store i32 %7, ptr %i.a, align 4
  %8 = icmp ugt i32 %7, 65536
  br i1 %8, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %5
  %9 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 136, ptr noundef nonnull %i.a) #14 ; 0 uses
  %10 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 388, ptr noundef nonnull %i.b) #14 ; 0 uses
  %11 = load i32, ptr %i.a, align 4               ; 2 uses
  %12 = and i32 %11, 3
  %.not54.1 = icmp eq i32 %12, 0
  br i1 %.not54.1, label %.thread, label %13

13:                                               ; preds = %.preheader.1
  %14 = load i32, ptr %i.b, align 4
  %15 = call i32 @llvm.fshl.i32(i32 %14, i32 %11, i32 24) ; 2 uses
  store i32 %15, ptr %i.a, align 4
  %16 = icmp ugt i32 %15, 65536
  br i1 %16, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %13
  %17 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %i.a) #14 ; 0 uses
  %18 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 392, ptr noundef nonnull %i.b) #14 ; 0 uses
  %19 = load i32, ptr %i.a, align 4               ; 2 uses
  %20 = and i32 %19, 3
  %.not54.2 = icmp eq i32 %20, 0
  br i1 %.not54.2, label %.thread, label %21

21:                                               ; preds = %.preheader.2
  %22 = load i32, ptr %i.b, align 4
  %23 = call i32 @llvm.fshl.i32(i32 %22, i32 %19, i32 24) ; 2 uses
  store i32 %23, ptr %i.a, align 4
  %24 = icmp ugt i32 %23, 65536
  br i1 %24, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %21
  %25 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 152, ptr noundef nonnull %i.a) #14 ; 0 uses
  %26 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 396, ptr noundef nonnull %i.b) #14 ; 0 uses
  %27 = load i32, ptr %i.a, align 4               ; 2 uses
  %28 = and i32 %27, 3
  %.not54.3 = icmp eq i32 %28, 0
  br i1 %.not54.3, label %.thread, label %29

29:                                               ; preds = %.preheader.3
  %30 = load i32, ptr %i.b, align 4
  %31 = call i32 @llvm.fshl.i32(i32 %30, i32 %27, i32 24) ; 2 uses
  store i32 %31, ptr %i.a, align 4
  %32 = icmp ugt i32 %31, 65536
  br i1 %32, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %29
  %33 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 160, ptr noundef nonnull %i.a) #14 ; 0 uses
  %34 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 400, ptr noundef nonnull %i.b) #14 ; 0 uses
  %35 = load i32, ptr %i.a, align 4               ; 2 uses
  %36 = and i32 %35, 3
  %.not54.4 = icmp eq i32 %36, 0
  br i1 %.not54.4, label %.thread, label %37

37:                                               ; preds = %.preheader.4
  %38 = load i32, ptr %i.b, align 4
  %39 = call i32 @llvm.fshl.i32(i32 %38, i32 %35, i32 24) ; 2 uses
  store i32 %39, ptr %i.a, align 4
  %40 = icmp ugt i32 %39, 65536
  br i1 %40, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %37
  %41 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 168, ptr noundef nonnull %i.a) #14 ; 0 uses
  %42 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 404, ptr noundef nonnull %i.b) #14 ; 0 uses
  %43 = load i32, ptr %i.a, align 4               ; 2 uses
  %44 = and i32 %43, 3
  %.not54.5 = icmp eq i32 %44, 0
  br i1 %.not54.5, label %.thread, label %45

45:                                               ; preds = %.preheader.5
  %46 = load i32, ptr %i.b, align 4
  %47 = call i32 @llvm.fshl.i32(i32 %46, i32 %43, i32 24) ; 2 uses
  store i32 %47, ptr %i.a, align 4
  %48 = icmp ugt i32 %47, 65536
  br i1 %48, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %45
  %i.q = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 176, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.r = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 408, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = and i32 %i.s, 3
  %.not54.6 = icmp eq i32 %i.t, 0
  br i1 %.not54.6, label %.thread, label %49

49:                                               ; preds = %.preheader.6
  %50 = load i32, ptr %i.b, align 4
  %51 = call i32 @llvm.fshl.i32(i32 %50, i32 %i.s, i32 24) ; 2 uses
  store i32 %51, ptr %i.a, align 4
  %52 = icmp ugt i32 %51, 65536
  br i1 %52, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %49
  %i.u = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 184, ptr noundef nonnull %i.a) #14 ; 0 uses
  %53 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 412, ptr noundef nonnull %i.b) #14 ; 0 uses
  %54 = load i32, ptr %i.a, align 4
  %55 = and i32 %54, 3
  %.not54.7 = icmp eq i32 %55, 0
  br i1 %.not54.7, label %.thread, label %.loopexit

.thread:                                          ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7
  %.04761.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ] ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.w = call noalias noundef align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_noprof(ptr noundef %i.v, i32 noundef 3520, i64 noundef 64) #15 ; 10 uses
  %.not55 = icmp eq ptr %i.w, null
  br i1 %.not55, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store ptr @.str.24, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.w, i64 24
  store i64 3154432, ptr %i.y, align 8
  store i64 811748818944, ptr %i.w, align 8
  %i.z = getelementptr i8, ptr %i.w, i64 8
  store i64 1086626725887, ptr %i.z, align 8
  %i.aa = call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %i.w) #14 ; 3 uses
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @kfree(ptr noundef nonnull %i.w) #14
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not57 = icmp eq ptr %i.ac, @.str.24
  br i1 %.not57, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ad, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.w) #13
  call void @add_taint(i32 noundef 11, i32 noundef 0) #14
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void @pci_bus_add_resource(ptr noundef %i.af, ptr noundef nonnull %i.w) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi ptr [ %i.w, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = load i64, ptr %.0, align 8              ; 2 uses
  %i.ah = lshr i64 %i.ag, 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, -256
  %i.ak = or disjoint i32 %i.aj, 3
  store i32 %i.ak, ptr %i.a, align 4
  %i.al = getelementptr i8, ptr %.0, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, 1                        ; 2 uses
  %i.ao = lshr i64 %i.an, 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, -256
  %i.ar = lshr i64 %i.ag, 40
  %i.as = and i64 %i.ar, 255
  %i.at = lshr i64 %i.an, 24
  %i.au = and i64 %i.at, 16711680
  %i.av = or disjoint i64 %i.au, %i.as
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  store i32 %i.aw, ptr %i.b, align 4
  %56 = shl nuw nsw i32 %.04761.lcssa, 2
  %57 = or disjoint i32 %56, 384
  %i.ax = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %57, i32 noundef %i.aw) #14 ; 0 uses
  %58 = shl nuw nsw i32 %.04761.lcssa, 3          ; 2 uses
  %59 = or disjoint i32 %58, 132
  %i.ay = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %59, i32 noundef %i.aq) #14 ; 0 uses
  %60 = or disjoint i32 %58, 128
  %i.az = load i32, ptr %i.a, align 4
  %i.ba = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %60, i32 noundef %i.az) #14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.7, %5, %13, %21, %29, %37, %45, %49, %bb.f, %.thread, %bb.a, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rs690_fix_64bit_dma(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = load ptr, ptr @high_memory, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 -1       ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = icmp ugt ptr %i.d, inttoptr (i64 -2147483649 to ptr)
  %i.g = load i64, ptr @phys_base, align 8
  %i.h = load i64, ptr @page_offset_base, align 8
  %i.i = sub i64 -2147483648, %i.h
  %i.j = select i1 %i.f, i64 %i.g, i64 %i.i
  %i.k = add i64 %i.e, 2147483649
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  store i64 %i.l, ptr %i.b, align 8
  %i.m = icmp ult i64 %i.l, 4294967297
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 168, i32 noundef 48) #14 ; 0 uses
  %i.o = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 172, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.p = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.q, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #13
  %i.r = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 168, i32 noundef 305) #14 ; 0 uses
  %i.s = load i64, ptr %i.b, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 172, i32 noundef %i.u) #14 ; 0 uses
  %i.w = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 168, i32 noundef 304) #14 ; 0 uses
  %i.x = load i64, ptr %i.b, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = or i32 %i.y, 1
  %i.aa = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 172, i32 noundef %i.z) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_clear_strap_no_soft_reset_dev2_f0(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = call i32 @amd_smn_read(i16 noundef zeroext 0, i32 noundef 269705224, ptr noundef nonnull %i.a) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4
  %i.d = and i32 %i.c, -129                       ; 2 uses
  store i32 %i.d, ptr %i.a, align 4
  %i.e = call i32 @amd_smn_write(i16 noundef zeroext 0, i32 noundef 269705224, i32 noundef %i.d) #14
  %.not2 = icmp eq i32 %i.e, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 200
  %i.g = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.f, ptr noundef nonnull @.str.29, i32 noundef %i.g) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.h, ptr noundef nonnull @.str.30) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @chromeos_save_apl_pci_l1ss_capability(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.c = load i32, ptr %i.a, align 4              ; 3 uses
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 30
  br i1 %i.e, label %bb.c, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.n, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = and i32 %i.g, 65535
  %i.i = icmp eq i32 %i.h, 30
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b
  %i.j = trunc nuw nsw i32 %.071126 to i16
  %i.k = trunc nuw nsw i32 %i.n to i16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.013.lcssa = phi i32 [ %i.l, %._crit_edge ], [ 0, %bb.a ]
  %.0612.lcssa = phi i16 [ %i.j, %._crit_edge ], [ 0, %bb.a ]
  %.0711.lcssa = phi i16 [ %i.k, %._crit_edge ], [ 256, %bb.a ]
  %.lcssa = phi i32 [ %i.g, %._crit_edge ], [ %i.c, %bb.a ]
  store i16 %.0612.lcssa, ptr @prev_cap, align 2
  store i32 %.013.lcssa, ptr @prev_header, align 4
  store i16 %.0711.lcssa, ptr @l1ss_cap, align 2
  store i32 %.lcssa, ptr @l1ss_header, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.071126 = phi i32 [ %i.n, %bb.b ], [ 256, %bb.a ]
  %i.m = lshr i32 %i.l, 20
  %i.n = and i32 %i.m, 4092                       ; 4 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @chromeos_fixup_apl_pci_l1ss_capability(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load i16, ptr @prev_cap, align 2
  %i.c = icmp ne i16 %i.b, 0
  %i.d = load i32, ptr @prev_header, align 4
  %i.e = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load i16, ptr @l1ss_cap, align 2         ; 2 uses
  %i.g = icmp ne i16 %i.f, 0
  %or.cond3 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = load i32, ptr @l1ss_header, align 4
  %i.i = icmp ne i32 %i.h, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.i, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.j = zext nneg i16 %i.f to i32
  %i.k = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.j, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = load i32, ptr @l1ss_header, align 4      ; 2 uses
  %.not = icmp eq i32 %i.l, %i.m
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr @l1ss_cap, align 2
  %i.o = zext nneg i16 %i.n to i32
  %i.p = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.m) #14 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 200
  %i.r = load i32, ptr %i.a, align 4
  %i.s = load i32, ptr @l1ss_header, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.q, ptr noundef nonnull @.str.31, i32 noundef %i.r, i32 noundef %i.s) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = load i16, ptr @prev_cap, align 2
  %i.u = zext nneg i16 %i.t to i32
  %i.v = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.u, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = load i32, ptr @prev_header, align 4      ; 2 uses
  %.not13 = icmp eq i32 %i.w, %i.x
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i16, ptr @prev_cap, align 2
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.z, i32 noundef %i.x) #14 ; 0 uses
  %i.ab = getelementptr i8, ptr %0, i64 200
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = load i32, ptr @prev_header, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ab, ptr noundef nonnull @.str.32, i32 noundef %i.ac, i32 noundef %i.ad) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @asus_disable_nvme_d3cold(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @dmi_check_system(ptr noundef nonnull @asus_nvme_broken_d3cold_table) #14
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @pci_d3cold_disable(ptr noundef %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_rp_pme_suspend(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @pm_suspend_target_state, align 4
  %i.b = icmp eq i32 %i.a, 0
  %.not10.i = icmp eq ptr %0, null
  %or.cond = or i1 %.not10.i, %i.b
  br i1 %or.cond, label %pcie_find_root_port.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %pci_upstream_bridge.exit.i
  %.011.i = phi ptr [ %i.j, %pci_upstream_bridge.exit.i ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr i8, ptr %.011.i, i64 102
  %.0.val.i = load i8, ptr %i.c, align 2
  %.not9.i = icmp eq i8 %.0.val.i, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr i8, ptr %.011.i, i64 108
  %.0.val7.i = load i16, ptr %i.d, align 4
  %i.e = and i16 %.0.val7.i, 240
  %i.f = icmp eq i16 %i.e, 64
  br i1 %i.f, label %pcie_find_root_port.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr i8, ptr %.011.i, i64 16
  %.0.val8.i = load ptr, ptr %i.g, align 8        ; 2 uses
  %i.h = getelementptr i8, ptr %.0.val8.i, i64 16
  %.val.i.i = load ptr, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %pcie_find_root_port.exit.thread, label %pci_upstream_bridge.exit.i

pci_upstream_bridge.exit.i:                       ; preds = %bb.c
  %i.i = getelementptr i8, ptr %.0.val8.i, i64 56
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %pcie_find_root_port.exit.thread, label %.lr.ph.i, !llvm.loop !0

pcie_find_root_port.exit:                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.011.i, i64 164
  %i.l = load i8, ptr %i.k, align 4
  %.not5 = icmp eq i8 %i.l, 0
  br i1 %.not5, label %pcie_find_root_port.exit.thread, label %bb.d

bb.d:                                             ; preds = %pcie_find_root_port.exit
  %i.m = getelementptr i8, ptr %.011.i, i64 165   ; 2 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, -25
  store i16 %i.o, ptr %i.m, align 1
  %.b = load i1, ptr @amd_rp_pme_suspend.__print_once, align 1
  br i1 %.b, label %pcie_find_root_port.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @amd_rp_pme_suspend.__print_once, align 1
  %i.p = getelementptr i8, ptr %.011.i, i64 200
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.p, ptr noundef nonnull @.str.33) #13
  br label %pcie_find_root_port.exit.thread

pcie_find_root_port.exit.thread:                  ; preds = %pci_upstream_bridge.exit.i, %bb.c, %bb.d, %bb.e, %pcie_find_root_port.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_rp_pme_resume(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not10.i = icmp eq ptr %0, null
  br i1 %.not10.i, label %pcie_find_root_port.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  store i16 0, ptr %i.a, align 2, !annotation !11
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %pci_upstream_bridge.exit.i
  %.011.i = phi ptr [ %i.i, %pci_upstream_bridge.exit.i ], [ %0, %.lr.ph.i.preheader ] ; 6 uses
  %i.b = getelementptr i8, ptr %.011.i, i64 102
  %.0.val.i = load i8, ptr %i.b, align 2
  %.not9.i = icmp eq i8 %.0.val.i, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr i8, ptr %.011.i, i64 108
  %.0.val7.i = load i16, ptr %i.c, align 4
  %i.d = and i16 %.0.val7.i, 240
  %i.e = icmp eq i16 %i.d, 64
  br i1 %i.e, label %pcie_find_root_port.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr i8, ptr %.011.i, i64 16
  %.0.val8.i = load ptr, ptr %i.f, align 8        ; 2 uses
  %i.g = getelementptr i8, ptr %.0.val8.i, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %pcie_find_root_port.exit.thread, label %pci_upstream_bridge.exit.i

pci_upstream_bridge.exit.i:                       ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val8.i, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %pcie_find_root_port.exit.thread, label %.lr.ph.i, !llvm.loop !0

pcie_find_root_port.exit:                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.011.i, i64 164
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %.not8 = icmp eq i8 %i.k, 0
  br i1 %.not8, label %pcie_find_root_port.exit.thread, label %bb.d

bb.d:                                             ; preds = %pcie_find_root_port.exit
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = call i32 @pci_read_config_word(ptr noundef nonnull %.011.i, i32 noundef %i.m, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.o = load i16, ptr %i.a, align 2
  %i.p = lshr i16 %i.o, 11
  %i.q = getelementptr i8, ptr %.011.i, i64 165   ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, -32
  %i.t = or disjoint i16 %i.s, %i.p
  store i16 %i.t, ptr %i.q, align 1
end_hunk_0
begin_hunk_1_@pcibios_scan_root

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_bus_set_ops(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @quirk_pcie_aspm_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load i32, ptr %.val, align 8
  %i.b = getelementptr i8, ptr %0, i64 216
  %i.c = load i8, ptr %i.b, align 8
  %i.d = zext i8 %i.c to i32
  %i.e = tail call i32 @raw_pci_read(i32 noundef %.val.val, i32 noundef %i.d, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #14
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @quirk_pcie_aspm_write(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 62
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = add nsw i32 %i.f, -109736
  %i.h = and i32 %1, 7
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr @quirk_aspm_offset, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 255                        ; 2 uses
  %.not = icmp ne i32 %i.m, 0
  %i.n = icmp eq i32 %2, %i.m
  %or.cond = and i1 %.not, %i.n
  %i.o = and i32 %4, -4
  %.0 = select i1 %or.cond, i32 %i.o, i32 %4
  %i.p = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.p, align 8
  %.val.val = load i32, ptr %.val, align 8
  %i.q = getelementptr i8, ptr %0, i64 216
  %i.r = load i8, ptr %i.q, align 8
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 @raw_pci_write(i32 noundef %.val.val, i32 noundef %i.s, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.0) #14
  ret i32 %i.t
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @raw_pci_read(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @raw_pci_write(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @limit_mrrs_to_128(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @pcie_get_readrq(ptr noundef %1) #14
  %i.b = icmp sgt i32 %i.a, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pcie_set_readrq(ptr noundef %1, i32 noundef 128) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vga_default_device() local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_disable_rom(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @dmi_match(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_bus_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @amd_smn_read(i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @amd_smn_write(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_d3cold_disable(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !12}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{i64 2155698143}
!16 = !{i64 2155698339}
!17 = distinct !{!17, !12}
end_hunk_1
