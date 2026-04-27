inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0_@_ZN6hermes2vm15HandleRootOwner12markGCScopesERNS0_12RootAcceptorE:bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.01318.i) #5, !inline_history !25
  %i.q = getelementptr inbounds nuw i8, ptr %.01318.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %.0.i
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !26
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7GCScope4markERNS0_12RootAcceptorE:.lr.ph22
  %i.n = load ptr, ptr %1, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.01318) #5
  %i.q = getelementptr inbounds nuw i8, ptr %.01318, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.q, %.0
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !26
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm7GCScopeD2Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10, !nonnull !32, !noundef !32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = zext i32 %i.h to i64
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm7GCScopeD2Ev:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %.lr.ph.preheader ] ; 2 uses
  %i.k = load ptr, ptr %.08, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.k) #5
  %.0 = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %.0, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !37
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm7GCScopeD2Ev:bb.a
  br i1 %i.n, label %_ZN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.l) #5
  br label %_ZN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.b
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef 128) #5
  %i.i = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #5
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !36
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EE9push_backERKS4_.exit

end_hunk_6
begin_hunk_7_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a
bb.d:                                             ; preds = %bb.a
  %i.x = zext i32 %i.c to i64
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EE9push_backERKS4_.exit
end_hunk_7
begin_hunk_8_@_ZN6hermes13checkedMallocEm

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_8
