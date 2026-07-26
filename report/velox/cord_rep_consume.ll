inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i acquire, align 8
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #4
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = atomicrmw add ptr %i.l, i32 2 monotonic, align 4 ; 0 uses
  %i.n = atomicrmw sub ptr %i.i, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.n, 2
  br i1 %.not.i.i, label %bb.e, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113ClipSubstringEPNS1_16CordRepSubstringE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  tail call void %2(ptr %1, ptr noundef %.0, i64 noundef %.07, i64 noundef %i.a), !inline_history !20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal14ReverseConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i acquire, align 8
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #4
  br label %_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = atomicrmw add ptr %i.l, i32 2 monotonic, align 4 ; 0 uses
  %i.n = atomicrmw sub ptr %i.i, i32 2 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.n, 2
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit

_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  tail call void %2(ptr %1, ptr noundef %.0.i, i64 noundef %.07.i, i64 noundef %i.a), !inline_history !21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

declare void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4absl12lts_2024011613cord_internal7CordRepE", !9, i64 0, !10, i64 8, !5, i64 12, !5, i64 13}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN4absl12lts_2024011613cord_internal16RefcountAndFlagsE", !11, i64 0}
!11 = !{!"_ZTSSt6atomicIiE", !12, i64 0}
!12 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!13 = !{!8, !5, i64 12}
!14 = !{!15, !9, i64 16}
!15 = !{!"_ZTSN4absl12lts_2024011613cord_internal16CordRepSubstringE", !8, i64 0, !9, i64 16, !16, i64 24}
!16 = !{!"p1 _ZTSN4absl12lts_2024011613cord_internal7CordRepE", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!15, !16, i64 24}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{null}
!21 = distinct !{ptr @_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE, null}
end_hunk_0
