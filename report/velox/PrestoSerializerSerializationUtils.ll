inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !716
  %i.c = add nuw nsw i64 %i.b, -256
  store i64 %i.c, ptr %i.a, align 8, !tbaa !716
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1452
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = mul i64 %2, -8
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8                  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.01.1.i = phi ptr [ %i.ae, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ab, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.af = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i64 %i.af, 1
  %i.ai = ptrtoint ptr %.sroa.01.1.i to i64
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !121
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit: ; preds = %bb.b, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.b ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %.not.i.i7 = icmp sgt i8 %i.am, -1
end_hunk_2
