Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/raspi?download=true
inline.NumInlined: 44
inline.NumDeleted: 13
begin_hunk_0
@.str.4 = private unnamed_addr constant [10 x i8] c"board-rev\00", align 1
@error_abort = external global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"command-line\00", align 1
@error_fatal = external global ptr, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"sd-bus\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"No SD bus found in SOC object\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sd-card\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vcram-size\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"vcram-base\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Raspberry Pi %s (revision 1.%u)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"bcm2835\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bcm2836\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"bcm2837\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"bcm2838\00", align 1
@soc_property = internal unnamed_addr constant [4 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.16, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.17, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.18, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.19, i32 4, [4 x i8] zeroinitializer }], align 16
@__PRETTY_FUNCTION__.board_processor_id = private unnamed_addr constant [46 x i8] c"RaspiProcessorId board_processor_id(uint32_t)\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"proc_id < ARRAY_SIZE(soc_property) && soc_property[proc_id].type\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"raspi-base-machine\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/qemu/qemu/include/hw/arm/raspi_platform.h\00", align 1
@__func__.RASPI_BASE_MACHINE_GET_CLASS = private unnamed_addr constant [29 x i8] c"RASPI_BASE_MACHINE_GET_CLASS\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Failed to load firmware from %s\00", align 1
@write_smpboot.smpboot = internal constant [13 x %struct.ARMInsnFixup] [%struct.ARMInsnFixup { i32 -509550577, i32 0 }, %struct.ARMInsnFixup { i32 -475988414, i32 0 }, %struct.ARMInsnFixup { i32 -300937296, i32 0 }, %struct.ARMInsnFixup { i32 -404684720, i32 0 }, %struct.ARMInsnFixup { i32 -442544108, i32 0 }, %struct.ARMInsnFixup { i32 -484380671, i32 0 }, %struct.ARMInsnFixup { i32 -409652736, i32 0 }, %struct.ARMInsnFixup { i32 -481099776, i32 0 }, %struct.ARMInsnFixup { i32 184549371, i32 0 }, %struct.ARMInsnFixup { i32 -410701312, i32 0 }, %struct.ARMInsnFixup { i32 -516948205, i32 0 }, %struct.ARMInsnFixup { i32 1073742028, i32 0 }, %struct.ARMInsnFixup { i32 0, i32 1 }], align 16
@write_smpboot.fixupcontext = internal constant [11 x i32] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"raspi_smpboot\00", align 1
@write_smpboot64.smpboot = internal constant [12 x %struct.ARMInsnFixup] [%struct.ARMInsnFixup { i32 -763356411, i32 0 }, %struct.ARMInsnFixup { i32 -717750106, i32 0 }, %struct.ARMInsnFixup { i32 -1841298234, i32 0 }, %struct.ARMInsnFixup { i32 -721215393, i32 0 }, %struct.ARMInsnFixup { i32 -127502172, i32 0 }, %struct.ARMInsnFixup { i32 -1258291260, i32 0 }, %struct.ARMInsnFixup { i32 -763363328, i32 0 }, %struct.ARMInsnFixup { i32 -763363327, i32 0 }, %struct.ARMInsnFixup { i32 -763363326, i32 0 }, %struct.ARMInsnFixup { i32 -763363325, i32 0 }, %struct.ARMInsnFixup { i32 -702611328, i32 0 }, %struct.ARMInsnFixup { i32 0, i32 1 }], align 16
@write_smpboot64.fixupcontext = internal constant [11 x i32] zeroinitializer, align 16
@write_smpboot64.spintables = internal constant [4 x i64] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [17 x i8] c"raspi_spintables\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"raspi-common-machine\00", align 1
@__func__.RASPI_MACHINE = private unnamed_addr constant [14 x i8] c"RASPI_MACHINE\00", align 1
@__func__.RASPI_BASE_MACHINE = private unnamed_addr constant [19 x i8] c"RASPI_BASE_MACHINE\00", align 1
@board_type.types = internal unnamed_addr constant [18 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr null, ptr @.str.43, ptr @.str.44], align 16
@.str.30 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"A+\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"B+\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"2B\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"CM1\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"3B\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Zero\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"CM3\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Zero W\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"3B+\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"3A+\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"CM3+\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"4B\00", align 1
@__PRETTY_FUNCTION__.board_type = private unnamed_addr constant [33 x i8] c"const char *board_type(uint32_t)\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"raspi0-machine\00", align 1
@arm_machine_interfaces = external constant [0 x %struct.InterfaceInfo], align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"raspi1ap-machine\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"raspi2b-machine\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"raspi3ap-machine\00", align 1
@aarch64_machine_interfaces = external constant [0 x %struct.InterfaceInfo], align 8
@.str.50 = private unnamed_addr constant [16 x i8] c"raspi3b-machine\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@raspi_machine_types = internal constant [7 x { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr }] [{ ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.46, ptr @.str.29, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @raspi0_machine_class_init, ptr null, ptr null, ptr @arm_machine_interfaces }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.47, ptr @.str.29, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @raspi1ap_machine_class_init, ptr null, ptr null, ptr @arm_machine_interfaces }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.48, ptr @.str.29, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @raspi2b_machine_class_init, ptr null, ptr null, ptr @arm_machine_interfaces }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.49, ptr @.str.29, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @raspi3ap_machine_class_init, ptr null, ptr null, ptr @aarch64_machine_interfaces }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.50, ptr @.str.29, i64 0, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @raspi3b_machine_class_init, ptr null, ptr null, ptr @aarch64_machine_interfaces }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.29, ptr @.str.22, i64 987184, i64 0, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.22, ptr @.str.51, i64 624, i64 0, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, i64 408, ptr null, ptr null, ptr null, ptr null }], align 16
@.str.53 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE_CLASS = private unnamed_addr constant [14 x i8] c"MACHINE_CLASS\00", align 1
@__func__.RASPI_BASE_MACHINE_CLASS = private unnamed_addr constant [25 x i8] c"RASPI_BASE_MACHINE_CLASS\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_do_qemu_init_raspi_machine_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 268435456, 34359738369) i64 @board_ram_size(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 8388608
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 77, ptr noundef nonnull @__PRETTY_FUNCTION__.board_ram_size) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 20
  %i.c = and i32 %i.b, 7
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 268435456, %i.d
  ret i64 %i.e
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @board_soc_type(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 12
  %i.b = and i32 %i.a, 15                         ; 2 uses
  %i.c = and i32 %0, 8388608
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 85, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %i.b, 4
  br i1 %i.d, label %board_processor_id.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

board_processor_id.exit:                          ; preds = %bb.c
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @soc_property, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 16
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @raspi_base_machine_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #6
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 39, ptr noundef nonnull @__func__.RASPI_BASE_MACHINE_GET_CLASS) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = and i32 %i.d, 8388608
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %board_ram_size.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 77, ptr noundef nonnull @__PRETTY_FUNCTION__.board_ram_size) #5
  unreachable

