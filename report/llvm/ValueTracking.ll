Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm12KnownFPClass12propagateNaNERKS0_b:bb.a
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !497    ; 2 uses
  %i.e = and i32 %i.d, 1020                       ; 2 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !497
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !474, !range !18, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.d, 60
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %i.e, 64
  br i1 %i.l, label %.sink.split.i, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink.i = phi i16 [ 256, %bb.c ], [ 257, %bb.d ]
  store i16 %.sink.i, ptr %i.f, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit: ; preds = %bb.b, %bb.d, %.sink.split.i
  br i1 %2, label %bb.e, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

bb.e:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i16, ptr %i.m, align 4
  store i16 %i.n, ptr %i.f, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

bb.f:                                             ; preds = %bb.a
  %i.o = and i32 %i.a, 1
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %0, align 4, !tbaa !497    ; 3 uses
  %i.r = and i32 %i.q, 1022                       ; 2 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !497
  %i.s = and i32 %i.q, 2
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !474, !range !18, !noundef !19
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = and i32 %i.q, 60
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.sink.split.i4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp samesign ult i32 %i.r, 64
  br i1 %i.aa, label %.sink.split.i4, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

.sink.split.i4:                                   ; preds = %bb.j, %bb.i
  %.sink.i5 = phi i16 [ 256, %bb.i ], [ 257, %bb.j ]
  store i16 %.sink.i5, ptr %i.u, align 4
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit6: ; preds = %.sink.split.i4, %bb.j, %bb.h, %bb.g, %bb.f, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12KnownFPClass26isKnownNeverLogicalPosZeroENS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass9fadd_selfERKS0_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass4fsubERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm12KnownFPClass6squareERKS0_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6) %0, i16 %1) local_unnamed_addr #3 comdat align 2 {
_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit:
  %i.a = tail call i64 @_ZN4llvm12KnownFPClass4fmulERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6) %0, ptr noundef nonnull align 4 dereferenceable(6) %0, i16 %1) #27 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.a to i32 ; 5 uses
  %.sroa.0.sroa.8.0.extract.shift23 = lshr i64 %i.a, 32
  %.sroa.0.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.8.0.extract.shift23 to i8
  %.sroa.0.sroa.8.sroa.5.0.extract.shift24 = lshr i64 %i.a, 40 ; 2 uses
  %.sroa.0.sroa.8.sroa.5.0.extract.trunc = trunc i64 %.sroa.0.sroa.8.sroa.5.0.extract.shift24 to i8
  %i.b = and i32 %.sroa.0.sroa.0.0.extract.trunc, 3
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  %i.d = trunc i64 %.sroa.0.sroa.8.sroa.5.0.extract.shift24 to i1
  %.not25 = select i1 %i.c, i1 true, i1 %i.d
  %.sroa.0.sroa.8.sroa.0.0 = select i1 %.not25, i8 %.sroa.0.sroa.8.sroa.0.0.extract.trunc, i8 0 ; 4 uses
  %.sroa.0.sroa.8.sroa.5.0 = select i1 %i.c, i8 %.sroa.0.sroa.8.sroa.5.0.extract.trunc, i8 1 ; 4 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !497    ; 2 uses
  %i.f = and i32 %i.e, 3
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %i.h = and i32 %.sroa.0.sroa.0.0.extract.trunc, 960
  %i.i = trunc nuw i8 %.sroa.0.sroa.8.sroa.5.0 to i1
  %spec.select21 = select i1 %i.i, i8 %.sroa.0.sroa.8.sroa.0.0, i8 0
  br label %_ZN4llvm12KnownFPClass12propagateNaNERKS0_b.exit

