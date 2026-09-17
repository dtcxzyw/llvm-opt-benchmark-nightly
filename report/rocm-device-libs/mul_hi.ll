Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/mul_hi?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden range(i32 -1073741824, 1073741825) i32 @__ockl_mul_hi_i32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = sext i32 %0 to i64
  %3 = sext i32 %1 to i64
  %4 = mul nsw i64 %3, %2
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden range(i32 0, -1) i32 @__ockl_mul_hi_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = zext i32 %0 to i64
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %2
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden range(i64 -4611686020574871552, 4611686022722355199) i64 @__ockl_mul_hi_i64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 4294967295                   ; 2 uses
  %i.b = ashr i64 %0, 32                          ; 2 uses
  %i.c = and i64 %1, 4294967295                   ; 2 uses
  %i.d = ashr i64 %1, 32                          ; 2 uses
  %i.e = mul nuw i64 %i.c, %i.a
  %i.f = mul nsw i64 %i.c, %i.b
  %i.g = lshr i64 %i.e, 32
  %i.h = add nsw i64 %i.g, %i.f                   ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = ashr i64 %i.h, 32
  %i.k = mul nsw i64 %i.d, %i.a
  %i.l = add nsw i64 %i.i, %i.k
  %i.m = mul nsw i64 %i.d, %i.b
  %i.n = add nsw i64 %i.j, %i.m
  %i.o = ashr i64 %i.l, 32
  %i.p = add nsw i64 %i.n, %i.o
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden range(i64 0, -1) i64 @__ockl_mul_hi_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = zext i64 %0 to i128
  %3 = zext i64 %1 to i128
  %4 = mul nuw i128 %3, %2
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64
  ret i64 %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
end_hunk_0
