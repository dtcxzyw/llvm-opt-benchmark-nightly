Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/allwinner-h3-dramc?download=true
inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@__func__.allwinner_h3_dramctl_write = private unnamed_addr constant [27 x i8] c"allwinner_h3_dramctl_write\00", align 1
@_TRACE_ALLWINNER_H3_DRAMCTL_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.13 = private unnamed_addr constant [67 x i8] c"allwinner_h3_dramctl_write Write: offset 0x%lx data 0x%lx size %u\0A\00", align 1
@allwinner_h3_dramphy_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @allwinner_h3_dramphy_read, ptr @allwinner_h3_dramphy_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 4, i32 0, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@__func__.allwinner_h3_dramphy_read = private unnamed_addr constant [26 x i8] c"allwinner_h3_dramphy_read\00", align 1
@_TRACE_ALLWINNER_H3_DRAMPHY_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.15 = private unnamed_addr constant [65 x i8] c"allwinner_h3_dramphy_read Read: offset 0x%lx data 0x%lx size %u\0A\00", align 1
@__func__.allwinner_h3_dramphy_write = private unnamed_addr constant [27 x i8] c"allwinner_h3_dramphy_write\00", align 1
@_TRACE_ALLWINNER_H3_DRAMPHY_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [67 x i8] c"allwinner_h3_dramphy_write write: offset 0x%lx data 0x%lx size %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"dramcom\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"dramctl\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"dramphy\00", align 1
@.compoundliteral = internal constant [4 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.19, i64 2192, i64 4, i64 0, i64 0, i32 513, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.20, i64 4244, i64 4, i64 0, i64 0, i32 547, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.21, i64 6432, i64 4, i64 0, i64 0, i32 1, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@allwinner_h3_dramc_vmstate = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.23 = private unnamed_addr constant [37 x i8] c"%s: ram-size %u MiB is not supported\00", align 1
@__func__.allwinner_h3_dramc_realize = private unnamed_addr constant [27 x i8] c"allwinner_h3_dramc_realize\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"allwinner-h3-dramc.row-mirror\00", align 1
@error_abort = external global ptr, align 8
@.str.25 = private unnamed_addr constant [36 x i8] c"allwinner-h3-dramc.row-mirror-alias\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"ram-addr\00", align 1
@qdev_prop_uint64 = external constant %struct.PropertyInfo, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"ram-size\00", align 1
@qdev_prop_uint32 = external constant %struct.PropertyInfo, align 8
@allwinner_h3_dramc_properties = internal constant [2 x { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] }] [{ ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.26, ptr @qdev_prop_uint64, i64 808, ptr null, i64 0, %union.anon.4 zeroinitializer, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { ptr, ptr, i64, ptr, i64, %union.anon.4, ptr, i32, i32, i8, i8, [6 x i8] } { ptr @.str.27, ptr @qdev_prop_uint32, i64 816, ptr null, i64 0, %union.anon.4 { i64 268435456 }, ptr null, i32 0, i32 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_allwinner_h3_dramc_register, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_allwinner_h3_dramc_register() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @allwinner_h3_dramc_register, i32 noundef 4) #6
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_h3_dramc_register() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @allwinner_h3_dramc_info) #6 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_h3_dramc_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6 ; 3 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1376 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %i.b, ptr noundef nonnull @allwinner_h3_dramcom_ops, ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef 4096) #6
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1648 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.d, ptr noundef %i.b, ptr noundef nonnull @allwinner_h3_dramctl_ops, ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef 4096) #6
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1920 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %i.b, ptr noundef nonnull @allwinner_h3_dramphy_ops, ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef 4096) #6
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.e) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_h3_dramc_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #6 ; 4 uses
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @allwinner_h3_dramc_reset) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @allwinner_h3_dramc_vmstate, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @allwinner_h3_dramc_realize, ptr %i.c, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @allwinner_h3_dramc_properties, i64 noundef 2) #6
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @allwinner_h3_dramcom_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6
  %i.b = lshr i64 %1, 2
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %i.d = icmp samesign ugt i64 %i.c, 512
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %trace_allwinner_h3_dramcom_read.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_h3_dramcom_read, i32 noundef %i.g) #6
  br label %trace_allwinner_h3_dramcom_read.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_allwinner_h3_dramcom_read.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMCOM_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.m, 0
  br i1 %.not3.i, label %trace_allwinner_h3_dramcom_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %trace_allwinner_h3_dramcom_read.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %i.k, i32 noundef %2) #6
  %.pre = load i32, ptr %i.i, align 4
  %.pre11 = zext i32 %.pre to i64
  br label %trace_allwinner_h3_dramcom_read.exit