bb.b:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %i.j = and i32 %.sroa.0.sroa.0.0.extract.trunc, 963
  %i.k = and i32 %i.e, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN4llvm12KnownFPClass12propagateNaNERKS0_b.exit

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %.sroa.0.sroa.0.0.extract.trunc, 962 ; 2 uses
  %i.n = and i32 %.sroa.0.sroa.0.0.extract.trunc, 2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZN4llvm12KnownFPClass12propagateNaNERKS0_b.exit

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw i8 %.sroa.0.sroa.8.sroa.5.0 to i1
  %spec.select22 = select i1 %i.p, i8 %.sroa.0.sroa.8.sroa.0.0, i8 0
  br label %_ZN4llvm12KnownFPClass12propagateNaNERKS0_b.exit

_ZN4llvm12KnownFPClass12propagateNaNERKS0_b.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.sroa.8.sroa.0.2 = phi i8 [ %.sroa.0.sroa.8.sroa.0.0, %bb.b ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.c ], [ %spec.select22, %bb.d ], [ %spec.select21, %bb.a ]
  %.sroa.0.sroa.0.0 = phi i32 [ %i.j, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.h, %bb.a ]
  %.sroa.0.sroa.8.sroa.5.2 = phi i8 [ %.sroa.0.sroa.8.sroa.5.0, %bb.b ], [ %.sroa.0.sroa.8.sroa.5.0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.a ]
  %.sroa.0.sroa.8.sroa.5.0.insert.ext = zext i8 %.sroa.0.sroa.8.sroa.5.2 to i64
  %.sroa.0.sroa.8.sroa.0.0.insert.ext = zext i8 %.sroa.0.sroa.8.sroa.0.2 to i64
  %i.q = shl nuw nsw i64 %.sroa.0.sroa.8.sroa.5.0.insert.ext, 40
  %i.r = shl nuw nsw i64 %.sroa.0.sroa.8.sroa.0.0.insert.ext, 32
  %.sroa.0.sroa.8.0.insert.shift = or disjoint i64 %i.q, %i.r
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.8.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  ret i64 %.sroa.0.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !41      ; 2 uses
  %i.b = icmp eq i8 %i.a, 7
  br i1 %i.b, label %.critedge.thread.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 254
  %spec.select.i.i = icmp ne i32 %i.g, 18
  %i.h = icmp ugt i8 %i.a, 22
  %or.cond.i = or i1 %i.h, %spec.select.i.i
  br i1 %or.cond.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !787, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.k) #27 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp eq i8 %i.m, 7
  br i1 %i.n, label %.critedge.thread.sink.split.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit

.critedge.thread.sink.split.i:                    ; preds = %bb.d, %bb.a
  %.sink28.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sink28.i, i64 24
  %i.p = load ptr, ptr %1, align 8, !tbaa !790, !nonnull !19, !align !70
  store ptr %i.o, ptr %i.p, align 8, !tbaa !528
  br label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit

_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %.critedge.thread.sink.split.i
  %.4.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ true, %.critedge.thread.sink.split.i ]
  ret i1 %.4.i
}

