Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cadence_uart?download=true
inline.NumInlined: 48
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.2 = type { i32, i32, i8, ptr }
%struct.anon.3 = type { i32, i32, i8 }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.VMStateDescription = type { ptr, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyInfo = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.6 = type { i64 }
%struct.QEMUSerialSetParams = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"cadence_uart\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@cadence_uart_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 1296, i64 0, ptr @cadence_uart_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @cadence_uart_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/char/cadence_uart.h\00", align 1
@__func__.CADENCE_UART = private unnamed_addr constant [13 x i8] c"CADENCE_UART\00", align 1
@uart_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr null, ptr null, ptr @uart_read, ptr @uart_write, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: uart is unclocked or in reset\0A\00", align 1
@__func__.uart_read = private unnamed_addr constant [10 x i8] c"uart_read\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@__func__.uart_write = private unnamed_addr constant [11 x i8] c"uart_write\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"cadence_uart: TxFIFO overflow\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_CADENCE_UART_BAUDRATE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.10 = private unnamed_addr constant [35 x i8] c"cadence_uart_baudrate baudrate %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"resettable\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/resettable.h\00", align 1
@__func__.RESETTABLE_CLASS = private unnamed_addr constant [17 x i8] c"RESETTABLE_CLASS\00", align 1
@__func__.uart_can_receive = private unnamed_addr constant [17 x i8] c"uart_can_receive\00", align 1
@__func__.uart_event = private unnamed_addr constant [11 x i8] c"uart_event\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"rx_fifo\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"tx_fifo\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"rx_count\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tx_count\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"rx_wpos\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"fifo_trigger_handle\00", align 1
@vmstate_info_timer = external constant %struct.VMStateInfo, align 8
@vmstate_clock = external constant %struct.VMStateDescription, align 8
@.compoundliteral = internal constant [9 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.15, i64 1088, i64 4, i64 0, i64 0, i32 18, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.16, i64 1160, i64 1, i64 0, i64 0, i32 16, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.17, i64 1176, i64 1, i64 0, i64 0, i32 16, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.18, i64 1196, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.19, i64 1200, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.20, i64 1192, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.21, i64 1280, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_timer, i32 3, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.4, i64 1288, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 10, [4 x i8] zeroinitializer, ptr @vmstate_clock, i32 3, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_cadence_uart = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 3, i32 2, i32 0, ptr @cadence_uart_pre_load, ptr null, ptr @cadence_uart_post_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"chardev\00", align 1
@qdev_prop_chr = external constant %struct.PropertyInfo, align 8
@cadence_uart_properties = internal constant [1 x { ptr, ptr, i64, ptr, i64, %union.anon.6, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.6, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.23, ptr @qdev_prop_chr, i64 1216, ptr null, i64 0, %union.anon.6 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 0, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_cadence_uart_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_cadence_uart_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @cadence_uart_register_types, i32 noundef 4) #6
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @cadence_uart_info) #6 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 35, ptr noundef nonnull @__func__.CADENCE_UART) #6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull @uart_ops, ptr noundef %i.b, ptr noundef nonnull @.str.3, i64 noundef 4096) #6
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  tail call void @sysbus_init_irq(ptr noundef %i.a, ptr noundef nonnull %i.d) #6
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.f = tail call ptr @qdev_init_clock_in(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull @cadence_uart_refclk_update, ptr noundef %i.b, i32 noundef 1) #6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  store ptr %i.f, ptr %i.g, align 8
  %i.h = tail call zeroext i1 @clock_set(ptr noundef %i.f, i64 noundef 85899345920) #6 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1208
  store i64 1041660, ptr %i.i, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #6 ; 3 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @cadence_uart_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_cadence_uart, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @cadence_uart_reset_init, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr @cadence_uart_reset_hold, ptr %i.f, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @cadence_uart_properties, i64 noundef 1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_init_clock_in(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_refclk_update(ptr noundef initializes((1208, 1216)) %0, i32 %1) #0 {
bb.a:
  tail call fastcc void @uart_parameters_setup(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @uart_read(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 %3, i64 %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.e = tail call zeroext i1 @device_is_in_reset(ptr noundef %i.d) #6
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.k, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uart_read) #6
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 2                           ; 2 uses
  %i.i = icmp ugt i64 %1, 71
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i64 %i.h, 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.k, align 16
  %i.m = and i32 %i.l, 12
  %or.cond.not.i = icmp eq i32 %i.m, 4
  br i1 %or.cond.not.i, label %bb.h, label %uart_read_rx_fifo.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %.thread19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub i32 %i.q, %i.o
  %i.s = and i32 %i.r, 15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.o, -1
  store i32 %i.y, ptr %i.n, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1216
  tail call void @qemu_chr_fe_accept_input(ptr noundef nonnull %i.z) #6
  %.pre = load i32, ptr %i.n, align 4
  %.pre.fr = freeze i32 %.pre                     ; 3 uses
  %i.aa = icmp eq i32 %.pre.fr, 16
  %spec.select = select i1 %i.aa, i32 4, i32 0
  %.not.i.i = icmp eq i32 %.pre.fr, 0
  %spec.select25 = select i1 %.not.i.i, i32 2, i32 0
  %5 = or disjoint i32 %spec.select, %spec.select25
  br label %.thread19

.thread19:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i32 [ %.pre.fr, %bb.i ], [ 0, %bb.h ]
  %.11723 = phi i32 [ %i.x, %bb.i ], [ 0, %bb.h ]
  %i.ac = phi i32 [ %5, %bb.i ], [ 2, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.af = load i32, ptr %i.ae, align 16
  %.not22.i.i = icmp uge i32 %i.ab, %i.af
  %i.ag = zext i1 %.not22.i.i to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ai = load i32, ptr %i.ah, align 16           ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 16
  %6 = select i1 %i.aj, i32 16, i32 0
  %.not23.i.i = icmp eq i32 %i.ai, 0
  %i.ak = select i1 %.not23.i.i, i32 8, i32 0
  %7 = or disjoint i32 %i.ac, %i.ag
  %8 = or disjoint i32 %7, %6
  %i.al = or disjoint i32 %8, %i.ak               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.an = load i32, ptr %i.am, align 4
  %.not24.i.i = icmp ult i32 %i.ai, %i.an         ; 2 uses
  %i.ao = select i1 %.not24.i.i, i32 0, i32 8192
  %i.ap = or disjoint i32 %i.al, %i.ao
  store i32 %i.ap, ptr %i.ad, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = select i1 %.not24.i.i, i32 0, i32 1024
  %i.at = or i32 %i.ar, %i.as
  %i.au = or i32 %i.at, %i.al                     ; 2 uses
  store i32 %i.au, ptr %i.aq, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = and i32 %i.ay, %i.au
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  tail call void @qemu_set_irq(ptr noundef %i.aw, i32 noundef %i.bb) #6
  br label %uart_read_rx_fifo.exit

bb.j:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %i.bd = load i32, ptr %i.bc, align 4
  br label %uart_read_rx_fifo.exit

uart_read_rx_fifo.exit:                           ; preds = %.thread19, %bb.g, %bb.j
  %.011 = phi i32 [ %i.bd, %bb.j ], [ %.11723, %.thread19 ], [ 0, %bb.g ]
  %i.be = zext i32 %.011 to i64
  store i64 %i.be, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.c, %bb.d, %uart_read_rx_fifo.exit
  %.0 = phi i32 [ 0, %uart_read_rx_fifo.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @uart_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %.val = load i64, ptr %i.e, align 8
  %.not26 = icmp eq i64 %.val, 0
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.g = tail call zeroext i1 @device_is_in_reset(ptr noundef %i.f) #6
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 2048
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.y, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uart_write) #6
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.j = lshr i64 %1, 2                           ; 3 uses
  %i.k = icmp ugt i64 %1, 71
  br i1 %i.k, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i64 %i.j, label %bb.q [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 13, label %bb.o
    i64 5, label %bb.i
    i64 12, label %bb.j
    i64 6, label %bb.m
    i64 4, label %uart_ctrl_update.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.m = load i32, ptr %i.l, align 16
  %i.n = trunc i64 %2 to i32
  %i.o = or i32 %i.m, %i.n
  store i32 %i.o, ptr %i.l, align 16
  br label %uart_ctrl_update.exit

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16
  %i.r = trunc i64 %2 to i32
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %i.q, %i.s
  store i32 %i.t, ptr %i.p, align 16
  br label %uart_ctrl_update.exit

bb.i:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i64 %2 to i32
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.v, %i.x
  store i32 %i.y, ptr %i.u, align 4
  br label %uart_ctrl_update.exit

bb.j:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 768
  switch i32 %i.ab, label %uart_ctrl_update.exit [
    i32 0, label %bb.k
    i32 512, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call fastcc void @uart_write_tx_fifo(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1)
  br label %uart_ctrl_update.exit

bb.l:                                             ; preds = %bb.j
  call fastcc void @uart_write_rx_fifo(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1)
  br label %uart_ctrl_update.exit

bb.m:                                             ; preds = %bb.f
  %i.ac = and i64 %2, 65535                       ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %uart_ctrl_update.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %i.ad, ptr %i.ae, align 8
  br label %uart_ctrl_update.exit

bb.o:                                             ; preds = %bb.f
  %i.af = and i64 %2, 255                         ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.af, 3
  br i1 %i.ag, label %bb.p, label %uart_ctrl_update.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = trunc nuw nsw i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i32 %i.ah, ptr %i.ai, align 4
  br label %uart_ctrl_update.exit

bb.q:                                             ; preds = %bb.f
  %i.aj = trunc i64 %2 to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.j
  store i32 %i.aj, ptr %i.al, align 4
  switch i64 %i.j, label %uart_ctrl_update.exit [
    i64 0, label %bb.r
    i64 1, label %bb.x
  ]

bb.r:                                             ; preds = %bb.q
  %i.am = load i32, ptr %i.ak, align 16           ; 3 uses
  %i.an = and i32 %i.am, 2
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i32 0, ptr %i.ao, align 16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ap = and i32 %i.am, 1
  %.not8.i = icmp eq i32 %i.ap, 0
  br i1 %.not8.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1196
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1216
  tail call void @qemu_chr_fe_accept_input(ptr noundef nonnull %i.as) #6
  %.pre.i = load i32, ptr %i.ak, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.at = phi i32 [ %.pre.i, %bb.u ], [ %i.am, %bb.t ] ; 2 uses
  %i.au = and i32 %i.at, -4
  store i32 %i.au, ptr %i.ak, align 16
  %i.av = and i32 %i.at, 384
  %or.cond.i = icmp eq i32 %i.av, 128
  br i1 %or.cond.i, label %bb.w, label %uart_ctrl_update.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ax = call i32 @qemu_chr_fe_ioctl(ptr noundef nonnull %i.aw, i32 noundef 2, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %uart_ctrl_update.exit

bb.x:                                             ; preds = %bb.q
  tail call fastcc void @uart_parameters_setup(ptr noundef nonnull %0)
  br label %uart_ctrl_update.exit

uart_ctrl_update.exit:                            ; preds = %bb.g, %bb.h, %bb.i, %bb.l, %bb.k, %bb.j, %bb.n, %bb.m, %bb.p, %bb.o, %bb.w, %bb.v, %bb.f, %bb.x, %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bb = load i32, ptr %i.ba, align 16
  %5 = load <2 x i32>, ptr %i.az, align 4         ; 3 uses
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = extractelement <2 x i32> %5, i64 0
  %.not22.i = icmp uge i32 %7, %i.bb
  %8 = zext i1 %.not22.i to i32
  %9 = icmp eq <4 x i32> %6, <i32 16, i32 16, i32 0, i32 0>
  %10 = select <4 x i1> %9, <4 x i32> <i32 4, i32 16, i32 2, i32 8>, <4 x i32> zeroinitializer
  %11 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %10)
  %op.rdx = or disjoint i32 %11, %8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bd = load i32, ptr %i.bc, align 4
  %12 = extractelement <2 x i32> %5, i64 1
  %.not24.i = icmp ult i32 %12, %i.bd             ; 2 uses
  %i.be = select i1 %.not24.i, i32 0, i32 8192
  %i.bf = or disjoint i32 %op.rdx, %i.be
  store i32 %i.bf, ptr %i.ay, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = select i1 %.not24.i, i32 0, i32 1024
  %i.bj = or i32 %i.bh, %i.bi
  %i.bk = or i32 %i.bj, %op.rdx                   ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bo = load i32, ptr %i.bn, align 16
  %i.bp = and i32 %i.bo, %i.bk
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  call void @qemu_set_irq(ptr noundef %i.bm, i32 noundef %i.br) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.c, %bb.d, %uart_ctrl_update.exit
  %.0 = phi i32 [ 0, %uart_ctrl_update.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  ret i32 %.0
}

declare zeroext i1 @device_is_in_reset(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_chr_fe_accept_input(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uart_write_tx_fifo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load i32, ptr %i.a, align 16
  %i.c = and i32 %i.b, 48
  %or.cond.not = icmp eq i32 %i.c, 16
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.e = load i32, ptr %i.d, align 16             ; 3 uses
  %i.f = sub i32 16, %i.e                         ; 2 uses
  %i.g = icmp ugt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #6
  %.pre.pre = load i32, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pre = phi i32 [ %i.e, %bb.c ], [ %.pre.pre, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 32
  store i32 %i.l, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.m = phi i32 [ %.pre, %bb.e ], [ %i.e, %bb.b ]
  %.0 = phi i32 [ %i.f, %bb.e ], [ %2, %bb.b ]    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = sext i32 %.0 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.p, ptr noundef nonnull align 1 %1, i64 noundef range(i64 -2147483648, 2147483648) %i.q, i1 noundef false) #6
  %i.r = load i32, ptr %i.d, align 16
  %i.s = add i32 %i.r, %.0
  store i32 %i.s, ptr %i.d, align 16
  %i.t = tail call i32 @cadence_uart_xmit(ptr poison, i32 poison, ptr noundef nonnull %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uart_write_rx_fifo(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load i32, ptr %i.b, align 16
  %i.d = and i32 %i.c, 12
  %or.cond.not = icmp eq i32 %i.d, 4
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 16
  br i1 %i.g, label %.thread25, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %.pre = load i32, ptr %i.j, align 8             ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %2, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.thread25:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 32
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.o = phi i32 [ %.pre, %.lr.ph.new ], [ %i.af, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1
  %i.t = load <2 x i32>, ptr %i.j, align 8
  %i.u = add <2 x i32> %i.t, splat (i32 1)
  %i.v = and <2 x i32> %i.u, <i32 15, i32 -1>     ; 2 uses
  store <2 x i32> %i.v, ptr %i.j, align 8
  %i.w = extractelement <2 x i32> %i.v, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext nneg i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1
  %i.ac = load <2 x i32>, ptr %i.j, align 8
  %i.ad = add <2 x i32> %i.ac, splat (i32 1)
  %i.ae = and <2 x i32> %i.ad, <i32 15, i32 -1>   ; 2 uses
  store <2 x i32> %i.ae, ptr %i.j, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 0   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !8

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i32 %.epil.init to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load <2 x i32>, ptr %i.j, align 8
  %i.al = add <2 x i32> %i.ak, splat (i32 1)
  %i.am = and <2 x i32> %i.al, <i32 15, i32 -1>
  store <2 x i32> %i.am, ptr %i.j, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ao = load ptr, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = shl i64 %i.aq, 2
  %i.as = add i64 %i.ar, %i.a
  tail call void @timer_mod(ptr noundef %i.ao, i64 noundef %i.as) #6
  %.pre21 = load i32, ptr %i.e, align 4
  %.pre21.fr = freeze i32 %.pre21                 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %.pre22 = load i32, ptr %.phi.trans.insert, align 4
  %i.at = icmp eq i32 %.pre21.fr, 16
  %spec.select = select i1 %i.at, i32 4, i32 0
  %.not.i = icmp eq i32 %.pre21.fr, 0
  %spec.select28 = select i1 %.not.i, i32 2, i32 0
  %3 = or disjoint i32 %spec.select, %spec.select28
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.thread25
  %i.au = phi i32 [ %i.n, %.thread25 ], [ %.pre22, %.loopexit ]
  %i.av = phi i32 [ 16, %.thread25 ], [ %.pre21.fr, %.loopexit ]
  %i.aw = phi i32 [ 4, %.thread25 ], [ %3, %.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.az = load i32, ptr %i.ay, align 16
  %.not22.i = icmp uge i32 %i.av, %i.az
  %i.ba = zext i1 %.not22.i to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.bc = load i32, ptr %i.bb, align 16           ; 3 uses
  %i.bd = icmp eq i32 %i.bc, 16
  %4 = select i1 %i.bd, i32 16, i32 0
  %.not23.i = icmp eq i32 %i.bc, 0
  %i.be = select i1 %.not23.i, i32 8, i32 0
  %5 = or disjoint i32 %i.aw, %i.ba
  %6 = or disjoint i32 %5, %4
  %i.bf = or disjoint i32 %6, %i.be               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bh = load i32, ptr %i.bg, align 4
  %.not24.i = icmp ult i32 %i.bc, %i.bh           ; 2 uses
  %i.bi = select i1 %.not24.i, i32 0, i32 8192
  %i.bj = or disjoint i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.ax, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.bl = select i1 %.not24.i, i32 0, i32 1024
  %i.bm = or i32 %i.au, %i.bl
  %i.bn = or i32 %i.bm, %i.bf                     ; 2 uses
  store i32 %i.bn, ptr %i.bk, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.br = load i32, ptr %i.bq, align 16
  %i.bs = and i32 %i.br, %i.bn
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  tail call void @qemu_set_irq(ptr noundef %i.bp, i32 noundef %i.bu) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uart_parameters_setup(ptr noundef initializes((1208, 1216)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QEMUSerialSetParams, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i64 0, ptr %i.a, align 4, !annotation !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 40
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %clock_get_hz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 4294967296000000000, %.val
  %i.f = trunc i64 %i.e to i32
  br label %clock_get_hz.exit

clock_get_hz.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = and i32 %i.i, 1
  %.not = icmp eq i32 %i.j, 0
  %i.k = lshr i32 %i.g, 3
  %i.l = select i1 %.not, i32 %i.g, i32 %i.k      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, 1
  %i.r = mul i32 %i.q, %i.n                       ; 2 uses
  %i.s = udiv i32 %i.l, %i.r                      ; 3 uses
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i17 = icmp eq i32 %i.t, 0
  br i1 %.not.i17, label %trace_cadence_uart_baudrate.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %clock_get_hz.exit
  %i.u = load i16, ptr @_TRACE_CADENCE_UART_BAUDRATE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.u, 0
  br i1 %.not1.i, label %trace_cadence_uart_baudrate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not2.i = icmp eq i32 %i.w, 0
  br i1 %.not2.i, label %trace_cadence_uart_baudrate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef %i.s) #6
  %.pre = load i32, ptr %i.h, align 4
  br label %trace_cadence_uart_baudrate.exit

trace_cadence_uart_baudrate.exit:                 ; preds = %clock_get_hz.exit, %bb.c, %bb.d, %bb.e
  %i.x = phi i32 [ %i.i, %clock_get_hz.exit ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  store i32 %i.s, ptr %1, align 4
  %i.y = and i32 %i.x, 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  switch i32 %i.y, label %bb.g [
    i32 0, label %bb.h
    i32 8, label %bb.f
  ]

bb.f:                                             ; preds = %trace_cadence_uart_baudrate.exit
  br label %bb.h

bb.g:                                             ; preds = %trace_cadence_uart_baudrate.exit
  br label %bb.h

bb.h:                                             ; preds = %trace_cadence_uart_baudrate.exit, %bb.g, %bb.f
  %.sink18 = phi i32 [ 78, %bb.g ], [ 79, %bb.f ], [ 69, %trace_cadence_uart_baudrate.exit ]
  %.0 = phi i32 [ 1, %bb.g ], [ 2, %bb.f ], [ 2, %trace_cadence_uart_baudrate.exit ]
  store i32 %.sink18, ptr %i.z, align 4
  %i.aa = and i32 %i.x, 6                         ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.aa, 4
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 8
  %switch.selectcmp21 = icmp eq i32 %i.aa, 6
  %switch.select22 = select i1 %switch.selectcmp21, i32 6, i32 %switch.select ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %switch.select22, ptr %i.ab, align 4
  %i.ac = and i32 %i.x, 192
  %cond = icmp eq i32 %i.ac, 192
  %.sink = select i1 %cond, i32 1, i32 2          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink, ptr %i.ad, align 4
  %i.ae = icmp ugt i32 %i.r, %i.l
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi i32 [ 1, %bb.i ], [ %i.s, %bb.h ]
  %i.ag = add nuw nsw i32 %switch.select22, %.0
  %i.ah = add nuw nsw i32 %i.ag, %.sink
  %i.ai = sdiv i32 1000000000, %i.af
  %.sext = sext i32 %i.ai to i64
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = mul nsw i64 %.sext, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.an = call i32 @qemu_chr_fe_ioctl(ptr noundef nonnull %i.am, i32 noundef 1, ptr noundef nonnull %1) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cadence_uart_xmit(ptr nofree readnone captures(none) %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1216 ; 3 uses
  %i.b = tail call zeroext i1 @qemu_chr_fe_backend_connected(ptr noundef nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1200 ; 7 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1176 ; 3 uses
  %i.f = tail call i32 @qemu_chr_fe_write(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.d) #6 ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.c, align 16
  %i.i = sub i32 %i.h, %i.f                       ; 2 uses
  store i32 %i.i, ptr %i.c, align 16
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = zext i32 %i.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 1 %i.k, i64 noundef range(i64 0, 4294967296) %i.l, i1 noundef false) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load i32, ptr %i.c, align 16
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @qemu_chr_fe_add_watch(ptr noundef nonnull %i.a, i32 noundef 20, ptr noundef nonnull @cadence_uart_xmit, ptr noundef nonnull %2) #6
  %.not25.not = icmp eq i32 %i.n, 0
  br i1 %.not25.not, label %bb.h, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.c, align 16
  %i.o = freeze i32 %.pre
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.c, align 16
  br label %bb.i

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.f
  %.fr = phi i32 [ %i.o, %..critedge_crit_edge ], [ 0, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1132
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1196
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = icmp eq i32 %i.r, 16
  %i.t = select i1 %i.s, i32 4, i32 0
  %.not.i = icmp eq i32 %i.r, 0
  %i.u = select i1 %.not.i, i32 2, i32 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.w = load i32, ptr %i.v, align 16
  %.not22.i = icmp uge i32 %i.r, %i.w
  %i.x = zext i1 %.not22.i to i32
  %3 = icmp eq i32 %.fr, 16
  %spec.select = select i1 %3, i32 16, i32 0
  %.not23.i = icmp eq i32 %.fr, 0
  %i.y = select i1 %.not23.i, i32 8, i32 0
  %4 = or disjoint i32 %i.t, %i.u
  %5 = or disjoint i32 %4, %i.x
  %6 = or disjoint i32 %5, %spec.select
  %i.z = or disjoint i32 %6, %i.y                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1156
  %i.ab = load i32, ptr %i.aa, align 4
  %.not24.i = icmp ult i32 %.fr, %i.ab            ; 2 uses
  %i.ac = select i1 %.not24.i, i32 0, i32 8192
  %i.ad = or disjoint i32 %i.z, %i.ac
  store i32 %i.ad, ptr %i.p, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1108 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = select i1 %.not24.i, i32 0, i32 1024
  %i.ah = or i32 %i.af, %i.ag
  %i.ai = or i32 %i.ah, %i.z                      ; 2 uses
  store i32 %i.ai, ptr %i.ae, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1272
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.am = load i32, ptr %i.al, align 16
  %i.an = and i32 %i.am, %i.ai
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  tail call void @qemu_set_irq(ptr noundef %i.ak, i32 noundef %i.ap) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c, %.critedge, %bb.b
  ret i32 0
}

declare zeroext i1 @qemu_chr_fe_backend_connected(ptr noundef) local_unnamed_addr #1

declare i32 @qemu_chr_fe_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @qemu_chr_fe_add_watch(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @qemu_chr_fe_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @clock_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 35, ptr noundef nonnull @__func__.CADENCE_UART) #6 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #7 ; 2 uses
  tail call void @timer_init_full(ptr noundef %i.b, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @fifo_trigger_update, ptr noundef %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  store ptr %i.b, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  tail call void @qemu_chr_fe_set_handlers(ptr noundef nonnull %i.d, ptr noundef nonnull @uart_can_receive, ptr noundef nonnull @uart_receive, ptr noundef nonnull @uart_event, ptr noundef null, ptr noundef %i.a, ptr noundef null, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_reset_init(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 35, ptr noundef nonnull @__func__.CADENCE_UART) #6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store i32 296, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  store i32 32, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store i32 651, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  store i32 15, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1156
  store i32 32, ptr %i.h, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cadence_uart_reset_hold(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 35, ptr noundef nonnull @__func__.CADENCE_UART) #6 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1192
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1196 ; 2 uses
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  tail call void @qemu_chr_fe_accept_input(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store i32 0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1132
  %i.g = load i32, ptr %i.c, align 4              ; 3 uses
  %i.h = icmp eq i32 %i.g, 16
  %i.i = select i1 %i.h, i32 4, i32 0
  %.not.i = icmp eq i32 %i.g, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.k = load i32, ptr %i.j, align 16
  %.not22.i = icmp uge i32 %i.g, %i.k
  %i.l = zext i1 %.not22.i to i32
  %2 = select i1 %.not.i, i32 10, i32 8
  %i.m = or disjoint i32 %2, %i.i
  %i.n = or disjoint i32 %i.m, %i.l               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1156
  %i.p = load i32, ptr %i.o, align 4
  %.not24.i.not = icmp eq i32 %i.p, 0             ; 2 uses
  %i.q = select i1 %.not24.i.not, i32 8192, i32 0
  %i.r = or disjoint i32 %i.n, %i.q
  store i32 %i.r, ptr %i.f, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1108 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %.not24.i.not, i32 1024, i32 0
  %i.v = or i32 %i.t, %i.u
  %i.w = or i32 %i.v, %i.n                        ; 2 uses
  store i32 %i.w, ptr %i.s, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.aa = load i32, ptr %i.z, align 16
  %i.ab = and i32 %i.aa, %i.w
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  tail call void @qemu_set_irq(ptr noundef %i.y, i32 noundef %i.ad) #6
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @fifo_trigger_update(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.i = load i32, ptr %i.h, align 16
  %1 = load <2 x i32>, ptr %i.g, align 4          ; 3 uses
  %2 = shufflevector <2 x i32> %1, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %3 = extractelement <2 x i32> %1, i64 0
  %.not22.i = icmp uge i32 %3, %i.i
  %4 = zext i1 %.not22.i to i32
  %5 = icmp eq <4 x i32> %2, <i32 16, i32 16, i32 0, i32 0>
  %6 = select <4 x i1> %5, <4 x i32> <i32 4, i32 16, i32 2, i32 8>, <4 x i32> zeroinitializer
  %7 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %6)
  %op.rdx = or disjoint i32 %7, %4                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.k = load i32, ptr %i.j, align 4
  %8 = extractelement <2 x i32> %1, i64 1
  %.not24.i = icmp ult i32 %8, %i.k               ; 2 uses
  %i.l = select i1 %.not24.i, i32 0, i32 8192
  %i.m = or disjoint i32 %op.rdx, %i.l
  store i32 %i.m, ptr %i.f, align 4
  %i.n = select i1 %.not24.i, i32 0, i32 1024
  %i.o = or i32 %i.n, %i.e
  %i.p = or i32 %i.o, %op.rdx                     ; 2 uses
  store i32 %i.p, ptr %i.c, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.t = load i32, ptr %i.s, align 16
  %i.u = and i32 %i.t, %i.p
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  tail call void @qemu_set_irq(ptr noundef %i.r, i32 noundef %i.w) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @qemu_chr_fe_set_handlers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 17) i32 @uart_can_receive(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.e = tail call zeroext i1 @device_is_in_reset(ptr noundef %i.d) #6
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uart_can_receive) #6
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 768                        ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 256, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sub i32 16, %i.l
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 16)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.031 = phi i32 [ %i.n, %bb.f ], [ 16, %bb.e ]  ; 2 uses
  switch i32 %i.j, label %bb.i [
    i32 768, label %bb.h
    i32 256, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.p = load i32, ptr %i.o, align 16
  %i.q = sub i32 16, %i.p
  %i.r = tail call i32 @llvm.umin.i32(i32 %.031, i32 %i.q)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.r, %bb.h ], [ %.031, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @uart_receive(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 768                        ; 2 uses
  %i.d = lshr exact i32 %i.c, 8
  switch i32 %i.d, label %default.unreachable [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 2, label %uart_write_tx_fifo.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call fastcc void @uart_write_rx_fifo(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  switch i32 %i.c, label %uart_write_tx_fifo.exit [
    i32 768, label %bb.c
    i32 256, label %bb.c
  ]

bb.c:                                             ; preds = %bb.a, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.f = load i32, ptr %i.e, align 16
  %i.g = and i32 %i.f, 48
  %or.cond.not.i = icmp eq i32 %i.g, 16
  br i1 %or.cond.not.i, label %bb.d, label %uart_write_tx_fifo.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.i = load i32, ptr %i.h, align 16             ; 3 uses
  %i.j = sub i32 16, %i.i                         ; 2 uses
  %i.k = icmp ugt i32 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 2048
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #6
  %.pre.pre.i = load i32, ptr %i.h, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre.i = phi i32 [ %i.i, %bb.e ], [ %.pre.pre.i, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, 32
  store i32 %i.p, ptr %i.n, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.g ], [ %i.i, %bb.d ]
  %.0.i = phi i32 [ %i.j, %bb.g ], [ %2, %bb.d ]  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = sext i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 -2147483648, 2147483648) %i.u, i1 noundef false) #6
  %i.v = load i32, ptr %i.h, align 16
  %i.w = add i32 %i.v, %.0.i
  store i32 %i.w, ptr %i.h, align 16
  %i.x = tail call i32 @cadence_uart_xmit(ptr poison, i32 poison, ptr noundef nonnull %0) ; 0 uses
  br label %uart_write_tx_fifo.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

uart_write_tx_fifo.exit:                          ; preds = %bb.h, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @uart_event(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 40
  %.val = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.f = tail call zeroext i1 @device_is_in_reset(ptr noundef %i.e) #6
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 2048
  %.not5 = icmp eq i32 %i.h, 0
  br i1 %.not5, label %bb.h, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uart_event) #6
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @uart_write_rx_fifo(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = load i32, ptr %i.l, align 16
  %2 = load <2 x i32>, ptr %i.k, align 4          ; 3 uses
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = extractelement <2 x i32> %2, i64 0
  %.not22.i = icmp uge i32 %4, %i.m
  %5 = zext i1 %.not22.i to i32
  %6 = icmp eq <4 x i32> %3, <i32 16, i32 16, i32 0, i32 0>
  %7 = select <4 x i1> %6, <4 x i32> <i32 4, i32 16, i32 2, i32 8>, <4 x i32> zeroinitializer
  %8 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %7)
  %op.rdx = or disjoint i32 %8, %5                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.o = load i32, ptr %i.n, align 4
  %9 = extractelement <2 x i32> %2, i64 1
  %.not24.i = icmp ult i32 %9, %i.o               ; 2 uses
  %i.p = select i1 %.not24.i, i32 0, i32 8192
  %i.q = or disjoint i32 %op.rdx, %i.p
  store i32 %i.q, ptr %i.j, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %.not24.i, i32 0, i32 1024
  %i.u = or i32 %i.s, %i.t
  %i.v = or i32 %i.u, %op.rdx                     ; 2 uses
  store i32 %i.v, ptr %i.r, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.z = load i32, ptr %i.y, align 16
  %i.aa = and i32 %i.z, %i.v
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  tail call void @qemu_set_irq(ptr noundef %i.x, i32 noundef %i.ac) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cadence_uart_pre_load(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @clock_set(ptr noundef %i.b, i64 noundef 85899345920) #6 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @cadence_uart_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, -65536
  %or.cond = icmp ult i32 %i.c, -65535
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -256
  %or.cond9 = icmp ult i32 %i.f, -252
  br i1 %or.cond9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @uart_parameters_setup(ptr noundef nonnull %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.j = load i32, ptr %i.i, align 16
  %2 = load <2 x i32>, ptr %i.h, align 4          ; 3 uses
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = extractelement <2 x i32> %2, i64 0
  %.not22.i = icmp uge i32 %4, %i.j
  %5 = zext i1 %.not22.i to i32
  %6 = icmp eq <4 x i32> %3, <i32 16, i32 16, i32 0, i32 0>
  %7 = select <4 x i1> %6, <4 x i32> <i32 4, i32 16, i32 2, i32 8>, <4 x i32> zeroinitializer
  %8 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %7)
  %op.rdx = or disjoint i32 %8, %5                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.l = load i32, ptr %i.k, align 4
  %9 = extractelement <2 x i32> %2, i64 1
  %.not24.i = icmp ult i32 %9, %i.l               ; 2 uses
  %i.m = select i1 %.not24.i, i32 0, i32 8192
  %i.n = or disjoint i32 %op.rdx, %i.m
  store i32 %i.n, ptr %i.g, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %.not24.i, i32 0, i32 1024
  %i.r = or i32 %i.p, %i.q
  %i.s = or i32 %i.r, %op.rdx                     ; 2 uses
  store i32 %i.s, ptr %i.o, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.w = load i32, ptr %i.v, align 16
  %i.x = and i32 %i.w, %i.s
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  tail call void @qemu_set_irq(ptr noundef %i.u, i32 noundef %i.z) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"auto-init"}
end_hunk_0
