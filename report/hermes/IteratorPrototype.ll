inline.NumInlined: 44
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }

@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm25populateIteratorPrototypeERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25iteratorPrototypeIteratorEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 480, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #3
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !tbaa !7
  %i.c = or i64 %.sroa.0.0.copyload.i.i.i, -281474976710656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !13
  store i64 %i.c, ptr %i.g, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14NativeFunctionEEENS0_6HandleIT_EEPS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.e, i64 %i.c) #3
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14NativeFunctionEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_14NativeFunctionEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.m, i32 268436017, ptr %.0.i.i.i.i.i.i) #3
  ret void
}

declare ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, ptr noundef, i32, i32 noundef, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25iteratorPrototypeIteratorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !27, !nonnull !30, !noundef !30
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !7
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.0.0.copyload, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 8}
!11 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !22, i64 192}
!14 = !{!"_ZTSN6hermes2vm7GCScopeE", !15, i64 0, !11, i64 8, !5, i64 16, !16, i64 144, !22, i64 192, !22, i64 200, !4, i64 208}
!15 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !12, i64 0}
!16 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !17, i64 0, !21, i64 16}
!17 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !18, i64 0}
!18 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !19, i64 0}
!19 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !20, i64 0}
!20 = !{!"_ZTSN4llvh15SmallVectorBaseE", !12, i64 0, !4, i64 8, !4, i64 12}
!21 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!22 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !12, i64 0}
!23 = !{!14, !22, i64 200}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!26, !22, i64 0}
!26 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !22, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!29 = distinct !{!29, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!30 = !{}
end_hunk_0
