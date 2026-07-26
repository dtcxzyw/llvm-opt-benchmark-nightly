inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.n, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 %i.d     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.f, i64 -1
  %i.k = add nuw i8 %i.h, 1
  store i8 %i.k, ptr %i.j, align 1, !tbaa !15
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !15
  %i.n = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  ret void
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !11, i64 0}
!15 = !{!6, !6, i64 0}
end_hunk_0
