begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmE:bb.a
  br i1 %i.l, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %6, 0
  br i1 %i.m, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_9EventBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail16F14VectorMapImplImSt10unique_ptrIvPFvPvEENS_23HeterogeneousAccessHashImvEENS_26HeterogeneousAccessEqualToImvEESaISt4pairIKmS7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = and i64 %i.o, -256
  %4 = and i64 %i.o, 255
  %5 = add i64 %i.p, -256
  %i.q = or disjoint i64 %5, %4
  store i64 %i.q, ptr %i.n, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmE:bb.a
  br i1 %i.l, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %6, 0
  br i1 %i.m, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPNS_6detail18EventBaseLocalBaseEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESH_IJOS8_EEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESN_ImmERKT_DpOT0_:bb.a
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !66
  store ptr null, ptr %i.cp, align 8, !tbaa !66
  %i.cr = and i64 %i.cb, -256
  %8 = and i64 %i.cb, 255
  %9 = add i64 %i.cr, 256
  %i.cs = or disjoint i64 %9, %8
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !16
  br label %bb.o

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE19tryEmplaceValueImplIS5_JS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_9EventBaseEvvvvEEE13insertAtBlankIJS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_9EventBaseEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !16
  br label %bb.p

end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_6detail18EventBaseLocalBaseEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPNS_6detail18EventBaseLocalBaseEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !16
  br label %bb.p

end_hunk_7
