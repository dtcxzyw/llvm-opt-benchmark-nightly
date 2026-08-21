Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bcm2838_gpio?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.2 = type { i32, i32, i8, ptr }
%struct.anon.3 = type { i32, i32, i8 }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"bcm2838-gpio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@bcm2838_gpio_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 1776, i64 0, ptr @bcm2838_gpio_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @bcm2838_gpio_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"sd-bus\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bcm2838_gpio\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/gpio/bcm2838_gpio.h\00", align 1
@__func__.BCM2838_GPIO = private unnamed_addr constant [13 x i8] c"BCM2838_GPIO\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@bcm2838_gpio_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @bcm2838_gpio_read, ptr @bcm2838_gpio_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [98 x i8] c"%s: %s: Attempt reading from write only register. 0x%lx will be returned. Address 0x%lx, size %u\0A\00", align 1
@__func__.bcm2838_gpio_read = private unnamed_addr constant [18 x i8] c"bcm2838_gpio_read\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: %s: not implemented for %lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s: %s: bad offset %lx\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [86 x i8] c"%s: %s: Attempt writing 0x%lx to read only register. Ignored. Address 0x%lx, size %u\0A\00", align 1
@__func__.bcm2838_gpio_write = private unnamed_addr constant [19 x i8] c"bcm2838_gpio_write\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fsel\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"lev0\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"lev1\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sd_fsel\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"pup_cntrl_reg\00", align 1
@.compoundliteral = internal global [6 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.14, i64 1224, i64 1, i64 0, i64 0, i32 58, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.15, i64 1284, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.16, i64 1288, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.17, i64 1292, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.18, i64 1760, i64 4, i64 0, i64 0, i32 4, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_bcm2838_gpio = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.4, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"sdbus-sdhci\00", align 1
@error_abort = external global ptr, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"sdbus-sdhost\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/qemu/qemu/include/hw/sd/sd.h\00", align 1
@__func__.SD_BUS = private unnamed_addr constant [7 x i8] c"SD_BUS\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bcm2838_gpio_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bcm2838_gpio_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bcm2838_gpio_register_types, i32 noundef 4) #4
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2838_gpio_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @bcm2838_gpio_info) #4 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2838_gpio_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 22, ptr noundef nonnull @__func__.BCM2838_GPIO) #4 ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @qbus_init(ptr noundef nonnull %i.d, i64 noundef 120, ptr noundef nonnull @.str.3, ptr noundef %i.e, ptr noundef nonnull @.str.3) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef nonnull @bcm2838_gpio_ops, ptr noundef %i.a, ptr noundef nonnull @.str.4, i64 noundef 4096) #4
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.f) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  tail call void @qdev_init_gpio_out(ptr noundef %i.b, ptr noundef nonnull %i.g, i32 noundef 58) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2838_gpio_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_bcm2838_gpio, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @bcm2838_gpio_realize, ptr %i.c, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @bcm2838_gpio_reset) #4
  ret void
}

declare void @qbus_init(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_init_gpio_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @bcm2838_gpio_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i64 %1, label %bb.k [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.b
    i64 12, label %bb.b
    i64 16, label %bb.b
    i64 20, label %bb.b
    i64 28, label %bb.d
    i64 32, label %bb.d
    i64 40, label %bb.d
    i64 44, label %bb.d
    i64 52, label %bb.f
    i64 56, label %bb.g
    i64 64, label %bb.h
    i64 68, label %bb.h
    i64 76, label %bb.h
    i64 80, label %bb.h
    i64 88, label %bb.h
    i64 92, label %bb.h
    i64 100, label %bb.h
    i64 104, label %bb.h
    i64 112, label %bb.h
    i64 116, label %bb.h
    i64 124, label %bb.h
    i64 128, label %bb.h
    i64 136, label %bb.h
    i64 140, label %bb.h
    i64 228, label %bb.j
    i64 232, label %bb.j
    i64 236, label %bb.j
    i64 240, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = mul nuw nsw i64 %i.a, 10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 4 uses
  %3 = load <4 x i8>, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load <4 x i8>, ptr %i.e, align 1
  %i.g = and <4 x i8> %3, splat (i8 7)
  %i.h = zext nneg <4 x i8> %i.g to <4 x i32>
  %i.i = shl nuw nsw <4 x i32> %i.h, <i32 0, i32 3, i32 6, i32 9>
  %4 = and <4 x i8> %i.f, splat (i8 7)
  %5 = zext nneg <4 x i8> %4 to <4 x i32>
  %6 = shl <4 x i32> %5, <i32 12, i32 15, i32 18, i32 21>
  %rdx.op = or <4 x i32> %i.i, %6
  %i.j = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %rdx.op) ; 2 uses
  %.not.i = icmp eq i64 %i.a, 5
  br i1 %.not.i, label %gpfsel_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 7
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 7
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 27
  %i.u = or disjoint i32 %i.t, %i.o
  %i.v = or i32 %i.u, %i.j
  br label %gpfsel_get.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.w = load i32, ptr @qemu_loglevel, align 4
  %i.x = and i32 %i.w, 2048
  %.not13 = icmp eq i32 %i.x, 0
  br i1 %.not13, label %gpfsel_get.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bcm2838_gpio_read, i64 noundef 0, i64 noundef %1, i32 noundef %2) #4
  br label %gpfsel_get.exit

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.z = load i32, ptr %i.y, align 4
  br label %gpfsel_get.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ab = load i32, ptr %i.aa, align 8
  br label %gpfsel_get.exit

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 1024
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %gpfsel_get.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bcm2838_gpio_read, i64 noundef %1) #4
  br label %gpfsel_get.exit

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.af = add nsw i64 %1, -228
  %i.ag = lshr i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  br label %gpfsel_get.exit

