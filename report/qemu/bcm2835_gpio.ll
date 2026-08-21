Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bcm2835_gpio?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.2 = type { i32, i32, i8, ptr }
%struct.anon.3 = type { i32, i32, i8 }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"bcm2835_gpio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@bcm2835_gpio_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 1728, i64 0, ptr @bcm2835_gpio_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @bcm2835_gpio_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"sd-bus\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/gpio/bcm2835_gpio.h\00", align 1
@__func__.BCM2835_GPIO = private unnamed_addr constant [13 x i8] c"BCM2835_GPIO\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@bcm2835_gpio_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @bcm2835_gpio_read, ptr @bcm2835_gpio_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: Bad offset %lx\0A\00", align 1
@__func__.bcm2835_gpio_read = private unnamed_addr constant [18 x i8] c"bcm2835_gpio_read\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@__func__.bcm2835_gpio_write = private unnamed_addr constant [19 x i8] c"bcm2835_gpio_write\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fsel\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"lev0\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"lev1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sd_fsel\00", align 1
@.compoundliteral = internal constant [5 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.10, i64 1224, i64 1, i64 0, i64 0, i32 54, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.11, i64 1280, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.12, i64 1284, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.13, i64 1288, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_bcm2835_gpio = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"sdbus-sdhci\00", align 1
@error_abort = external global ptr, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"sdbus-sdhost\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/qemu/qemu/include/hw/sd/sd.h\00", align 1
@__func__.SD_BUS = private unnamed_addr constant [7 x i8] c"SD_BUS\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bcm2835_gpio_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bcm2835_gpio_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bcm2835_gpio_register_types, i32 noundef 4) #3
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_gpio_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @bcm2835_gpio_info) #3 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_gpio_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef nonnull @__func__.BCM2835_GPIO) #3 ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #3
  tail call void @qbus_init(ptr noundef nonnull %i.d, i64 noundef 120, ptr noundef nonnull @.str.3, ptr noundef %i.e, ptr noundef nonnull @.str.3) #3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef nonnull @bcm2835_gpio_ops, ptr noundef %i.a, ptr noundef nonnull @.str, i64 noundef 4096) #3
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.f) #3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  tail call void @qdev_init_gpio_out(ptr noundef %i.b, ptr noundef nonnull %i.g, i32 noundef 54) #3
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_gpio_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_bcm2835_gpio, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @bcm2835_gpio_realize, ptr %i.c, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @bcm2835_gpio_reset) #3
  ret void
}

