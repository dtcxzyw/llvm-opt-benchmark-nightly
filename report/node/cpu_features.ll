begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arm_cpu_enable_crc32 = hidden local_unnamed_addr global i32 0, align 4
@arm_cpu_enable_pmull = hidden local_unnamed_addr global i32 0, align 4
@x86_cpu_enable_sse2 = hidden local_unnamed_addr global i32 0, align 4
@x86_cpu_enable_ssse3 = hidden local_unnamed_addr global i32 0, align 4
@x86_cpu_enable_simd = hidden local_unnamed_addr global i32 0, align 4
@x86_cpu_enable_avx512 = hidden local_unnamed_addr global i32 0, align 4
@riscv_cpu_enable_rvv = hidden local_unnamed_addr global i32 0, align 4
@riscv_cpu_enable_vclmul = hidden local_unnamed_addr global i32 0, align 4
@cpu_check_inited_once = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define hidden void @cpu_check_features() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @cpu_check_inited_once, ptr noundef nonnull @_cpu_check_features) #3 ; 0 uses
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_cpu_check_features() #2 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #4, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 2 ; 3 uses
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 3
  %i.d = and i32 %i.c, 67108864                   ; 2 uses
  %i.e = and i32 %i.b, 512
  %i.f = and i32 %i.b, 1048576
  store i32 %i.d, ptr @x86_cpu_enable_sse2, align 4, !tbaa !5
  store i32 %i.e, ptr @x86_cpu_enable_ssse3, align 4, !tbaa !5
  %i.g = icmp ne i32 %i.d, 0
  %i.h = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  %i.i = lshr i32 %i.b, 1
  %.lobit = and i32 %i.i, 1
  %i.j = select i1 %or.cond, i32 %.lobit, i32 0
  store i32 %i.j, ptr @x86_cpu_enable_simd, align 4, !tbaa !5
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 2148248941, i64 2148249023, i64 2148249104}
end_hunk_0
