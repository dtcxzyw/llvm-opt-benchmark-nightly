Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bcm2835_mbox?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.6 = type { i32, i32, i8 }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"bcm2835-mbox\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@bcm2835_mbox_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 1552, i64 0, ptr @bcm2835_mbox_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @bcm2835_mbox_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/misc/bcm2835_mbox.h\00", align 1
@__func__.BCM2835_MBOX = private unnamed_addr constant [13 x i8] c"BCM2835_MBOX\00", align 1
@bcm2835_mbox_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.6, [4 x i8] } { ptr @bcm2835_mbox_read, ptr @bcm2835_mbox_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.6 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: Unsupported offset 0x%lx\0A\00", align 1
@__func__.bcm2835_mbox_read = private unnamed_addr constant [18 x i8] c"bcm2835_mbox_read\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mb->count > 0\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"../hw/misc/bcm2835_mbox.c\00", align 1
@__PRETTY_FUNCTION__.mbox_pull = private unnamed_addr constant [39 x i8] c"uint32_t mbox_pull(BCM2835Mbox *, int)\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_BCM2835_MBOX_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [57 x i8] c"bcm2835_mbox_read mbox read sz:%u addr:0x%lx data:0x%lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"value != MBOX_INVALID_DATA\00", align 1
@__PRETTY_FUNCTION__.bcm2835_mbox_update = private unnamed_addr constant [45 x i8] c"void bcm2835_mbox_update(BCM2835MboxState *)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"mb->count < MBOX_SIZE\00", align 1
@__PRETTY_FUNCTION__.mbox_push = private unnamed_addr constant [40 x i8] c"void mbox_push(BCM2835Mbox *, uint32_t)\00", align 1
@_TRACE_BCM2835_MBOX_IRQ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.12 = private unnamed_addr constant [40 x i8] c"bcm2835_mbox_irq mbox irq:ARM level:%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"%s: mailbox full\0A\00", align 1
@__func__.bcm2835_mbox_write = private unnamed_addr constant [19 x i8] c"bcm2835_mbox_write\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"%s: invalid channel %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: Unsupported offset 0x%lx value 0x%lx\0A\00", align 1
@_TRACE_BCM2835_MBOX_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [59 x i8] c"bcm2835_mbox_write mbox write sz:%u addr:0x%lx data:0x%lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"mbox-mr\00", align 1
@error_abort = external global ptr, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"bcm2835-mbox-memory\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/qemu/qemu/include/system/memory.h\00", align 1
@__func__.MEMORY_REGION = private unnamed_addr constant [14 x i8] c"MEMORY_REGION\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@vmstate_info_bool = external constant %struct.VMStateInfo, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.compoundliteral = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.24, i64 1257, i64 1, i64 0, i64 0, i32 9, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.25, i64 1268, i64 140, i64 0, i64 0, i32 2, [4 x i8] zeroinitializer, i64 0, ptr null, i32 12, [4 x i8] zeroinitializer, ptr @vmstate_bcm2835_mbox_box, i32 1, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_bcm2835_mbox = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"bcm2835-mbox_box\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.compoundliteral.32 = internal constant [5 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.28, i64 0, i64 4, i64 0, i64 0, i32 32, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.29, i64 128, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.30, i64 132, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.31, i64 136, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_bcm2835_mbox_box = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.27, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.32, ptr null }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bcm2835_mbox_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bcm2835_mbox_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bcm2835_mbox_register_types, i32 noundef 4) #4
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_mbox_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @bcm2835_mbox_info) #4 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_mbox_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 16, ptr noundef nonnull @__func__.BCM2835_MBOX) #4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull @bcm2835_mbox_ops, ptr noundef %i.a, ptr noundef nonnull @.str, i64 noundef 1024) #4
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.b) #4
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  tail call void @sysbus_init_irq(ptr noundef %i.d, ptr noundef nonnull %i.e) #4
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @qdev_init_gpio_in(ptr noundef %i.f, ptr noundef nonnull @bcm2835_mbox_set_irq, i32 noundef 9) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_mbox_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @bcm2835_mbox_realize, ptr %i.b, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @bcm2835_mbox_reset) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_bcm2835_mbox, ptr %i.c, align 8
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_init_gpio_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_mbox_set_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1257
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = zext i1 %i.a to i8
  store i8 %i.e, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @bcm2835_mbox_update(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @bcm2835_mbox_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 255                          ; 3 uses
  %trunc = trunc i64 %1 to i8
  switch i8 %trunc, label %bb.k [
    i8 -128, label %bb.b
    i8 -127, label %bb.b
    i8 -126, label %bb.b
    i8 -125, label %bb.b
    i8 -124, label %bb.b
    i8 -123, label %bb.b
    i8 -122, label %bb.b
    i8 -121, label %bb.b
    i8 -120, label %bb.b
    i8 -119, label %bb.b
    i8 -118, label %bb.b
    i8 -117, label %bb.b
    i8 -116, label %bb.b
    i8 -112, label %bb.g
    i8 -108, label %mbox_pull.exit
    i8 -104, label %bb.h
    i8 -100, label %bb.i
    i8 -72, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 1073741824
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %mbox_pull.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1268 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.mbox_pull) #5
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.e, align 4              ; 2 uses
  %.not23.i = icmp eq i32 %i.g, 1
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.020.i = phi i32 [ %9, %.lr.ph.i ], [ 1, %bb.e ] ; 3 uses
  %3 = sext i32 %.020.i to i64
  %4 = getelementptr inbounds [4 x i8], ptr %i.e, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %.020.i, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %i.e, i64 %7
  store i32 %5, ptr %8, align 4
  %9 = add nuw i32 %.020.i, 1                     ; 2 uses
  %i.i = load i32, ptr %i.f, align 4              ; 2 uses
  %10 = icmp ult i32 %9, %i.i
  br i1 %10, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !9

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.j = add i32 %i.i, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.j, %._crit_edge.loopexit.i ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.f, align 4
  %i.k = zext i32 %.lcssa.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  store i32 15, ptr %i.l, align 4
  %i.m = load i32, ptr %i.b, align 4
  %i.n = and i32 %i.m, 1073741823                 ; 2 uses
  store i32 %i.n, ptr %i.b, align 4
  %i.o = load i32, ptr %i.f, align 4
  switch i32 %i.o, label %mbox_pull.exit [
    i32 0, label %.sink.split.i.i
    i32 32, label %bb.f
  ]

bb.f:                                             ; preds = %._crit_edge.i
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %._crit_edge.i
  %.sink5.i.i = phi i32 [ -2147483648, %bb.f ], [ 1073741824, %._crit_edge.i ]
  %i.p = or disjoint i32 %.sink5.i.i, %i.n
  store i32 %i.p, ptr %i.b, align 4
  br label %mbox_pull.exit

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.r = load i32, ptr %i.q, align 4
  br label %mbox_pull.exit

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.t = load i32, ptr %i.s, align 4
  br label %mbox_pull.exit

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.v = load i32, ptr %i.u, align 4
  br label %mbox_pull.exit

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.x = load i32, ptr %i.w, align 4
  br label %mbox_pull.exit

bb.k:                                             ; preds = %bb.a
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 1024
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bcm2835_mbox_read, i64 noundef %i.a) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i19 = icmp eq i32 %i.aa, 0
  br i1 %.not.i19, label %trace_bcm2835_mbox_read.exit, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.ab = load i16, ptr @_TRACE_BCM2835_MBOX_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ab, 0
  br i1 %.not3.i, label %trace_bcm2835_mbox_read.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 32768
  %.not4.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i, label %trace_bcm2835_mbox_read.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %2, i64 noundef range(i64 0, 256) %i.a, i64 noundef 0) #4
  br label %trace_bcm2835_mbox_read.exit