bb.k:                                             ; preds = %bb.a
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 2048
  %.not14 = icmp eq i32 %i.ak, 0
  br i1 %.not14, label %gpfsel_get.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bcm2838_gpio_read, i64 noundef %1) #4
  br label %gpfsel_get.exit

gpfsel_get.exit:                                  ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %bb.h, %bb.i, %bb.d, %bb.e, %bb.j, %bb.g, %bb.f
  %.0.shrunk = phi i32 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.ai, %bb.j ], [ 0, %bb.e ], [ 0, %bb.d ], [ %i.z, %bb.f ], [ %i.ab, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.v, %bb.c ], [ %i.j, %bb.b ]
  %.0 = zext i32 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2838_gpio_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  switch i64 %1, label %bb.ai [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.b
    i64 12, label %bb.b
    i64 16, label %bb.b
    i64 20, label %bb.b
    i64 28, label %bb.r
    i64 32, label %bb.u
    i64 40, label %bb.x
    i64 44, label %bb.aa
    i64 52, label %bb.ad
    i64 56, label %bb.ad
    i64 64, label %bb.af
    i64 68, label %bb.af
    i64 76, label %bb.af
    i64 80, label %bb.af
    i64 88, label %bb.af
    i64 92, label %bb.af
    i64 100, label %bb.af
    i64 104, label %bb.af
    i64 112, label %bb.af
    i64 116, label %bb.af
    i64 124, label %bb.af
    i64 128, label %bb.af
    i64 136, label %bb.af
    i64 140, label %bb.af
    i64 228, label %bb.ah
    i64 232, label %bb.ah
    i64 236, label %bb.ah
    i64 240, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = mul nuw nsw i64 %i.a, 10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = trunc i64 %2 to i8                       ; 2 uses
  %i.e = and i8 %i.d, 7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 10 uses
  store i8 %i.e, ptr %i.f, align 1
  %i.g = lshr i8 %i.d, 3
  %i.h = and i8 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.h, ptr %i.i, align 1
  %i.j = lshr i64 %2, 6
  %i.k = trunc i64 %i.j to i8
  %i.l = and i8 %i.k, 7
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.l, ptr %i.m, align 1
  %i.n = lshr i64 %2, 9
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 7
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 %i.p, ptr %i.q, align 1
  %i.r = lshr i64 %2, 12
  %i.s = trunc i64 %i.r to i8
  %i.t = and i8 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 %i.t, ptr %i.u, align 1
  %i.v = lshr i64 %2, 15
  %i.w = trunc i64 %i.v to i8
  %i.x = and i8 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i64 %2, 18
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %2, 21
  %i.ae = trunc i64 %i.ad to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 %i.af, ptr %i.ag, align 1
  %.not53.i = icmp eq i64 %i.a, 5
  br i1 %.not53.i, label %.thread52.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = trunc i64 %2 to i32
  %i.ai = lshr i64 %2, 24
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.ah, 27
  %i.an = trunc nuw nsw i32 %i.am to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 %i.ao, ptr %i.ap, align 1
  br label %.thread52.i

.thread52.i:                                      ; preds = %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4             ; 2 uses
  %.not.i = icmp eq i8 %i.ar, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.thread52.i
  %i.as = icmp eq i8 %.pre.i, 0
  br i1 %i.as, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1273
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.f, label %gpfsel_set.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1274
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %gpfsel_set.exit

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1275
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %gpfsel_set.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.i, label %gpfsel_set.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1277
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %gpfsel_set.exit

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.bj = load ptr, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void @sdbus_reparent_card(ptr noundef %i.bj, ptr noundef %i.bl) #4
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.d
  %.not30.i = icmp ne i8 %i.ar, 4
  %i.bm = icmp eq i8 %.pre.i, 4
  %or.cond = select i1 %.not30.i, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.l, label %gpfsel_set.exit

.thread.i:                                        ; preds = %.thread52.i
  %.old = icmp eq i8 %.pre.i, 4
  br i1 %.old, label %bb.l, label %gpfsel_set.exit

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1273
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 4
  br i1 %i.bp, label %bb.m, label %gpfsel_set.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1274
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = icmp eq i8 %i.br, 4
  br i1 %i.bs, label %bb.n, label %gpfsel_set.exit

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1275
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 4
  br i1 %i.bv, label %bb.o, label %gpfsel_set.exit

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = icmp eq i8 %i.bx, 4
  br i1 %i.by, label %bb.p, label %gpfsel_set.exit

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1277
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 4
  br i1 %i.cb, label %bb.q, label %gpfsel_set.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.cf = load ptr, ptr %i.ce, align 16
  tail call void @sdbus_reparent_card(ptr noundef %i.cd, ptr noundef %i.cf) #4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.j
  %.sink.i = phi i8 [ 4, %bb.q ], [ 0, %bb.j ]
  store i8 %.sink.i, ptr %i.aq, align 4
end_hunk_0