declare void @qbus_init(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_init_gpio_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @bcm2835_gpio_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  switch i64 %1, label %bb.f [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.b
    i64 12, label %bb.b
    i64 16, label %bb.b
    i64 20, label %bb.b
    i64 28, label %gpfsel_get.exit
    i64 32, label %gpfsel_get.exit
    i64 40, label %gpfsel_get.exit
    i64 44, label %gpfsel_get.exit
    i64 52, label %bb.d
    i64 56, label %bb.e
    i64 64, label %gpfsel_get.exit
    i64 68, label %gpfsel_get.exit
    i64 76, label %gpfsel_get.exit
    i64 80, label %gpfsel_get.exit
    i64 88, label %gpfsel_get.exit
    i64 92, label %gpfsel_get.exit
    i64 100, label %gpfsel_get.exit
    i64 104, label %gpfsel_get.exit
    i64 112, label %gpfsel_get.exit
    i64 116, label %gpfsel_get.exit
    i64 124, label %gpfsel_get.exit
    i64 128, label %gpfsel_get.exit
    i64 136, label %gpfsel_get.exit
    i64 140, label %gpfsel_get.exit
    i64 148, label %gpfsel_get.exit
    i64 152, label %gpfsel_get.exit
    i64 156, label %gpfsel_get.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = mul nuw nsw i64 %i.a, 10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 7 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = shl i8 %i.h, 3
  %i.j = and i8 %i.i, 56
  %i.k = or disjoint i8 %i.j, %i.f
  %i.l = zext nneg i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = and i8 %i.n, 7
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 6
  %i.r = or disjoint i32 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = and i8 %i.t, 7
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 9
  %i.x = or disjoint i32 %i.w, %i.r
  %.not.i = icmp eq i64 %i.a, 5
  br i1 %.not.i, label %gpfsel_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.z = load <4 x i8>, ptr %i.y, align 1
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %6 = load i8, ptr %5, align 1
  %i.aa = and <4 x i8> %i.z, splat (i8 7)
  %i.ab = zext nneg <4 x i8> %i.aa to <4 x i32>
  %i.ac = shl <4 x i32> %i.ab, <i32 12, i32 15, i32 18, i32 21>
  %7 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ac)
  %8 = and i8 %4, 7
  %9 = zext nneg i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 24
  %op.rdx = or i32 %7, %10
  %i.ad = and i8 %6, 7
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 27
  %11 = and i8 %i.e, 7
  %12 = zext nneg i8 %11 to i32
  %op.rdx7 = or disjoint i32 %i.af, %12
  %13 = shl i8 %i.h, 3
  %14 = and i8 %13, 56
  %15 = zext nneg i8 %14 to i32
  %i.ag = and i8 %i.n, 7
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %op.rdx8 = or disjoint i32 %i.ai, %15
  %op.rdx7.a = or i32 %op.rdx, %op.rdx7
  %16 = and i8 %i.t, 7
  %17 = zext nneg i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 9
  %i.aj = or disjoint i32 %op.rdx8, %18
  %op.rdx8.a = or i32 %op.rdx7.a, %i.aj
  br label %gpfsel_get.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.al = load i32, ptr %i.ak, align 16
  br label %gpfsel_get.exit

bb.e:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.an = load i32, ptr %i.am, align 4
  br label %gpfsel_get.exit

bb.f:                                             ; preds = %bb.a
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 2048
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %gpfsel_get.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.bcm2835_gpio_read, i64 noundef %1) #3
  br label %gpfsel_get.exit

gpfsel_get.exit:                                  ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d
  %.0.shrunk = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.al, %bb.d ], [ %i.an, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.f ], [ %op.rdx8.a, %bb.c ], [ %i.x, %bb.b ]
  %.0 = zext i32 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_gpio_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  switch i64 %1, label %bb.o [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.b
    i64 12, label %bb.b
    i64 16, label %bb.b
    i64 20, label %bb.b
    i64 28, label %bb.c
    i64 32, label %bb.f
    i64 40, label %bb.i
    i64 44, label %bb.l
    i64 52, label %bb.q
    i64 56, label %bb.q
    i64 64, label %bb.q
    i64 68, label %bb.q
    i64 76, label %bb.q
    i64 80, label %bb.q
    i64 88, label %bb.q
    i64 92, label %bb.q
    i64 100, label %bb.q
    i64 104, label %bb.q
    i64 112, label %bb.q
    i64 116, label %bb.q
    i64 124, label %bb.q
    i64 128, label %bb.q
    i64 136, label %bb.q
    i64 140, label %bb.q
    i64 148, label %bb.q
    i64 152, label %bb.q
    i64 156, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = lshr i64 %1, 2
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @gpfsel_set(ptr noundef %0, i8 noundef zeroext %i.b, i32 noundef %i.c)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = xor i32 %i.f, -1
  %i.h = and i32 %i.g, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1296
  br label %bb.d

bb.d:                                             ; preds = %gpfsel_is_out.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %gpfsel_is_out.exit.thread.i ] ; 3 uses
  %.01520.i = phi i32 [ 1, %bb.c ], [ %i.p, %gpfsel_is_out.exit.thread.i ] ; 2 uses
  %i.k = and i32 %i.h, %.01520.i
  %.not.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.i.not, label %gpfsel_is_out.exit.thread.i, label %gpfsel_is_out.exit.i

gpfsel_is_out.exit.i:                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1
  %.not19.i = icmp eq i8 %i.m, 1
  br i1 %.not19.i, label %bb.e, label %gpfsel_is_out.exit.thread.i

bb.e:                                             ; preds = %gpfsel_is_out.exit.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @qemu_set_irq(ptr noundef %i.o, i32 noundef 1) #3
  br label %gpfsel_is_out.exit.thread.i

