Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/intel64_start?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_acpi_rsdp = dso_local local_unnamed_addr global i64 0, align 8
@_sbss = external dso_local global [0 x i8], align 1
@_ebss = external dso_local global [0 x i8], align 1
@g_idle_topstack = external dso_local local_unnamed_addr constant [0 x i64], align 8
@_etbss = external dso_local global [0 x i8], align 1
@_stdata = external dso_local global [0 x i8], align 1
@g_mb_magic = dso_local local_unnamed_addr global i32 0, section ".loader.bss", align 4
@g_mb_info_struct = dso_local local_unnamed_addr global i32 0, section ".loader.bss", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone noreturn nounwind optsize uwtable
define dso_local void @__nxstart() local_unnamed_addr #2 {
bb.a:
  tail call void @x86_64_check_and_enable_capability() #6
  %i.a = icmp ult ptr @_sbss, @_ebss
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 ptrtoaddr (ptr @_ebss to i64), i64 add (i64 ptrtoaddr (ptr @_sbss to i64), i64 8))
  %0 = add i64 %umax, xor (i64 ptrtoaddr (ptr @_sbss to i64), i64 -1)
  %i.b = and i64 %0, -8
  %i.c = add i64 %i.b, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 @_sbss, i8 0, i64 %i.c, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = load i64, ptr @g_idle_topstack, align 8
  %i.e = add i64 %i.d, add (i64 sub (i64 ptrtoint (ptr @_etbss to i64), i64 ptrtoint (ptr @_stdata to i64)), i64 -4194264)
  tail call void asm sideeffect "wrfsbase $0", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.e) #7, !srcloc !8
  tail call void @intel64_lowsetup() #6
  %i.f = load i32, ptr @g_mb_magic, align 4
  %.not.i = icmp eq i32 %i.f, 920085129
  br i1 %.not.i, label %bb.b, label %x86_64_mb2_config.exit

bb.b:                                             ; preds = %._crit_edge
  %i.g = load i32, ptr @g_mb_info_struct, align 4
  %i.h = add i32 %i.g, 8
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %bb.d ] ; 4 uses
  %i.k = load i32, ptr %.0.i, align 4
  switch i32 %i.k, label %bb.d [
    i32 0, label %x86_64_mb2_config.exit
    i32 15, label %.sink.split.i
    i32 14, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr @g_acpi_rsdp, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, 7
  %i.q = and i32 %i.p, -8
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  br label %bb.c, !llvm.loop !7

x86_64_mb2_config.exit:                           ; preds = %bb.c, %._crit_edge
  %i.t = load i64, ptr @g_acpi_rsdp, align 8
  %i.u = tail call i32 @acpi_init(i64 noundef %i.t) #6 ; 0 uses
  tail call void @__revoke_low_memory() #6
  tail call void @x86_64_cpu_init() #6
  tail call void @x86_64_boardinitialize() #6
  tail call void @x86_64_earlyserialinit() #6
  tail call void @x86_64_timer_calibrate_freq() #6
  tail call void @x86_64_cpu_priv_set(i8 noundef zeroext 0) #6
  tail call void @nx_start() #6
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %x86_64_mb2_config.exit
  br label %bb.e
}

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_check_and_enable_capability() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @intel64_lowsetup() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @acpi_init(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @__revoke_low_memory() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_cpu_init() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_boardinitialize() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_earlyserialinit() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_timer_calibrate_freq() local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @x86_64_cpu_priv_set(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @nx_start() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone nounwind optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !9}
!8 = !{i64 596660}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
