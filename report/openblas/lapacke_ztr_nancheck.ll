Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_ztr_nancheck?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @LAPACKE_ztr_nancheck(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %.loopexit87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 102                      ; 2 uses
  %i.c = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 117) #3
  %i.d = icmp ne i32 %0, 101
  %or.cond = xor i1 %i.b, %i.d
  br i1 %or.cond, label %.loopexit87, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #3
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 117) #3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit87, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not83 = icmp ne i32 %i.c, 0                   ; 6 uses
  br i1 %.not83, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 110) #3
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %.loopexit87, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %. = zext i1 %.not83 to i32                     ; 2 uses
  %i.i = xor i1 %i.b, %i.f
  br i1 %i.i, label %.preheader88, label %.preheader91

.preheader91:                                     ; preds = %bb.g
  %i.j = sub nsw i32 %3, %.                       ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph96, label %.loopexit87

.lr.ph96:                                         ; preds = %.preheader91
  %i.l = tail call i32 @llvm.smin.i32(i32 %3, i32 %5) ; 2 uses
  %i.m = sext i32 %5 to i64
  %i.n = zext i1 %.not83 to i64
  %.neg126 = sext i1 %.not83 to i64
  %i.o = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  %invariant.op = add nsw i64 %.neg126, %i.o
  br label %bb.k

.preheader88:                                     ; preds = %bb.g
  %i.p = icmp sgt i32 %3, %.
  br i1 %i.p, label %.preheader.lr.ph, label %.loopexit87

.preheader.lr.ph:                                 ; preds = %.preheader88
  %i.q = sext i32 %5 to i64
  %i.r = zext i1 %.not83 to i64
  %.neg = sext i1 %.not83 to i64
  %wide.trip.count119 = zext nneg i32 %3 to i64
  br label %.preheader

.loopexit:                                        ; preds = %bb.h, %.preheader
  %indvars.iv.next113 = add nuw i32 %indvars.iv112, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %.loopexit87, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv116 = phi i64 [ %i.r, %.preheader.lr.ph ], [ %indvars.iv.next117, %.loopexit ] ; 2 uses
  %indvars.iv112 = phi i32 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next113, %.loopexit ] ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 3 uses
  %i.s = add nsw i64 %indvars.iv.next117, %.neg
  %i.t = trunc nuw nsw i64 %i.s to i32
  %.86 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %5)
  %i.u = icmp sgt i32 %.86, 0
  br i1 %i.u, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv112)
  %i.v = mul nuw nsw i64 %indvars.iv116, %i.q
  %i.w = getelementptr [16 x i8], ptr %4, i64 %i.v
  %wide.trip.count114 = zext i32 %smin to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count114
  br i1 %exitcond115.not, label %.loopexit, label %bb.i, !llvm.loop !9

bb.i:                                             ; preds = %.lr.ph98, %bb.h
  %indvars.iv109 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next110, %bb.h ] ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv109 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = fcmp uno double %i.y, 0.000000e+00
  br i1 %i.z, label %.loopexit87, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14
  %i.ac = fcmp uno double %i.ab, 0.000000e+00
  br i1 %i.ac, label %.loopexit87, label %bb.h

bb.k:                                             ; preds = %.lr.ph96, %._crit_edge
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next107, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph96 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv106, %invariant.op
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ae = mul nsw i64 %indvars.iv106, %i.m
  %i.af = getelementptr [16 x i8], ptr %4, i64 %i.ae
  br label %bb.m

bb.l:                                             ; preds = %bb.n
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.next104 to i32
  %i.ah = icmp sgt i32 %i.l, %i.ag
  br i1 %i.ah, label %bb.m, label %._crit_edge, !llvm.loop !10

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv103 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next104, %bb.l ] ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.af, i64 %indvars.iv103 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14
  %i.ak = fcmp uno double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.loopexit87, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !14
  %i.an = fcmp uno double %i.am, 0.000000e+00
  br i1 %i.an, label %.loopexit87, label %bb.l

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit87, label %bb.k, !llvm.loop !11

.loopexit87:                                      ; preds = %._crit_edge, %bb.m, %bb.n, %.loopexit, %bb.i, %bb.j, %.preheader91, %.preheader88, %bb.d, %bb.f, %bb.b, %bb.a
  %.079 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %.preheader88 ], [ 1, %bb.m ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %.loopexit ], [ 0, %.preheader91 ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.n ], [ 0, %._crit_edge ]
  ret i32 %.079
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