trace_allwinner_h3_dramcom_read.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %.pre11, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_h3_dramcom_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6 ; 5 uses
  %i.b = lshr i64 %1, 2
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_allwinner_h3_dramcom_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMCOM_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.d, 0
  br i1 %.not3.i, label %trace_allwinner_h3_dramcom_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %trace_allwinner_h3_dramcom_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i64 noundef %1, i64 noundef %2, i32 noundef %3) #6
  br label %trace_allwinner_h3_dramcom_write.exit

trace_allwinner_h3_dramcom_write.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = and i64 %i.b, 4294967295                 ; 2 uses
  %i.h = icmp samesign ugt i64 %i.g, 512
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %trace_allwinner_h3_dramcom_write.exit
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 2048
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.q, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_h3_dramcom_write, i32 noundef %i.k) #6
  br label %bb.q

bb.g:                                             ; preds = %trace_allwinner_h3_dramcom_write.exit
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %bb.h, label %.allwinner_h3_dramc_map_rows.exit_crit_edge

.allwinner_h3_dramc_map_rows.exit_crit_edge:      ; preds = %bb.g
  %.pre = trunc i64 %2 to i32
  br label %allwinner_h3_dramc_map_rows.exit

bb.h:                                             ; preds = %bb.g
  %i.l = trunc i64 %2 to i8
  %i.m = lshr i8 %i.l, 4                          ; 2 uses
  %i.n = lshr i64 %2, 2
  %i.o = and i64 %i.n, 1
  %i.p = trunc i64 %2 to i32                      ; 10 uses
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 15
  %i.s = shl nuw nsw i32 8, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.u = load i32, ptr %i.t, align 16             ; 4 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %.split.i, label %.thread.i

.split.i:                                         ; preds = %bb.h
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.u, i1 true)
  %switch.tableidx.i = add nsw i32 %i.x, -8       ; 2 uses
  %4 = icmp ult i32 %switch.tableidx.i, 4
  br i1 %4, label %switch.lookup.i, label %.thread.i

.thread.i:                                        ; preds = %.split.i, %bb.h
  %i.y = zext nneg i8 %i.m to i32
  %i.z = add nsw i32 %i.y, -2
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = icmp eq i32 %i.u, %i.aa
  br i1 %i.ab, label %bb.i, label %allwinner_h3_dramc_map_rows.exit

switch.lookup.i:                                  ; preds = %.split.i
  %i.ac = zext nneg i8 %i.m to i32
  %i.ad = add nsw i32 %i.ac, -2
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = icmp eq i32 %i.u, %i.ae
  br i1 %i.af, label %bb.i, label %bb.m

