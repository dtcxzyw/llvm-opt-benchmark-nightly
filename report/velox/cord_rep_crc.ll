inline.NumInlined: 17
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011613cord_internal10CordRepCrc3NewEPNS1_7CordRepENS0_12crc_internal12CrcCordStateE(ptr noundef %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !8
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14, !nonnull !20, !noundef !20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 2 monotonic, align 4 ; 0 uses
  %i.l = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.l, 2
  br i1 %.not.i, label %bb.f, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.019 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #5 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 2, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  invoke void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN4absl12lts_2024011613cord_internal10CordRepCrcC2Ev.exit unwind label %bb.i

_ZN4absl12lts_2024011613cord_internal10CordRepCrcC2Ev.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  %.not21 = icmp eq ptr %.019, null
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal10CordRepCrcC2Ev.exit
  %i.p = load i64, ptr %.019, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal10CordRepCrcC2Ev.exit, %bb.g
  %i.q = phi i64 [ %i.p, %bb.g ], [ 0, %_ZN4absl12lts_2024011613cord_internal10CordRepCrcC2Ev.exit ]
  store i64 %i.q, ptr %i.m, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i8 2, ptr %i.r, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.019, ptr %i.s, align 8, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #6
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.o, %bb.h ], [ %i.g, %bb.d ]
  %.0 = phi ptr [ %i.m, %bb.h ], [ %0, %bb.d ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612crc_internal12CrcCordStateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sink, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612crc_internal12CrcCordStateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal10CordRepCrc7DestroyEPS2_(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #6
  ret void
}

declare void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { builtin nounwind }
attributes #7 = { nounwind }

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
!8 = !{!9, !6, i64 12}
!9 = !{!"_ZTSN4absl12lts_2024011613cord_internal7CordRepE", !10, i64 0, !11, i64 8, !6, i64 12, !6, i64 13}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_ZTSN4absl12lts_2024011613cord_internal16RefcountAndFlagsE", !12, i64 0}
!12 = !{!"_ZTSSt6atomicIiE", !13, i64 0}
!13 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSN4absl12lts_2024011613cord_internal10CordRepCrcE", !9, i64 0, !16, i64 16, !18, i64 24}
!16 = !{!"p1 _ZTSN4absl12lts_2024011613cord_internal7CordRepE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTSN4absl12lts_2024011612crc_internal12CrcCordStateE", !19, i64 0}
!19 = !{!"p1 _ZTSN4absl12lts_2024011612crc_internal12CrcCordState13RefcountedRepE", !17, i64 0}
!20 = !{}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!13, !5, i64 0}
!23 = !{!9, !10, i64 0}
end_hunk_0
