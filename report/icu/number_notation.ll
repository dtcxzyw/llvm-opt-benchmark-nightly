Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_notation?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::number::Notation" = type { i32, %"union.icu_78::number::Notation::NotationUnion" }
%"union.icu_78::number::Notation::NotationUnion" = type { %"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" }
%"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" = type { i8, i8, i16, i32 }

@_ZN6icu_786number18ScientificNotationC1Eabs18UNumberSignDisplay = unnamed_addr alias void (ptr, i8, i1, i16, i32), ptr @_ZN6icu_786number18ScientificNotationC2Eabs18UNumberSignDisplay

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN6icu_786number8Notation10scientificEv() local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.02 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  store i32 0, ptr %.sroa.02, align 8, !tbaa !8
  %.sroa.02.4..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 4
  store i64 65537, ptr %.sroa.02.4..sroa_idx5, align 4, !tbaa !11
  %.sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.0.0.copyload = load i64, ptr %.sroa.02, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN6icu_786number8Notation11engineeringEv() local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.02 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  store i32 0, ptr %.sroa.02, align 8, !tbaa !8
  %.sroa.02.4..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 4
  store i64 65539, ptr %.sroa.02.4..sroa_idx5, align 4, !tbaa !11
  %.sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.0.0.copyload = load i64, ptr %.sroa.02, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_786number18ScientificNotationC2Eabs18UNumberSignDisplay(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, i8 noundef signext %1, i1 noundef zeroext %2, i16 noundef signext %3, i32 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0.insert.ext = zext i32 %4 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.ext = zext i16 %3 to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.46.0.insert.shift = select i1 %2, i64 256, i64 0
  %.sroa.46.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.46.0.insert.shift
  %.sroa.05.0.insert.ext = zext i8 %1 to i64
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.46.0.insert.insert, %.sroa.05.0.insert.ext
  store i32 0, ptr %0, align 4
  store i64 %.sroa.05.0.insert.insert, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN6icu_786number8Notation12compactShortEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  store i32 1, ptr %0, align 8, !tbaa !8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4, !tbaa !11
  %.0..0..0..sroa.0.0.copyload = load i64, ptr %0, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0..0..0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN6icu_786number8Notation11compactLongEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  store i32 1, ptr %0, align 8, !tbaa !8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 1, ptr %.4..4..4..sroa_idx, align 4, !tbaa !11
  %.0..0..0..sroa.0.0.copyload = load i64, ptr %0, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0..0..0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN6icu_786number8Notation6simpleEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  store i32 2, ptr %0, align 8, !tbaa !8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %.0..0..0..sroa.0.0.copyload = load i64, ptr %0, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0..0..0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_ZNK6icu_786number18ScientificNotation21withMinExponentDigitsEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.010 = alloca %"class.icu_78::number::Notation", align 8 ; 4 uses
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 999
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0.copyload to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %i.d = shl nuw nsw i32 %1, 16
  %.sroa.4.0.insert.shift = zext nneg i32 %i.d to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %i.c to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.09.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.010, i64 4
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.09.4..sroa_idx16, align 4, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.09.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.010, i64 4
  store i32 65810, ptr %.sroa.09.4..sroa_idx17, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload = phi i32 [ %.sroa.5.0.copyload, %bb.b ], [ undef, %bb.c ]
  %.sink = phi i32 [ 0, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink, ptr %.sroa.010, align 8, !tbaa !8
  %.sroa.09.0..sroa.09.0..sroa.09.0..sroa.09.0..sroa.0.0.copyload = load i64, ptr %.sroa.010, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.09.0..sroa.09.0..sroa.09.0..sroa.09.0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_ZNK6icu_786number18ScientificNotation23withExponentSignDisplayE18UNumberSignDisplay(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.05 = alloca %"class.icu_78::number::Notation", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  store i32 0, ptr %.sroa.05, align 8, !tbaa !8
  %.sroa.4.0.insert.ext = zext i32 %1 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.b to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.04.4..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 4
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.04.4..sroa_idx7, align 4, !tbaa !11
  %.sroa.04.0..sroa.04.0..sroa.04.0..sroa.04.0..sroa.0.0.copyload = load i64, ptr %.sroa.05, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.04.0..sroa.04.0..sroa.04.0..sroa.04.0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %1, 1
  ret { i64, i32 } %.fca.1.insert
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN6icu_786number8NotationE", !10, i64 0, !6, i64 4}
!10 = !{!"_ZTSN6icu_786number8Notation12NotationTypeE", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"_ZTS18UNumberSignDisplay", !6, i64 0}
end_hunk_0
