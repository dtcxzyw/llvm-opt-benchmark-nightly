Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pc_sysfw?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"system.flash0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pflash0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"system.flash1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pflash1\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"PC_MACHINE_GET_CLASS(pcms)->pci_enabled\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"../hw/i386/pc_sysfw.c\00", align 1
@__PRETTY_FUNCTION__.pc_system_flash_cleanup_unused = private unnamed_addr constant [54 x i8] c"void pc_system_flash_cleanup_unused(PCMachineState *)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pflash%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bios.bin\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"pflash%d requires pflash%d\00", align 1
@kvm_allowed = external local_unnamed_addr global i8, align 1
@kvm_readonly_mem_allowed = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"pflash with kvm requires KVM readonly memory support\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"pflash devices cannot be configured when using IGVM\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"generic-pc-machine\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/hw/i386/pc.h\00", align 1
@__func__.PC_MACHINE_GET_CLASS = private unnamed_addr constant [21 x i8] c"PC_MACHINE_GET_CLASS\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"cfi.pflash01\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"sector-length\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/block/flash.h\00", align 1
@__func__.PFLASH_CFI01 = private unnamed_addr constant [13 x i8] c"PFLASH_CFI01\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"x86-machine\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/hw/i386/x86.h\00", align 1
@__func__.X86_MACHINE = private unnamed_addr constant [12 x i8] c"X86_MACHINE\00", align 1
@__PRETTY_FUNCTION__.pc_system_flash_map = private unnamed_addr constant [59 x i8] c"void pc_system_flash_map(PCMachineState *, MemoryRegion *)\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"can't get size of block device %s: %s\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"system firmware block device %s has invalid size %ld\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"its size must be a non-zero multiple of 0x%x\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"combined size of system firmware exceeds %lu bytes\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"num-blocks\00", align 1
@error_fatal = external global ptr, align 8
@.str.28 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"isa-bios\00", align 1
@current_machine = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE = private unnamed_addr constant [8 x i8] c"MACHINE\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.34 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@.str.35 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.33, ptr @.str.34, i32 90, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.35, ptr @.str.34, i32 90, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pc_system_flash_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @qdev_new(ptr noundef nonnull @.str.13) #7 ; 7 uses
  tail call void @qdev_prop_set_uint64(ptr noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef 4096) #7
  tail call void @qdev_prop_set_uint8(ptr noundef %i.f, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #7
  tail call void @qdev_prop_set_string(ptr noundef %i.f, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str) #7
  %i.g = tail call ptr @object_property_add_child(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.f) #7 ; 0 uses
  %i.h = tail call ptr @object_property_add_alias(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %i.f, ptr noundef nonnull @.str.17) #7 ; 0 uses
  tail call void @object_unref(ptr noundef %i.f) #7
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef 12, ptr noundef nonnull @__func__.PFLASH_CFI01) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call ptr @qdev_new(ptr noundef nonnull @.str.13) #7 ; 7 uses
  tail call void @qdev_prop_set_uint64(ptr noundef %i.k, ptr noundef nonnull @.str.14, i64 noundef 4096) #7
  tail call void @qdev_prop_set_uint8(ptr noundef %i.k, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #7
  tail call void @qdev_prop_set_string(ptr noundef %i.k, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #7
  %i.l = tail call ptr @object_property_add_child(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %i.k) #7 ; 0 uses
  %i.m = tail call ptr @object_property_add_alias(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.k, ptr noundef nonnull @.str.17) #7 ; 0 uses
  tail call void @object_unref(ptr noundef %i.k) #7
  %i.n = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef 12, ptr noundef nonnull @__func__.PFLASH_CFI01) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pc_system_flash_cleanup_unused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.g, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load atomic i8, ptr %i.i acquire, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__.pc_system_flash_cleanup_unused) #8
  unreachable

