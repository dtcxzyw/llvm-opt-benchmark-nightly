inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::pair" = type { i32, i64 }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::Status" = type { ptr }
%"class.arrow::internal::AlignedStorage" = type { [8 x i8] }

@_ZN5arrow4utilL25kTimestampConversionTableE = internal unnamed_addr constant [4 x [4 x %"struct.std::pair"]] [[4 x %"struct.std::pair"] [%"struct.std::pair" { i32 0, i64 1 }, %"struct.std::pair" { i32 0, i64 1000 }, %"struct.std::pair" { i32 0, i64 1000000 }, %"struct.std::pair" { i32 0, i64 1000000000 }], [4 x %"struct.std::pair"] [%"struct.std::pair" { i32 1, i64 1000 }, %"struct.std::pair" { i32 0, i64 1 }, %"struct.std::pair" { i32 0, i64 1000 }, %"struct.std::pair" { i32 0, i64 1000000 }], [4 x %"struct.std::pair"] [%"struct.std::pair" { i32 1, i64 1000000 }, %"struct.std::pair" { i32 1, i64 1000 }, %"struct.std::pair" { i32 0, i64 1 }, %"struct.std::pair" { i32 0, i64 1000 }], [4 x %"struct.std::pair"] [%"struct.std::pair" { i32 1, i64 1000000000 }, %"struct.std::pair" { i32 1, i64 1000000 }, %"struct.std::pair" { i32 1, i64 1000 }, %"struct.std::pair" { i32 0, i64 1 }]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i32, i64 } @_ZN5arrow4util22GetTimestampConversionENS_8TimeUnit4typeES2_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [64 x i8], ptr @_ZN5arrow4utilL25kTimestampConversionTableE, i64 %i.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.22.0.copyload, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow4util21ConvertTimestampValueERKSt10shared_ptrINS_8DataTypeEES5_l(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = load ptr, ptr %2, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = sext i32 %i.c to i64
  %i.h = getelementptr inbounds [64 x i8], ptr @_ZN5arrow4utilL25kTimestampConversionTableE, i64 %i.g
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 16
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %6 [
    i32 0, label %bb.b
    i32 1, label %4
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = mul nsw i64 %.sroa.22.0.copyload.i, %3
  br label %bb.c

4:                                                ; preds = %bb.a
  %5 = sdiv i64 %3, %.sroa.22.0.copyload.i
  br label %bb.c

6:                                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %4
  %.sink = phi i64 [ %5, %4 ], [ %i.k, %bb.b ]
  store ptr null, ptr %0, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.l, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!8 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN5arrow8DataTypeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!14, !32, i64 72}
!14 = !{!"_ZTSN5arrow13TimestampTypeE", !15, i64 0, !32, i64 72, !33, i64 80}
!15 = !{!"_ZTSN5arrow12TemporalTypeE", !16, i64 0}
!16 = !{!"_ZTSN5arrow14FixedWidthTypeE", !17, i64 0}
!17 = !{!"_ZTSN5arrow8DataTypeE", !18, i64 0, !22, i64 24, !26, i64 40, !27, i64 48}
!18 = !{!"_ZTSN5arrow6detail15FingerprintableE", !19, i64 8, !19, i64 16}
!19 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !20, i64 0}
!20 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !21, i64 0}
!21 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!22 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !23, i64 0}
!23 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !24, i64 0}
!24 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !25, i64 8}
!25 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!26 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!27 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !10, i64 0}
!32 = !{!"_ZTSN5arrow8TimeUnit4typeE", !5, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !36, i64 8, !5, i64 16}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !10, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN5arrow6StatusE", !39, i64 0}
!39 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!40 = !{!36, !36, i64 0}
end_hunk_0
