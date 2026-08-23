Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SweepLineEvent?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4geos5index9sweepline14SweepLineEventC1EdPS2_PNS1_17SweepLineIntervalE = unnamed_addr alias void (ptr, double, ptr, ptr), ptr @_ZN4geos5index9sweepline14SweepLineEventC2EdPS2_PNS1_17SweepLineIntervalE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos5index9sweepline14SweepLineEventC2EdPS2_PNS1_17SweepLineIntervalE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 24), (32, 40)) %0, double noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos5index9sweepline14SweepLineEvent8isInsertEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos5index9sweepline14SweepLineEvent8isDeleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN4geos5index9sweepline14SweepLineEvent14getInsertEventEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4geos5index9sweepline14SweepLineEvent19getDeleteEventIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos5index9sweepline14SweepLineEvent19setDeleteEventIndexEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((24, 32)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN4geos5index9sweepline14SweepLineEvent11getIntervalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %. = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos5index9sweepline22SweepLineEventLessThenclEPKNS1_14SweepLineEventES5_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = load double, ptr %2, align 8, !tbaa !8   ; 2 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_.exit, label %3

3:                                                ; preds = %bb.c
  br label %_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_.exit

_ZNK4geos5index9sweepline14SweepLineEvent9compareToEPKS2_.exit: ; preds = %bb.a, %bb.b, %bb.c, %3
  %.0.i = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ false, %bb.b ], [ false, %3 ]
  ret i1 %.0.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4geos5index9sweepline14SweepLineEventE", !10, i64 0, !5, i64 8, !11, i64 16, !13, i64 24, !14, i64 32}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 _ZTSN4geos5index9sweepline14SweepLineEventE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSN4geos5index9sweepline17SweepLineIntervalE", !12, i64 0}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !11, i64 16}
!17 = !{!9, !14, i64 32}
!18 = !{!9, !13, i64 24}
end_hunk_0
