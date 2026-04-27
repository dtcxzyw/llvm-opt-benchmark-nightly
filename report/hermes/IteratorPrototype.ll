inline.NumInlined: 44
inline.NumDeleted: 40
begin_hunk_0_@_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25iteratorPrototypeIteratorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) dead_on_return %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !27
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !7
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.0.0.copyload, 1
  ret { i32, i64 } %.fca.1.insert
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!29 = distinct !{!29, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_1
