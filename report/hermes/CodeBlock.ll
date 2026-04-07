begin_hunk_0_@_ZNK6hermes2vm9CodeBlock17getSourceLocationEj:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(280) %i.m) #7
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !94
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !97 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
end_hunk_1
begin_hunk_2_@_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv:bb.a
  %.112.i.i = select i1 %i.j, i64 %i.m, i64 %i.h  ; 2 uses
  %.1.i.i = select i1 %i.j, ptr %i.k, ptr %.05.i.i ; 2 uses
  %i.n = icmp sgt i64 %.112.i.i, 0
  br i1 %i.n, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZNK6hermes2vm9CodeBlock19getFunctionSourceIDEvE3$_0ET_S8_S8_RKT0_T1_.exit", !llvm.loop !98

"_ZSt11lower_boundIPKSt4pairIjjEjZNK6hermes2vm9CodeBlock19getFunctionSourceIDEvE3$_0ET_S8_S8_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.a ], [ %.1.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv:bb.a
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZNK6hermes2vm9CodeBlock19getFunctionSourceIDEvE3$_0ET_S8_S8_RKT0_T1_.exit"
  %i.p = load i32, ptr %.0.lcssa.i.i, align 4, !tbaa !100
  %.not = icmp eq i32 %i.p, %.val
  br i1 %.not, label %bb.c, label %bb.d

end_hunk_3
begin_hunk_4_@_ZNK6hermes2vm9CodeBlock22getScopeDescDataOffsetEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !102  ; 2 uses
  %.not4 = icmp eq i32 %i.i, -1                   ; 2 uses
  %spec.select = select i1 %.not4, i32 0, i32 %i.i
  %i.j = select i1 %.not4, i64 0, i64 4294967296
end_hunk_4
begin_hunk_5_@_ZNK6hermes2vm9CodeBlock24getTextifiedCalleeOffsetEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103  ; 2 uses
  %.not4 = icmp eq i32 %i.i, -1                   ; 2 uses
  %spec.select = select i1 %.not4, i32 0, i32 %i.i
  %i.j = select i1 %.not4, i64 0, i64 4294967296
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm9CodeBlock23markCachedHiddenClassesERNS0_7RuntimeERNS0_16WeakRootAcceptorE:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi ptr [ %i.j, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.f = load i32, ptr %.013, align 4, !tbaa !104
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.c, label %bb.b

end_hunk_6
begin_hunk_7_@_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj
!94 = !{!43, !54, i64 240}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !6, i64 0}
!97 = !{!53, !53, i64 0}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!101, !4, i64 0}
!101 = !{!"_ZTSSt4pairIjjE", !4, i64 0, !4, i64 4}
!102 = !{!89, !4, i64 4}
!103 = !{!89, !4, i64 8}
!104 = !{!105, !4, i64 0}
!105 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
end_hunk_7