bb.c:                                             ; preds = %.preheader
  %i.l = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.6, i32 noundef 0) #7 ; 2 uses
  tail call void @object_property_del(ptr noundef nonnull %0, ptr noundef %i.l) #7
  tail call void @g_free(ptr noundef %i.l) #7
  %i.m = load ptr, ptr %i.f, align 8
  tail call void @object_unparent(ptr noundef %i.m) #7
  store ptr null, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.o, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load atomic i8, ptr %i.q acquire, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.6, i32 noundef 1) #7 ; 2 uses
  tail call void @object_property_del(ptr noundef nonnull %0, ptr noundef %i.t) #7
  tail call void @g_free(ptr noundef %i.t) #7
  %i.u = load ptr, ptr %i.n, align 8
  tail call void @object_unparent(ptr noundef %i.u) #7
  store ptr null, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @object_property_del(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare void @object_unparent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pc_system_firmware_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #7
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader41, label %bb.b

.preheader41:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @drive_get(i32 noundef 4, i32 noundef 0, i32 noundef 0) #7
  tail call void @pflash_cfi01_legacy_drive(ptr noundef %i.g, ptr noundef %i.h) #7
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = tail call ptr @pflash_cfi01_get_blk(ptr noundef %i.i) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @drive_get(i32 noundef 4, i32 noundef 0, i32 noundef 1) #7
  tail call void @pflash_cfi01_legacy_drive(ptr noundef %i.l, ptr noundef %i.m) #7
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = tail call ptr @pflash_cfi01_get_blk(ptr noundef %i.n) #7
  %.not49 = icmp ne ptr %i.o, null
  %.not38 = icmp eq ptr %i.j, null                ; 2 uses
  %or.cond51 = select i1 %.not49, i1 %.not38, i1 false
  br i1 %or.cond51, label %bb.e, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1088
  %i.r = load ptr, ptr %i.q, align 16
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  tail call void @x86_bios_rom_init(ptr noundef %i.s, ptr noundef nonnull @.str.7, ptr noundef %1, i1 noundef zeroext true) #7
  br label %.loopexit

bb.d:                                             ; preds = %.preheader41
  br i1 %.not38, label %bb.f, label %.thread

bb.e:                                             ; preds = %.preheader41
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 0) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1088
  %i.v = load ptr, ptr %i.u, align 16
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.g, label %pc_system_flash_map.exit

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  tail call void @x86_bios_rom_init(ptr noundef %i.w, ptr noundef nonnull @.str.7, ptr noundef %1, i1 noundef zeroext false) #7
  br label %pc_system_flash_map.exit

.thread:                                          ; preds = %bb.d
  %i.x = load i8, ptr @kvm_allowed, align 1, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  %.not = xor i1 %i.y, true
  %i.z = load i8, ptr @kvm_readonly_mem_allowed, align 1, !range !7
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.9) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.i:                                             ; preds = %.thread
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  %i.ac = tail call ptr @object_get_class(ptr noundef nonnull %0) #7
  %i.ad = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ac, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7
  %i.ae = tail call ptr @object_get_class(ptr noundef nonnull %0) #7
  %i.af = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ae, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE_GET_CLASS) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 408
  %i.ah = load i8, ptr %i.ag, align 8, !range !7, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 447
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 720 ; 6 uses
  %i.am = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.an = tail call ptr @pflash_cfi01_get_blk(ptr noundef %i.am) #7 ; 4 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %pc_system_flash_map.exit, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__.pc_system_flash_map) #8
  unreachable

bb.k:                                             ; preds = %.preheader.i
  %i.ao = tail call i64 @blk_getlength(ptr noundef nonnull %i.an) #7 ; 9 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.z, %bb.k
  %.lcssa69.i = phi ptr [ %i.an, %bb.k ], [ %i.ce, %bb.z ]
  %.lcssa.i = phi i64 [ %i.ao, %bb.k ], [ %i.cf, %bb.z ]
  %i.aq = tail call ptr @blk_name(ptr noundef nonnull %.lcssa69.i) #7
  %i.ar = trunc i64 %.lcssa.i to i32
  %i.as = sub i32 0, %i.ar
  %i.at = tail call ptr @strerror(i32 noundef %i.as) #7
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.23, ptr noundef %i.aq, ptr noundef %i.at) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = icmp ne i64 %i.ao, 0
  %i.av = and i64 %i.ao, 4095
  %i.aw = icmp eq i64 %i.av, 0
  %or.cond.i = and i1 %i.au, %i.aw
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.lcssa70.i = phi ptr [ %i.an, %bb.m ], [ %i.ce, %bb.aa ]
  %.lcssa66.i = phi i64 [ %i.ao, %bb.m ], [ %i.cf, %bb.aa ]
  %i.ax = tail call ptr @blk_name(ptr noundef nonnull %.lcssa70.i) #7
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.24, ptr noundef %i.ax, i64 noundef %.lcssa66.i) #7
  tail call void (ptr, ...) @info_report(ptr noundef nonnull @.str.25, i32 noundef 4096) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ay = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.az = icmp ugt i64 %i.ao, %i.ay
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.ab, %bb.o
  %i.ba = phi i64 [ %i.ay, %bb.o ], [ %.pre74.i, %bb.ab ]
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.26, i64 noundef %i.ba) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bb = sub nsw i64 4294967296, %i.ao           ; 2 uses
  %i.bc = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.am, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.bd = lshr exact i64 %i.ao, 12
  %i.be = trunc i64 %i.bd to i32
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bc, ptr noundef nonnull @.str.27, i32 noundef %i.be) #7
  %i.bf = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.am, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.bg = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.bf, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.bh = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.am, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  tail call void @sysbus_mmio_map(ptr noundef %i.bh, i32 noundef 0, i64 noundef %i.bb) #7
  %i.bi = tail call ptr @pflash_cfi01_get_memory(ptr noundef %i.am) #7 ; 5 uses
  %i.bj = load i8, ptr %i.ak, align 1, !range !7, !noundef !8
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @x86_isa_bios_init(ptr noundef nonnull %i.al, ptr noundef %1, ptr noundef %i.bi, i1 noundef zeroext true) #7
  br label %pc_isa_bios_init.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bl = tail call i64 @memory_region_size(ptr noundef %i.bi) #7 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 131072) ; 5 uses
  %i.bn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #7
  %i.bo = tail call zeroext i1 @machine_require_guest_memfd(ptr noundef %i.bn) #7
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = tail call zeroext i1 @memory_region_init_ram_guest_memfd(ptr noundef nonnull %i.al, ptr noundef null, ptr noundef nonnull @.str.30, i64 noundef %i.bm, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bq = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.al, ptr noundef null, ptr noundef nonnull @.str.30, i64 noundef %i.bm, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.br = sub nuw nsw i64 1048576, %i.bm
  tail call void @memory_region_add_subregion_overlap(ptr noundef %1, i64 noundef %i.br, ptr noundef nonnull %i.al, i32 noundef 1) #7
  %i.bs = tail call ptr @memory_region_get_ram_ptr(ptr noundef %i.bi) #7
  %i.bt = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.al) #7
  %i.bu = sub i64 %i.bl, %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bt, ptr noundef nonnull align 1 %i.bv, i64 noundef range(i64 -2147483648, 2147483648) %i.bm, i1 noundef false) #7
  %i.bw = load ptr, ptr @current_machine, align 8
  %i.bx = tail call zeroext i1 @machine_require_guest_memfd(ptr noundef %i.bw) #7
  br i1 %i.bx, label %pc_isa_bios_init.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @memory_region_set_readonly(ptr noundef nonnull %i.al, i1 noundef zeroext true) #7
  br label %pc_isa_bios_init.exit.i

