inline.NumInlined: 1133
inline.NumDeleted: 586
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %5 = and i64 %i.b, -256
  %6 = and i64 %i.b, 255
  %i.c = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.c, %6
  store i64 %7, ptr %i.a, align 8, !tbaa !16
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %8 = icmp eq i64 %i.c, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ae, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.af = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.af, 1
  %i.ai = ptrtoint ptr %.sroa.01.0.i to i64
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !35
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i
  %9 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.ak = getelementptr inbounds i8, ptr %9, i64 %.neg.i.i.i ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !36
  %.not.i.i7 = icmp sgt i8 %i.am, -1
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %4 = and i64 %i.o, -256
  %5 = and i64 %i.o, 255
  %i.p = add i64 %4, -256
  %6 = or disjoint i64 %i.p, %5
  store i64 %6, ptr %i.n, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %.not.i.i.i.i = icmp sgt i8 %i.r, -1
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %5 = and i64 %i.b, -256
  %6 = and i64 %i.b, 255
  %i.c = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.c, %6
  store i64 %7, ptr %i.a, align 8, !tbaa !16
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !89
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %8 = icmp eq i64 %i.c, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ae, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.af = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.af, 1
  %i.ai = ptrtoint ptr %.sroa.01.0.i to i64
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !35
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i
  %9 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.ak = getelementptr inbounds i8, ptr %9, i64 %.neg.i.i.i ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !36
  %.not.i.i7 = icmp sgt i8 %i.am, -1
end_hunk_6
