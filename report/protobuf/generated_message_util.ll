inline.NumInlined: 128
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8internal23SerializeMessageNoTableEPKNS0_11MessageLiteEPNS1_11ArrayOutputE:.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.y, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e, !inline_history !34 ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %phi.call.i, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !74

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13: ; preds = %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
bb.m:                                             ; preds = %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !73
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !74

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12: ; preds = %bb.m
  %i.bk = load ptr, ptr %1, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
bb.n:                                             ; preds = %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !73
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %phi.call.i)
          to label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !74

_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.n
  %i.bo = load ptr, ptr %phi.call.i, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %phi.call.i) #18, !inline_history !75
  ret void

_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit, %bb.m, %bb.n, %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12, %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  %i.bs = load ptr, ptr %phi.call.i, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %phi.call.i) #18, !inline_history !75
  resume { ptr, i32 } %i.br
}

end_hunk_4
begin_hunk_5_@_GLOBAL__I_000101:bb.a
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = !{!63, !11, i64 24}
!74 = distinct !{null}
!75 = distinct !{null, null}
end_hunk_5
