inline.NumInlined: 2896
inline.NumDeleted: 1413
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14103 ; 2 uses
  %5 = and i64 %i.b, -256
  %6 = and i64 %i.b, 255
  %i.c = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.c, %6
  store i64 %7, ptr %i.a, align 8, !tbaa !14103
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE:bb.a
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %8 = icmp eq i64 %i.c, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14103 ; 2 uses
  %4 = and i64 %i.o, -256
  %5 = and i64 %i.o, 255
  %i.p = add i64 %4, -256
  %6 = or disjoint i64 %i.p, %5
  store i64 %6, ptr %i.n, align 8, !tbaa !14103
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13923
  %.not.i.i.i.i = icmp sgt i8 %i.r, -1
end_hunk_2
