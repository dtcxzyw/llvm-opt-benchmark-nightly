begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.dtrtri_LU_single.beta_plus = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@__const.dtrtri_LU_single.beta_minus = private unnamed_addr constant [2 x double] [double -1.000000e+00, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define noundef i32 @dtrtri_LU_single(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  %i.b = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_LU_single.beta_plus, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_LU_single.beta_minus, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %.fr77 = freeze i64 %i.d                        ; 3 uses
  %i.e = icmp slt i64 %.fr77, 384
  br i1 %i.e, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @dtrti2_LU(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.h, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.h, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !16
  %i.m = add nuw i64 %.fr77, 383                  ; 2 uses
  %i.n = urem i64 %i.m, 384
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = add i64 %i.h, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.072.in75 = phi i64 [ %i.o, %.lr.ph ], [ %.072, %bb.c ] ; 2 uses
  %.072 = add nsw i64 %.072.in75, -384            ; 5 uses
  %i.t = sub nsw i64 %.fr77, %.072                ; 2 uses
  %spec.select = call i64 @llvm.smin.i64(i64 %i.t, i64 384) ; 3 uses
  store i64 %spec.select, ptr %i.c, align 8, !tbaa !8
  %i.u = sub nsw i64 %i.t, %spec.select
  store i64 %i.u, ptr %i.p, align 8, !tbaa !17
  %i.v = add nsw i64 %spec.select, %.072          ; 2 uses
  %i.w = mul i64 %i.v, %i.q
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w
  store ptr %i.x, ptr %0, align 8, !tbaa !13
  %i.y = mul nsw i64 %.072, %i.h                  ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.i, i64 %i.v
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.y
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !18
  store ptr %i.a, ptr %i.s, align 8, !tbaa !19
  %i.ab = call i32 @dtrmm_LNLU(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  %i.ac = getelementptr [8 x i8], ptr %i.i, i64 %.072
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !13
  store ptr %i.b, ptr %i.s, align 8, !tbaa !19
  %i.ae = call i32 @dtrsm_RNLU(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !13
  %i.af = call i32 @dtrti2_LU(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  %i.ag = icmp sgt i64 %.072.in75, 767
  br i1 %i.ag, label %bb.c, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dtrti2_LU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrmm_LNLU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_RNLU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 56}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !5, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 72}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !11, i64 80}
!15 = !{!9, !11, i64 88}
!16 = !{!9, !10, i64 32}
!17 = !{!9, !11, i64 48}
!18 = !{!9, !10, i64 8}
!19 = !{!9, !10, i64 40}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