board_ram_size.exit:                              ; preds = %bb.a
  %i.f = lshr i32 %i.d, 20
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 268435456, %i.h          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.k, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %board_ram_size.exit
  %i.l = tail call ptr @size_to_str(i64 noundef %i.i) #6 ; 2 uses
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.2, ptr noundef %i.l) #6
  tail call void @g_free(ptr noundef %i.l) #6
  tail call void @exit(i32 noundef 1) #7
  unreachable

bb.d:                                             ; preds = %board_ram_size.exit
  %i.m = tail call ptr @get_system_memory() #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @memory_region_add_subregion_overlap(ptr noundef %i.m, i64 noundef 0, ptr noundef %i.o, i32 noundef 0) #6
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = tail call ptr @object_property_add_const_link(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %i.p) #6 ; 0 uses
  %i.r = zext i32 %i.d to i64
  %i.s = tail call zeroext i1 @object_property_set_int(ptr noundef %1, ptr noundef nonnull @.str.4, i64 noundef %i.r, ptr noundef nonnull @error_abort) #6 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call zeroext i1 @object_property_set_str(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %i.u, ptr noundef nonnull @error_abort) #6 ; 0 uses
  %i.w = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.x = tail call zeroext i1 @qdev_realize(ptr noundef %i.w, ptr noundef null, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.y = tail call ptr @drive_get(i32 noundef 6, i32 noundef 0, i32 noundef 0) #6 ; 2 uses
  %.not43 = icmp eq ptr %i.y, null
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call ptr @blk_by_legacy_dinfo(ptr noundef nonnull %i.y) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.z, %bb.e ], [ null, %bb.d ]
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.ac = tail call ptr @qdev_get_child_bus(ptr noundef %i.ab, ptr noundef nonnull @.str.6) #6 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7) #6
  tail call void @exit(i32 noundef 1) #7
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call ptr @qdev_new(ptr noundef nonnull @.str.8) #6 ; 2 uses
  %i.af = tail call zeroext i1 @qdev_prop_set_drive_err(ptr noundef %i.ae, ptr noundef nonnull @.str.9, ptr noundef %i.aa, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.ag = tail call zeroext i1 @qdev_realize_and_unref(ptr noundef %i.ae, ptr noundef nonnull %i.ac, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.ah = tail call i64 @object_property_get_uint(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @error_abort) #6 ; 2 uses
  %i.ai = tail call i64 @object_property_get_uint(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @error_abort) #6
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = sub i64 %i.i, %i.ah
  %i.am = trunc i64 %i.al to i32
  %.0 = select i1 %i.ak, i32 %i.am, i32 %i.aj
  %i.an = trunc i64 %i.ah to i32
  %i.ao = sub i32 1073741824, %i.an
  %i.ap = tail call i32 @llvm.umin.i32(i32 %.0, i32 %i.ao)
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i32 %i.d, 12
  %i.as = and i32 %i.ar, 15                       ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 4
  br i1 %i.at, label %board_processor_id.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

board_processor_id.exit:                          ; preds = %bb.h
  %i.au = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 39, ptr noundef nonnull @__func__.RASPI_BASE_MACHINE) #6 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 400 ; 2 uses
  store i64 %i.aq, ptr %i.av, align 8
  %i.aw = icmp samesign ult i32 %i.as, 2          ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %board_processor_id.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 592
  store i64 1056, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 600
  store ptr @write_board_setup, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 608
  store i8 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 508
  store i8 1, ptr %i.ba, align 4
  %.not.i45 = icmp eq i32 %i.as, 0
  br i1 %.not.i45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %board_processor_id.exit
  %write_smpboot64.sink.i = phi ptr [ @write_smpboot, %bb.j ], [ @write_smpboot64, %board_processor_id.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 480
  store i64 768, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 520
  store ptr %write_smpboot64.sink.i, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 528
  store ptr @reset_secondary, ptr %i.bd, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not28.i = icmp eq ptr %i.bf, null
  br i1 %.not28.i, label %setup_boot.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = select i1 %i.aw, i64 32768, i64 524288  ; 3 uses
  %i.bh = sub nsw i64 %i.aq, %i.bg
  %i.bi = tail call i64 @load_image_targphys(ptr noundef nonnull %i.bf, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef null) #6
  %i.bj = and i64 %i.bi, 2147483648
  %.not29.i = icmp eq i64 %i.bj, 0
  br i1 %.not29.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.be, align 8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.26, ptr noundef %i.bk) #6
  tail call void @exit(i32 noundef 1) #7
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  store i64 %i.bg, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 584
  store i8 1, ptr %i.bm, align 8
  br label %setup_boot.exit

setup_boot.exit:                                  ; preds = %bb.l, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @arm_load_kernel(ptr noundef nonnull %i.bn, ptr noundef nonnull %0, ptr noundef nonnull %i.av) #6
  ret void
}

