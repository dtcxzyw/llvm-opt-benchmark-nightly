inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0_@_ZN6hermes2vm15HandleRootOwner12markGCScopesERNS0_12RootAcceptorE:bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.01318.i) #4
  %i.q = getelementptr inbounds nuw i8, ptr %.01318.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %.0.i
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.01420.i, i64 8
  %.not.i = icmp eq ptr %.01420.i, %i.f
  br i1 %.not.i, label %_ZN6hermes2vm7GCScope4markERNS0_12RootAcceptorE.exit, label %bb.b, !llvm.loop !27

_ZN6hermes2vm7GCScope4markERNS0_12RootAcceptorE.exit: ; preds = %._crit_edge.i
  %.0.in = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !7   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7GCScope4markERNS0_12RootAcceptorE:.lr.ph22
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.01318) #4
  %i.q = getelementptr inbounds nuw i8, ptr %.01318, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.q, %.0
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.01420, i64 8
  %.not = icmp eq ptr %.01420, %i.f
  br i1 %.not, label %._crit_edge23, label %bb.a, !llvm.loop !27
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7GCScopeD2Ev(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(212) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %0, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm7GCScopeD2Ev:bb.a
  tail call void @free(ptr noundef %i.k) #4
  %.0 = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %.0, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a
  store i32 %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef 128) #4
  %i.i = load i32, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EE9push_backERKS4_.exit, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #4
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !35
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EE9push_backERKS4_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = ptrtoint ptr %i.h to i64
  store i64 %i.q, ptr %i.p, align 1
  %i.r = load i32, ptr %i.e, align 8, !tbaa !35
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !35
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !39
  store i64 %1, ptr %i.aa, align 8, !tbaa !40
  ret ptr %i.aa
}

end_hunk_5
begin_hunk_6_@_ZN4llvh15SmallVectorBase8grow_podEPvmm
!22 = !{!13, !20, i64 200}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = !{!13, !8, i64 8}
!30 = !{!13, !14, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !8, i64 8}
!34 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !8, i64 8}
!35 = !{!11, !4, i64 8}
!36 = distinct !{!36, !26}
!37 = !{!11, !4, i64 12}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!13, !20, i64 192}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !5, i64 0}
end_hunk_6
