Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sysbus-fdt?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PlatformBusFDTData = type { ptr, i32, ptr, ptr }

@__const.platform_bus_add_all_fdt_nodes.platcomp = private unnamed_addr constant [25 x i8] c"qemu,platform\00simple-bus\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"fdt\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"../hw/core/sysbus-fdt.c\00", align 1
@__PRETTY_FUNCTION__.platform_bus_add_all_fdt_nodes = private unnamed_addr constant [79 x i8] c"void platform_bus_add_all_fdt_nodes(void *, const char *, hwaddr, hwaddr, int)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"/platform-bus@%lx\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"platform-bus-device\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/platform-bus.h\00", align 1
@__func__.PLATFORM_BUS_DEVICE = private unnamed_addr constant [20 x i8] c"PLATFORM_BUS_DEVICE\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Device %s can not be dynamically instantiated\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"tpm-tis-device\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"arm-smmuv3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ramfb\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"uefi-vars-sysbus\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sbsa-gwdt\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%s/tpm_tis@%lx\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"tcg,tpm-tis-mmio\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%s/%s@%lx\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"qemu-uefi-vars\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"qemu,uefi-vars\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @platform_bus_add_all_fdt_nodes(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %i.c = alloca [1 x i32], align 4                ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %5 = alloca %struct.PlatformBusFDTData, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.a, ptr noundef nonnull align 16 dereferenceable(25) @__const.platform_bus_add_all_fdt_nodes.platcomp, i64 25, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 188, ptr noundef nonnull @__PRETTY_FUNCTION__.platform_bus_add_all_fdt_nodes) #9
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.e = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.2, i64 noundef %2) #8 ; 8 uses
  %i.f = tail call i32 @qemu_fdt_add_subnode(ptr noundef nonnull %0, ptr noundef %i.e) #8 ; 0 uses
  %i.g = call i32 @qemu_fdt_setprop(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 25) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 16777216, ptr %i.b, align 4
  %i.h = call i32 @qemu_fdt_setprop(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, i32 noundef 4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 16777216, ptr %i.c, align 4
  %i.i = call i32 @qemu_fdt_setprop(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.c, i32 noundef 4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = lshr i64 %2, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = trunc i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.p = trunc i64 %3 to i32
  store i32 0, ptr %i.d, align 16
  %i.q = call noundef i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.q, ptr %i.j, align 4
  %i.r = call noundef i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.r, ptr %i.m, align 8
  %i.s = call noundef i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %i.s, ptr %i.o, align 4
  %i.t = call i32 @qemu_fdt_setprop(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.d, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.u = call i32 @qemu_fdt_setprop_phandle(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.8, ptr noundef %1) #8 ; 0 uses
  %i.v = call ptr @sysbus_get_default() #8
  %i.w = call ptr @qdev_find_recursive(ptr noundef %i.v, ptr noundef nonnull @.str.9) #8
  %i.x = call ptr @object_dynamic_cast_assert(ptr noundef %i.w, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 30, ptr noundef nonnull @__func__.PLATFORM_BUS_DEVICE) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %0, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.x, ptr %i.ab, align 8
  call void @foreach_dynamic_sysbus_device(ptr noundef nonnull @add_fdt_node, ptr noundef nonnull %5) #8
  call void @g_free(ptr noundef %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @qemu_fdt_add_subnode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @qemu_fdt_setprop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @qemu_fdt_setprop_phandle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @qdev_find_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sysbus_get_default() local_unnamed_addr #3

declare void @foreach_dynamic_sysbus_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @add_fdt_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [4 x i64], align 16                 ; 7 uses
  %3 = alloca [2 x i32], align 4                  ; 5 uses
  %i.a = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(15) @.str.13) #10
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %call.0, label %bb.c

call.0:                                           ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %1, align 8                  ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %9 = tail call i64 @platform_bus_get_mmio_addr(ptr noundef %5, ptr noundef %0, i32 noundef 0) #8 ; 2 uses
  %10 = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, ptr noundef %8, i64 noundef %9) #8 ; 4 uses
  %11 = tail call i32 @qemu_fdt_add_subnode(ptr noundef %6, ptr noundef %10) #8 ; 0 uses
  %12 = tail call i32 @qemu_fdt_setprop_string(ptr noundef %6, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #8 ; 0 uses
  %13 = trunc i64 %9 to i32
  %14 = tail call noundef i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %3, align 4
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 5242880, ptr %15, align 4
  %16 = call i32 @qemu_fdt_setprop(ptr noundef %6, ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef 8) #8 ; 0 uses
  call void @g_free(ptr noundef %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.critedge

bb.b:                                             ; preds = %bb.e
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %1, align 8                 ; 3 uses
  %22 = tail call i64 @platform_bus_get_mmio_addr(ptr noundef %18, ptr noundef %0, i32 noundef 0) #8 ; 2 uses
  %23 = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.22, ptr noundef %20, ptr noundef nonnull @.str.23, i64 noundef %22) #8 ; 4 uses
  %i.c = tail call i32 @qemu_fdt_add_subnode(ptr noundef %21, ptr noundef %23) #8 ; 0 uses
  %24 = tail call i32 @qemu_fdt_setprop_string(ptr noundef %21, ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 1, ptr %2, align 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %22, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %26, align 16
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 32, ptr %27, align 8
  %28 = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %21, ptr noundef %23, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @g_free(ptr noundef %23) #8
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(11) @.str.14) #10
  %.not.i.2.a = icmp eq i32 %i.e, 0
  br i1 %.not.i.2.a, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(6) @.str.15) #10
  %.not.i.3.a = icmp eq i32 %i.g, 0
  br i1 %.not.i.3.a, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(17) @.str.16) #10
  %.not.i.4.a = icmp eq i32 %i.i, 0
  br i1 %.not.i.4.a, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @object_get_typename(ptr noundef %0) #8
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(10) @.str.17) #10
  %.not.i.5 = icmp eq i32 %29, 0
  br i1 %.not.i.5, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %30 = tail call ptr @object_get_typename(ptr noundef %0) #8 ; 0 uses
  %i.k = tail call fastcc ptr @DEVICE(ptr noundef %0)
  %i.l = tail call ptr @qdev_fw_name(ptr noundef %i.k) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.12, ptr noundef %i.l) #8
  tail call void @exit(i32 noundef 1) #11
  unreachable

.critedge:                                        ; preds = %call.0, %bb.b, %bb.c, %bb.d, %bb.f
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @error_report(ptr noundef, ...) local_unnamed_addr #3

declare ptr @qdev_fw_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @DEVICE(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #8
  ret ptr %i.a
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare i64 @platform_bus_get_mmio_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @qemu_fdt_setprop_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
