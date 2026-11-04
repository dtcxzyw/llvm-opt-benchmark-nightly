Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/apm?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i8, ptr }

@.str = private unnamed_addr constant [10 x i8] c"APM State\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"apmc\00", align 1
@vmstate_info_uint8 = external constant %struct.VMStateInfo, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"apms\00", align 1
@.compoundliteral = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.1, i64 0, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.2, i64 1, i64 1, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_apm = dso_local local_unnamed_addr constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"apm-io\00", align 1
@apm_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @apm_ioport_readb, ptr @apm_ioport_writeb, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon zeroinitializer, { i32, i32, i8, [3 x i8] } { i32 1, i32 1, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_APM_IO_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.5 = private unnamed_addr constant [39 x i8] c"apm_io_read read addr=0x%x val=0x%02x\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@_TRACE_APM_IO_WRITE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.6 = private unnamed_addr constant [41 x i8] c"apm_io_write write addr=0x%x val=0x%02x\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @apm_init(ptr noundef %0, ptr noundef initializes((8, 24)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %3, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull @apm_ops, ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef 2) #2
  %i.d = tail call ptr @pci_address_space_io(ptr noundef %0) #2
  tail call void @memory_region_add_subregion(ptr noundef %i.d, i64 noundef 178, ptr noundef nonnull %i.c) #2
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @pci_address_space_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 256) i64 @apm_ioport_readb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = and i64 %1, 1                            ; 2 uses
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %.0.in = load i8, ptr %.0.in.in, align 1        ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_apm_io_read.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_APM_IO_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %trace_apm_io_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %trace_apm_io_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i8 %.0.in to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, i32 noundef %i.b, i32 noundef %i.g) #2
  br label %trace_apm_io_read.exit

trace_apm_io_read.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = zext i8 %.0.in to i64
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @apm_ioport_writeb(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %4 = and i64 %1, 1                              ; 2 uses
  %5 = trunc nuw nsw i64 %4 to i32
  %i.a = trunc i64 %2 to i8                       ; 2 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_apm_io_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_APM_IO_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.c, 0
  br i1 %.not2.i, label %trace_apm_io_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %trace_apm_io_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %2 to i32
  %i.g = and i32 %i.f, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %i.g) #2
  br label %trace_apm_io_write.exit

trace_apm_io_write.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %bb.e, label %bb.g

bb.e:                                             ; preds = %trace_apm_io_write.exit
  store i8 %i.a, ptr %0, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = trunc i64 %2 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16
  tail call void %i.i(i32 noundef %i.j, ptr noundef %i.l) #2
  br label %bb.h

bb.g:                                             ; preds = %trace_apm_io_write.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.m, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind }

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
end_hunk_0