mbox_pull.exit:                                   ; preds = %.sink.split.i.i, %._crit_edge.i, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a
  %.0 = phi i32 [ %i.x, %bb.j ], [ 15, %bb.b ], [ %i.r, %bb.g ], [ 0, %bb.a ], [ %i.t, %bb.h ], [ %i.v, %bb.i ], [ %i.h, %._crit_edge.i ], [ %i.h, %.sink.split.i.i ]
  %i.ae = zext i32 %.0 to i64                     ; 2 uses
  %i.af = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i20, label %trace_bcm2835_mbox_read.exit23, label %bb.q, !prof !11

bb.q:                                             ; preds = %mbox_pull.exit
  %i.ag = load i16, ptr @_TRACE_BCM2835_MBOX_READ_DSTATE, align 2
  %.not3.i21 = icmp eq i16 %i.ag, 0
  br i1 %.not3.i21, label %trace_bcm2835_mbox_read.exit23, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 32768
  %.not4.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not4.i22, label %trace_bcm2835_mbox_read.exit23, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %2, i64 noundef range(i64 0, 256) %i.a, i64 noundef range(i64 0, 4294967296) %i.ae) #4
  br label %trace_bcm2835_mbox_read.exit23

trace_bcm2835_mbox_read.exit23:                   ; preds = %mbox_pull.exit, %bb.q, %bb.r, %bb.s
  tail call fastcc void @bcm2835_mbox_update(ptr noundef %0)
  br label %trace_bcm2835_mbox_read.exit