declare ptr @size_to_str(i64 noundef) local_unnamed_addr #2

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare void @memory_region_add_subregion_overlap(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_system_memory() local_unnamed_addr #2

declare ptr @object_property_add_const_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @object_property_set_int(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @object_property_set_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @qdev_realize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @drive_get(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blk_by_legacy_dinfo(ptr noundef) local_unnamed_addr #2

declare ptr @qdev_get_child_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qdev_new(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @qdev_prop_set_drive_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @qdev_realize_and_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @object_property_get_uint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @raspi_machine_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__func__.RASPI_MACHINE) #6
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 39, ptr noundef nonnull @__func__.RASPI_BASE_MACHINE) #6
  %i.c = tail call ptr @object_get_class(ptr noundef %0) #6
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 39, ptr noundef nonnull @__func__.RASPI_BASE_MACHINE_GET_CLASS) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i32 3138, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = and i32 %i.h, 15                         ; 2 uses
  %i.j = and i32 %i.g, 8388608
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 85, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %i.i, 4
  br i1 %i.k, label %board_soc_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

board_soc_type.exit:                              ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 624 ; 2 uses
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @soc_property, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 16
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.l, i64 noundef 986560, ptr noundef %i.o) #6
  tail call void @raspi_base_machine_init(ptr noundef %0, ptr noundef nonnull %i.l)
  ret void
}

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @raspi_machine_class_common_init(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 8388608
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107, ptr noundef nonnull @__PRETTY_FUNCTION__.board_type) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 4
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = icmp samesign ugt i32 %i.c, 17
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = shl nuw nsw i64 1, %i.e
  %i.g = and i64 %i.f, 34944
  %.not7.not.i = icmp eq i64 %i.g, 0
  br i1 %.not7.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @board_type.types, i64 %i.e
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.e ], [ @.str.45, %bb.d ], [ @.str.45, %bb.c ]
  %i.j = and i32 %1, 15
  %i.k = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.13, ptr noundef %.0.i, i32 noundef %i.j) #6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 6, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = or i8 %i.o, 14
  store i8 %i.p, ptr %i.n, align 4
  %i.q = lshr i32 %1, 12
  %i.r = and i32 %i.q, 15                         ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 4
  br i1 %i.s, label %board_ram_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__.board_processor_id) #5
  unreachable

board_ram_size.exit:                              ; preds = %bb.f
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @soc_property, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.w, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.w, ptr %i.z, align 8
  %i.aa = lshr i32 %1, 20
  %i.ab = and i32 %i.aa, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 268435456, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @.str.3, ptr %i.af, align 8
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_do_qemu_init_raspi_machine_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @do_qemu_init_raspi_machine_types, i32 noundef 4) #6
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_raspi_machine_types() #0 {
bb.a:
  tail call void @type_register_static_array(ptr noundef nonnull @raspi_machine_types, i32 noundef 7) #6
end_hunk_0