declare i64 @_ZN4llvm12KnownFPClass4fmulERKS0_RKNS_7APFloatENS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 8 dereferenceable(24), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass4fmulERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL21isAbsoluteValueULEOnePKN4llvm5ValueE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !41
  switch i8 %i.a, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit [
    i8 47, label %bb.b
    i8 88, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not.i.i.i, label %1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !41
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 88
  br i1 %.not.i.i.i.i.i, label %bb.d, label %1

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.h, align 8, !tbaa !41
  %i.j = icmp eq i8 %i.i, 14
  br i1 %i.j, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i.i, label %1

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171
  %i.m = icmp eq i32 %i.l, 182
  br i1 %i.m, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_14match_deferredIKNS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.i.i.i, label %1

_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_14match_deferredIKNS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.i.i.i: ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 268435455
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit, label %1

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds i8, ptr %0, i64 -32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 5 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i8, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.w, align 8, !tbaa !41
  %i.y = icmp eq i8 %i.x, 14
  br i1 %i.y, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJS2_EEEEEEEEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchIKNS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJS2_EEEEEEEEEEbPT_RKT0_.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171
  %i.ab = icmp eq i32 %i.aa, 3652
  br i1 %i.ab, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit, label %bb.h

1:                                                ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i.i, %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_14match_deferredIKNS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.i.i.i
  br label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

bb.h:                                             ; preds = %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJS2_EEEEEEEEEEbPT_RKT0_.exit
  %.pr = load i8, ptr %i.w, align 8, !tbaa !41
  %i.ac = icmp eq i8 %.pr, 14
  br i1 %i.ac, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_5ValueEEEbPT_.exit.i.i11, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_5ValueEEEbPT_.exit.i.i11: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !171
  %i.af = icmp eq i32 %i.ae, 2498
  br label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS3_EENS5_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS5_14match_deferredIS3_EEEEEEELj17ELb0EEEEEbPT_RKT0_.exit: ; preds = %bb.g, %bb.f, %bb.a, %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_14match_deferredIKNS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.i.i.i, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJS2_EEEEEEEEEEbPT_RKT0_.exit, %1, %bb.h, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_5ValueEEEbPT_.exit.i.i11
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJS2_EEEEEEEEEEbPT_RKT0_.exit ], [ %i.af, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_5ValueEEEbPT_.exit.i.i11 ], [ true, %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_14match_deferredIKNS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.i.i.i ], [ false, %1 ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
}

declare i64 @_ZN4llvm12KnownFPClass9fdiv_selfERKS0_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass9frem_selfERKS0_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass4fdivERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm12KnownFPClass23isKnownNeverLogicalZeroENS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6), i16) local_unnamed_addr #5

declare i64 @_ZN4llvm12KnownFPClass5fpextERKS0_RKNS_12fltSemanticsES5_(ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm9KnownBits20countMinLeadingZerosEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZNK4llvm5APInt10countl_oneEv.exit, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !40
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl i64 %i.e, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 false)
  %i.k = trunc nuw nsw i64 %i.j to i32
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #29
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

_ZNK4llvm5APInt10countl_oneEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.l, %bb.d ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm9KnownBits16countMinSignBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !40
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 64, %i.b
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = trunc nuw nsw i64 %i.t to i32
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #29
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 4 uses
  %i.z = add i32 %i.y, -1                         ; 2 uses
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = icmp ult i32 %i.y, 65                   ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.af = lshr i32 %i.z, 6
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.in.i.i.i.i1 = select i1 %i.ad, ptr %i.w, ptr %i.ah
  %i.ai = load i64, ptr %.in.i.i.i.i1, align 8, !tbaa !40
  %i.aj = and i64 %i.ac, %i.ai
  %.not3 = icmp eq i64 %i.aj, 0
  %i.ak = ptrtoint ptr %i.ae to i64
  br i1 %.not3, label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i32 %i.y, 0
  br i1 %i.al, label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.am = sub nuw nsw i32 64, %i.y
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl i64 %i.ak, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

bb.j:                                             ; preds = %bb.g
  %i.as = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #29
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.c ], [ %i.v, %bb.e ], [ %i.u, %bb.d ], [ %i.as, %bb.j ], [ %i.ar, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm5ilogbERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloat10getLargestERKNS_12fltSemanticsEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i32 noundef 0) #27
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit: ; preds = %bb.b, %bb.c
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit
  tail call void @_ZN4llvm6detail9IEEEFloat11makeLargestEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %2) #27
  br label %_ZN4llvm7APFloat11makeLargestEb.exit

bb.e:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit
  tail call void @_ZN4llvm6detail13DoubleAPFloat11makeLargestEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %2) #27
  br label %_ZN4llvm7APFloat11makeLargestEb.exit

_ZN4llvm7APFloat11makeLargestEb.exit:             ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3ultEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #29
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !40
  %i.h = icmp ult i64 %.0.i, %1
end_hunk_0