gpfsel_is_out.exit.thread.i:                      ; preds = %bb.e, %gpfsel_is_out.exit.i, %bb.d
  %i.p = shl i32 %.01520.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %gpset.exit, label %bb.d, !llvm.loop !8

gpset.exit:                                       ; preds = %gpfsel_is_out.exit.thread.i
  %i.q = load i32, ptr %i.e, align 4
  %i.r = or i32 %i.q, %i.d
  store i32 %i.r, ptr %i.e, align 4
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.s = trunc i64 %2 to i32                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1284 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = xor i32 %i.u, -1
  %i.w = and i32 %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1296
  br label %bb.g

bb.g:                                             ; preds = %gpfsel_is_out.exit.thread.i21, %bb.f
  %indvars.iv.i17 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i22, %gpfsel_is_out.exit.thread.i21 ] ; 2 uses
  %.01520.i18 = phi i32 [ 1, %bb.f ], [ %i.af, %gpfsel_is_out.exit.thread.i21 ] ; 2 uses
  %i.z = and i32 %i.w, %.01520.i18
  %.not.i19 = icmp eq i32 %i.z, 0
  br i1 %.not.i19, label %gpfsel_is_out.exit.thread.i21, label %gpfsel_is_out.exit.i24

gpfsel_is_out.exit.i24:                           ; preds = %bb.g
  %i.aa = add nuw nsw i64 %indvars.iv.i17, 32     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %.not19.i25 = icmp eq i8 %i.ac, 1
  br i1 %.not19.i25, label %bb.h, label %gpfsel_is_out.exit.thread.i21

bb.h:                                             ; preds = %gpfsel_is_out.exit.i24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ae, i32 noundef 1) #3
  br label %gpfsel_is_out.exit.thread.i21

gpfsel_is_out.exit.thread.i21:                    ; preds = %bb.h, %gpfsel_is_out.exit.i24, %bb.g
  %i.af = shl nuw nsw i32 %.01520.i18, 1
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 22
  br i1 %exitcond.not.i23, label %gpset.exit26, label %bb.g, !llvm.loop !8

gpset.exit26:                                     ; preds = %gpfsel_is_out.exit.thread.i21
  %i.ag = load i32, ptr %i.t, align 4
  %i.ah = or i32 %i.ag, %i.s
  store i32 %i.ah, ptr %i.t, align 4
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.ai = trunc i64 %2 to i32                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1296
  br label %bb.j

bb.j:                                             ; preds = %gpfsel_is_out.exit.thread.i31, %bb.i
  %indvars.iv.i27 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i32, %gpfsel_is_out.exit.thread.i31 ] ; 3 uses
  %.01520.i28 = phi i32 [ 1, %bb.i ], [ %i.at, %gpfsel_is_out.exit.thread.i31 ] ; 2 uses
  %i.ao = and i32 %i.al, %.01520.i28
  %.not.i29.not = icmp eq i32 %i.ao, 0
  br i1 %.not.i29.not, label %gpfsel_is_out.exit.thread.i31, label %gpfsel_is_out.exit.i34

gpfsel_is_out.exit.i34:                           ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.i27
  %i.aq = load i8, ptr %i.ap, align 1
  %.not19.i35 = icmp eq i8 %i.aq, 1
  br i1 %.not19.i35, label %bb.k, label %gpfsel_is_out.exit.thread.i31

bb.k:                                             ; preds = %gpfsel_is_out.exit.i34
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i27
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @qemu_set_irq(ptr noundef %i.as, i32 noundef 0) #3
  br label %gpfsel_is_out.exit.thread.i31

gpfsel_is_out.exit.thread.i31:                    ; preds = %bb.k, %gpfsel_is_out.exit.i34, %bb.j
  %i.at = shl i32 %.01520.i28, 1
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, 32
  br i1 %exitcond.not.i33, label %gpclr.exit, label %bb.j, !llvm.loop !10

gpclr.exit:                                       ; preds = %gpfsel_is_out.exit.thread.i31
  %i.au = xor i32 %i.ai, -1
  %i.av = load i32, ptr %i.aj, align 4
  %i.aw = and i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.aj, align 4
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.ax = trunc i64 %2 to i32                     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1284 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1224
end_hunk_0