trace_bcm2835_mbox_read.exit:                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %trace_bcm2835_mbox_read.exit23
  %.018 = phi i64 [ %i.ae, %trace_bcm2835_mbox_read.exit23 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ]
  ret i64 %.018
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_mbox_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_bcm2835_mbox_write.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_BCM2835_MBOX_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.c, 0
  br i1 %.not3.i, label %trace_bcm2835_mbox_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %trace_bcm2835_mbox_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef %3, i64 noundef range(i64 0, 256) %i.a, i64 noundef %2) #4
  br label %trace_bcm2835_mbox_write.exit

trace_bcm2835_mbox_write.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %trunc = trunc i64 %1 to i8
  switch i8 %trunc, label %bb.r [
    i8 -108, label %mbox_push.exit
    i8 -100, label %bb.e
    i8 -96, label %bb.f
    i8 -95, label %bb.f
    i8 -94, label %bb.f
    i8 -93, label %bb.f
    i8 -92, label %bb.f
    i8 -91, label %bb.f
    i8 -90, label %bb.f
    i8 -89, label %bb.f
    i8 -88, label %bb.f
    i8 -87, label %bb.f
    i8 -86, label %bb.f
    i8 -85, label %bb.f
    i8 -84, label %bb.f
  ]

bb.e:                                             ; preds = %trace_bcm2835_mbox_write.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, -2
  %i.i = trunc i64 %2 to i32
  %i.j = and i32 %i.i, 1
  %i.k = or disjoint i32 %i.h, %i.j
  store i32 %i.k, ptr %i.f, align 4
  br label %mbox_push.exit

bb.f:                                             ; preds = %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit, %trace_bcm2835_mbox_write.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1540 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4
  %.not = icmp sgt i32 %i.n, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 2048
  %.not24 = icmp eq i32 %i.p, 0
  br i1 %.not24, label %mbox_push.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bcm2835_mbox_write) #4
  br label %mbox_push.exit

bb.i:                                             ; preds = %bb.f
  %i.q = trunc i64 %2 to i32                      ; 3 uses
  %i.r = and i32 %i.q, 15                         ; 3 uses
  %i.s = icmp samesign ult i32 %i.r, 9
  br i1 %i.s, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.t = shl nuw nsw i32 %i.r, 4
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.w = or disjoint i64 %i.u, 4
  %i.x = tail call i32 @address_space_ldl_le(ptr noundef nonnull %i.v, i64 noundef range(i64 -2147483648, 2147483648) %i.w, i64 4294967296, ptr noundef null) #4
  %.not23 = icmp eq i32 %i.x, 0
  br i1 %.not23, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = icmp ult i32 %i.z, 32
  br i1 %i.aa, label %bb.m, label %bb.l
end_hunk_0