pc_isa_bios_init.exit.i:                          ; preds = %bb.w, %bb.v, %bb.r
  %i.by = tail call zeroext i1 @sev_enabled() #7
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %pc_isa_bios_init.exit.i
  %i.bz = tail call ptr @memory_region_get_ram_ptr(ptr noundef %i.bi) #7
  %i.ca = tail call i64 @memory_region_size(ptr noundef %i.bi) #7
  %i.cb = trunc i64 %i.ca to i32
  tail call void @x86_firmware_configure(i64 noundef %i.bb, ptr noundef %i.bz, i32 noundef %i.cb) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %pc_isa_bios_init.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cd = load ptr, ptr %i.cc, align 8            ; 4 uses
  %i.ce = tail call ptr @pflash_cfi01_get_blk(ptr noundef %i.cd) #7 ; 4 uses
  %.not.1.i = icmp eq ptr %i.ce, null
  br i1 %.not.1.i, label %pc_system_flash_map.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = tail call i64 @blk_getlength(ptr noundef nonnull %i.ce) #7 ; 7 uses
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.l, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = icmp ne i64 %i.cf, 0
  %i.ci = and i64 %i.cf, 4095
  %i.cj = icmp eq i64 %i.ci, 0
  %or.cond.1.i = and i1 %i.ch, %i.cj
  br i1 %or.cond.1.i, label %bb.ab, label %bb.n

bb.ab:                                            ; preds = %bb.aa
  %.pre74.i = load i64, ptr %i.aj, align 8        ; 2 uses
  %i.ck = add nuw i64 %i.cf, %i.ao                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %.pre74.i
  br i1 %i.cl, label %bb.p, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = sub i64 4294967296, %i.ck
  %i.cn = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.cd, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.co = lshr exact i64 %i.cf, 12
  %i.cp = trunc i64 %i.co to i32
  tail call void @qdev_prop_set_uint32(ptr noundef %i.cn, ptr noundef nonnull @.str.27, i32 noundef %i.cp) #7
  %i.cq = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.cd, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cr = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.cq, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.cs = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.cd, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  tail call void @sysbus_mmio_map(ptr noundef %i.cs, i32 noundef 0, i64 noundef %i.cm) #7
  br label %pc_system_flash_map.exit

pc_system_flash_map.exit:                         ; preds = %bb.ac, %bb.y, %.preheader.i, %bb.f, %bb.g
  tail call void @pc_system_flash_cleanup_unused(ptr noundef nonnull %0)
  %i.ct = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1088
  %i.cv = load ptr, ptr %i.cu, align 16
  %.not36 = icmp eq ptr %i.cv, null
  br i1 %.not36, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %pc_system_flash_map.exit
  %i.cw = load ptr, ptr %i.f, align 8
  %.not37 = icmp eq ptr %i.cw, null
  br i1 %.not37, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader
  %i.cx = load ptr, ptr %i.k, align 8
  %.not37.1 = icmp eq ptr %i.cx, null
  br i1 %.not37.1, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.10) #7
  tail call void @exit(i32 noundef 1) #9
  unreachable
end_hunk_0
