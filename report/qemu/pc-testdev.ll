Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pc-testdev?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, i8, ptr }
%struct.anon.2 = type { i32, i32, i8 }

@.str = private unnamed_addr constant [11 x i8] c"pc-testdev\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"isa-device\00", align 1
@testdev_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 67072, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @testdev_class_init, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"pc-testdev-ioport\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pc-testdev-ioport-byte\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"pc-testdev-flush-page\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"pc-testdev-irq-line\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"pc-testdev-iomem\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/hw/isa/isa.h\00", align 1
@__func__.ISA_DEVICE = private unnamed_addr constant [11 x i8] c"ISA_DEVICE\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"../hw/misc/pc-testdev.c\00", align 1
@__func__.TESTDEV = private unnamed_addr constant [8 x i8] c"TESTDEV\00", align 1
@test_ioport_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.2, [4 x i8] } { ptr @test_ioport_read, ptr @test_ioport_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, %struct.anon zeroinitializer, %struct.anon.2 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@test_ioport_byte_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @test_ioport_read, ptr @test_ioport_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 1, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 1, i32 1, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@test_flush_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.2, [4 x i8] } { ptr @test_flush_page_read, ptr @test_flush_page_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.2 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@test_irq_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, %struct.anon.2, [4 x i8] } { ptr @test_irq_line_read, ptr @test_irq_line_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 1, i32 1, i8 0, [7 x i8] zeroinitializer, ptr null }, %struct.anon.2 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@test_iomem_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.2, [4 x i8] } { ptr @test_iomem_read, ptr @test_iomem_write, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, %struct.anon zeroinitializer, %struct.anon.2 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_testdev_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_testdev_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @testdev_register_types, i32 noundef 4) #9
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @testdev_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @testdev_info) #9 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @testdev_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 128
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @testdev_realizefn, ptr %i.e, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @testdev_realizefn(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 14, ptr noundef nonnull @__func__.ISA_DEVICE) #9 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 61, ptr noundef nonnull @__func__.TESTDEV) #9 ; 15 uses
  %i.c = tail call ptr @isa_address_space(ptr noundef %i.a) #9
  %i.d = tail call ptr @isa_address_space_io(ptr noundef %i.a) #9 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %i.b, ptr noundef nonnull @test_ioport_ops, ptr noundef %i.b, ptr noundef nonnull @.str.5, i64 noundef 4) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.f, ptr noundef %i.b, ptr noundef nonnull @test_ioport_byte_ops, ptr noundef %i.b, ptr noundef nonnull @.str.6, i64 noundef 4) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.g, ptr noundef %i.b, ptr noundef nonnull @test_flush_ops, ptr noundef %i.b, ptr noundef nonnull @.str.7, i64 noundef 4) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 976 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.h, ptr noundef %i.b, ptr noundef nonnull @test_irq_ops, ptr noundef %i.b, ptr noundef nonnull @.str.8, i64 noundef 24) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.i, ptr noundef %i.b, ptr noundef nonnull @test_iomem_ops, ptr noundef %i.b, ptr noundef nonnull @.str.9, i64 noundef 65536) #9
  tail call void @memory_region_add_subregion(ptr noundef %i.d, i64 noundef 224, ptr noundef nonnull %i.e) #9
  tail call void @memory_region_add_subregion(ptr noundef %i.d, i64 noundef 228, ptr noundef nonnull %i.g) #9
  tail call void @memory_region_add_subregion(ptr noundef %i.d, i64 noundef 232, ptr noundef nonnull %i.f) #9
  tail call void @memory_region_add_subregion(ptr noundef %i.d, i64 noundef 8192, ptr noundef nonnull %i.h) #9
  tail call void @memory_region_add_subregion(ptr noundef %i.c, i64 noundef 4278190080, ptr noundef nonnull %i.i) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @isa_address_space(ptr noundef) local_unnamed_addr #1

declare ptr @isa_address_space_io(ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i64 0, 4294967296) i64 @test_ioport_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = shl i32 %2, 3
  %.tr = trunc i64 %1 to i32
  %i.b = shl i32 %.tr, 3
  %i.c = and i32 %i.b, 24                         ; 2 uses
  %i.d = sub i32 32, %i.a
  %i.e = lshr i32 -1, %i.d
  %3 = shl i32 %i.e, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.g = load i32, ptr %i.f, align 16
  %4 = and i32 %i.g, %3
  %5 = lshr i32 %4, %i.c
  %i.h = zext i32 %5 to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @test_ioport_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = shl i32 %3, 3
  %.tr = trunc i64 %1 to i32
  %i.b = shl i32 %.tr, 3
  %i.c = and i32 %i.b, 24                         ; 2 uses
  %i.d = sub i32 32, %i.a
  %i.e = lshr i32 -1, %i.d
  %i.f = shl i32 %i.e, %i.c
  %i.g = xor i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.i = load i32, ptr %i.h, align 16
  %i.j = and i32 %i.i, %i.g
  %i.k = zext nneg i32 %i.c to i64
  %i.l = shl i64 %2, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = or i32 %i.j, %i.m
  store i32 %i.n, ptr %i.h, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @test_flush_page_read(ptr nofree readnone captures(none) %0, i64 %1, i32 %2) #5 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_flush_page_write(ptr nofree readnone captures(none) %0, i64 %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 4096, ptr %i.a, align 8
  %i.b = and i64 %2, -4096
  %i.c = call ptr @physical_memory_map(i64 noundef %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false) #9 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8
  %i.e = call i32 @mprotect(ptr noundef %i.c, i64 noundef %i.d, i32 noundef 0) #9 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = call i32 @mprotect(ptr noundef %i.c, i64 noundef %i.f, i32 noundef 3) #9 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8
  call void @physical_memory_unmap(ptr noundef %i.c, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare ptr @physical_memory_map(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @physical_memory_unmap(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @test_irq_line_read(ptr nofree readnone captures(none) %0, i64 %1, i32 %2) #5 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_irq_line_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 14, ptr noundef nonnull @__func__.ISA_DEVICE) #9
  %i.b = trunc i64 %1 to i32
  %i.c = tail call ptr @isa_get_irq(ptr noundef %i.a, i32 noundef %i.b) #9
  %i.d = icmp ne i64 %2, 0
  %i.e = zext i1 %i.d to i32
  tail call void @qemu_set_irq(ptr noundef %i.c, i32 noundef %i.e) #9
  ret void
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @isa_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal i64 @test_iomem_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1524
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.d = zext i32 %2 to i64
  %i.e = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 4294967296) %i.d, i64 noundef 8) #9, !alias.scope !10 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @test_iomem_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1524
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 2 uses
  %i.d = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 %i.a, i64 noundef range(i64 0, 4294967296) %i.d, i1 noundef false) #9
  %i.e = trunc i64 %2 to i8
  store i8 %i.e, ptr %i.c, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, i1 true, !"memcpy.inline"}
!8 = distinct !{!8, !7, !"memcpy.inline: argument 1"}
!9 = distinct !{!9, !7, !"memcpy.inline: argument 0"}
!10 = !{!9, !8}
end_hunk_0