bb.i:                                             ; preds = %switch.lookup.i, %.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  tail call void @memory_region_set_enabled(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #6
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMC_ROWMIRROR_DISABLE_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not1.i.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not2.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not2.i.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #6
  br label %allwinner_h3_dramc_map_rows.exit

bb.m:                                             ; preds = %switch.lookup.i
  %5 = or disjoint i32 %switch.tableidx.i, 8
  %switch.offset.i = zext nneg i32 %5 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add nuw nsw i64 %i.o, 5
  %narrow.i = add nuw nsw i64 %i.an, %switch.offset.i
  %i.ao = and i32 %i.s, 65528
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, %narrow.i
  %i.ar = add i64 %i.am, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 2 uses
  tail call void @memory_region_set_enabled(ptr noundef nonnull %i.as, i1 noundef zeroext true) #6
  tail call void @memory_region_set_address(ptr noundef nonnull %i.as, i64 noundef %i.ar) #6
  %i.at = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i18.i = icmp eq i32 %i.at, 0
  br i1 %.not.i18.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.au = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMC_ROWMIRROR_ENABLE_DSTATE, align 2
  %.not1.i19.i = icmp eq i16 %i.au, 0
  br i1 %.not1.i19.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not2.i20.i = icmp eq i32 %i.aw, 0
  br i1 %.not2.i20.i, label %allwinner_h3_dramc_map_rows.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %i.ar) #6
  br label %allwinner_h3_dramc_map_rows.exit

allwinner_h3_dramc_map_rows.exit:                 ; preds = %.allwinner_h3_dramc_map_rows.exit_crit_edge, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.thread.i
  %.pre-phi = phi i32 [ %.pre, %.allwinner_h3_dramc_map_rows.exit_crit_edge ], [ %i.p, %bb.p ], [ %i.p, %bb.o ], [ %i.p, %bb.n ], [ %i.p, %bb.m ], [ %i.p, %bb.l ], [ %i.p, %bb.k ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %.thread.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.g
  store i32 %.pre-phi, ptr %i.ay, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.f, %allwinner_h3_dramc_map_rows.exit
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @memory_region_set_enabled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @memory_region_set_address(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @allwinner_h3_dramctl_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6
  %i.b = lshr i64 %1, 2
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %i.d = icmp samesign ugt i64 %i.c, 546
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %trace_allwinner_h3_dramctl_read.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_h3_dramctl_read, i32 noundef %i.g) #6
  br label %trace_allwinner_h3_dramctl_read.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4244
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_allwinner_h3_dramctl_read.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMCTL_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.m, 0
  br i1 %.not3.i, label %trace_allwinner_h3_dramctl_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %trace_allwinner_h3_dramctl_read.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %i.k, i32 noundef %2) #6
  %.pre = load i32, ptr %i.i, align 4
  %.pre11 = zext i32 %.pre to i64
  br label %trace_allwinner_h3_dramctl_read.exit

trace_allwinner_h3_dramctl_read.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %.pre11, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_h3_dramctl_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6 ; 3 uses
  %i.b = lshr i64 %1, 2
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_allwinner_h3_dramctl_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMCTL_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.d, 0
  br i1 %.not3.i, label %trace_allwinner_h3_dramctl_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %trace_allwinner_h3_dramctl_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i64 noundef %1, i64 noundef %2, i32 noundef %3) #6
  br label %trace_allwinner_h3_dramctl_write.exit

trace_allwinner_h3_dramctl_write.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = and i64 %i.b, 4294967295                 ; 2 uses
  %i.h = icmp samesign ugt i64 %i.g, 546
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %trace_allwinner_h3_dramctl_write.exit
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 2048
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_h3_dramctl_write, i32 noundef %i.k) #6
  br label %bb.j

bb.g:                                             ; preds = %trace_allwinner_h3_dramctl_write.exit
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4260 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4268 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = or i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = trunc i64 %2 to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4244
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.g
  store i32 %i.r, ptr %i.t, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @allwinner_h3_dramphy_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 61, ptr noundef nonnull @__func__.AW_H3_DRAMC) #6
  %i.b = and i64 %1, 17179869180
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 2048
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %trace_allwinner_h3_dramphy_read.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_h3_dramphy_read, i32 noundef %i.e) #6
  br label %trace_allwinner_h3_dramphy_read.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6432 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_allwinner_h3_dramphy_read.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr @_TRACE_ALLWINNER_H3_DRAMPHY_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i, label %trace_allwinner_h3_dramphy_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i = icmp eq i32 %i.l, 0
end_hunk_0
