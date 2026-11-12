Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39752
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 141
loop-unroll.NumUnrolled: 386
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder30BuildGenericUnaryOperationNodeIL9Operation12EEENS1_12ReduceResultEv:bb.a
bb.d:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef 136) #33
  %.pre.i.i.i.i.i = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_17GenericBitwiseNotEJNS0_8compiler14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_17GenericBitwiseNotEJNS0_8compiler14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i: ; preds = %bb.d, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.u = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.r, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit ] ; 2 uses
  %i.v = add i64 %i.u, 136
  store i64 %i.v, ptr %i.q, align 8
  %i.w = add i64 %i.u, 96
  %i.x = inttoptr i64 %i.w to ptr                 ; 6 uses
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 536870977816, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 7696581394432
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_17GenericBitwiseNotEJNS0_8compiler14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i
  %i.af = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.f, i32 noundef 0), !inline_history !288
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i: ; preds = %bb.e, %_ZN2v88internal6maglev8NodeBase3NewINS1_17GenericBitwiseNotEJNS0_8compiler14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i
  %.0.i.i.i = phi ptr [ %i.f, %_ZN2v88internal6maglev8NodeBase3NewINS1_17GenericBitwiseNotEJNS0_8compiler14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8
  store ptr %.0.i.i.i, ptr %i.ag, align 8
  %i.ak = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_17GenericBitwiseNotEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.x)
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -64
  store ptr %i.ak, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_17GenericBitwiseNotEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !2139 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.c = load ptr, ptr %i.b, align 8, !noalias !2140 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 8, !noalias !2140
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4, !noalias !2140
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK2v88internal6maglev18MaglevGraphBuilder24GetResultLocationAndSizeEv(ptr noundef nonnull align 8 dereferenceable(953) %i.a), !noalias !2140 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.g to i32
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.43.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.43.0.extract.shift.i.i to i32
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %.sroa.43.0.extract.trunc.i.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.02.0.extract.trunc.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.i = load ptr, ptr %i.h, align 8, !noalias !2140
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31GetDeoptFrameForLazyDeoptHelperENS0_11interpreter8RegisterEiPNS2_19LazyDeoptFrameScopeEb(ptr noundef nonnull align 8 dereferenceable(953) %i.a, i32 %.sroa.0.0.i.i, i32 noundef %.0.i.i, ptr noundef %i.i, i1 noundef zeroext false), !noalias !2140
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc i64 %i.m to i16                    ; 2 uses
  %i.o = and i16 %i.n, 2
  %.not.i.i.i.i = icmp eq i16 %i.o, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.p = and i16 %i.n, 6
  %i.q = icmp eq i16 %i.p, 4
  %.neg2.i.i.i = select i1 %i.q, i64 -56, i64 0
  %.neg3.i.i.i = add nsw i64 %.neg.i.i.i, %.neg2.i.i.i
  %i.r = trunc i64 %i.l to i32
  %i.s = lshr i32 %i.r, 16
  %i.t = getelementptr inbounds i8, ptr %1, i64 -8
  %narrow.i.i.i.i = sub nsw i32 1, %i.s
  %i.u = sext i32 %narrow.i.i.i.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %.neg3.i.i.i, %i.w
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.07.0.copyload.i = load ptr, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  tail call void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(52) %i.y, ptr noundef %i.aa, ptr noundef %i.j, ptr %.sroa.07.0.copyload.i, i32 %.sroa.2.0.copyload.i) #33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i32 %.sroa.0.0.i.i, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ae = shl i32 %.0.i.i, 30
  %i.af = or disjoint i32 %i.ae, 1073741823
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder26AttachExceptionHandlerInfoEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %i.ag, ptr noundef %1)
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1)
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 728
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 284 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp ult i32 %i.al, -2
  br i1 %i.am, label %bb.d, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit

bb.d:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 4
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit, %bb.d
  %i.ao = phi ptr [ %i.ah, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_17GenericBitwiseNotEEEvPT_.exit ], [ %.pre, %bb.d ] ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 912
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 896
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 904
  %i.at = load i64, ptr %i.as, align 8
  %i.au = shl i64 %i.at, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.au, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 696
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 103
  %i.ba = load i8, ptr %i.az, align 1, !range !283, !noundef !284
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 728
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @_ZN2v88internal6maglev8NodeBase24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %i.bb, ptr noundef nonnull align 8 dereferenceable(352) %i.bd) #33
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 456
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store i8 1, ptr %i.bg, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE22MarkPossibleSideEffectINS1_17GenericBitwiseNotEEEvPT_.exit, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 640
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 688
  store i8 1, ptr %i.bi, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_16Float64ToBooleanEJbEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !2141 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !283, !noundef !284
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_16Float64ToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !281

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #33
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = load i8, ptr %3, align 1, !range !283, !noundef !284
  %i.t = and i64 %i.r, -9007199254806528
  %4 = or disjoint i64 %i.t, 262
  %5 = zext nneg i8 %i.s to i64
  %6 = shl nuw nsw i64 %5, 53
  %i.u = or disjoint i64 %6, %4
  store ptr null, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_16Float64ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.015.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aq, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.z = load ptr, ptr %.015.i, align 8           ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i64 %i.ab, 7696581394432
  %i.ad = icmp eq i64 %i.ac, 4398046511104
  br i1 %i.ad, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = and i64 %i.ab, 65535
  %.not.i1.i.i = icmp eq i64 %i.ae, 142
  br i1 %.not.i1.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal6maglev3Phi17RecordUseReprHintENS_4base7EnumSetINS1_17UseRepresentationEaEE(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 16) #33, !inline_history !288
  %.pre.i.i.i8 = load i64, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %.pre.i.i.i8, %bb.g ], [ %i.ab, %bb.f ]
  %i.ag = and i64 %i.af, 65535
  %.not11.i.i.i = icmp eq i64 %i.ag, 80
  br i1 %.not11.i.i.i, label %bb.i, label %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 36 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = or i8 %i.ai, 16
  store i8 %i.aj, ptr %i.ah, align 4
  br label %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i

_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.z, i32 noundef 3), !inline_history !297
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i
  %.0.i = phi ptr [ %i.ak, %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8
  %i.ao = sub nsw i64 0, %indvars.iv.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ao
  store ptr %.0.i, ptr %i.ap, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_16Float64ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_16Float64ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.q)
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_16Float64ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_16Float64ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_16Float64ToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1, ptr %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !guid !2142 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.v8::internal::maglev::KnownNodeAspects::AvailableExpression", align 8 ; 5 uses
  %.fr = freeze i64 %3                            ; 4 uses
  %.idx = shl i64 %.fr, 3                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not36 = icmp eq i64 %.fr, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, label %.lr.ph.split

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us: ; preds = %.lr.ph, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us
  %.02638.us = phi ptr [ %i.e, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %2, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.02638.us, align 8
  %i.d = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.c, i8 noundef zeroext 4)
  %i.e = getelementptr inbounds nuw i8, ptr %.02638.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.e, %i.b
  br i1 %.not.us, label %._crit_edge, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %sum.shift39 = lshr i64 %i.h, 40
  %i.i = trunc i64 %sum.shift39 to i8
  %i.j = and i8 %i.i, 7
  %.off40 = add nsw i8 %i.j, -3
  %switch41 = icmp ult i8 %.off40, 2
  br i1 %switch41, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, label %._crit_edge43, !prof !301

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader: ; preds = %.lr.ph.split
  %.not57 = icmp eq i64 %.fr, 1
  br i1 %.not57, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = and i64 %.fr, 1
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph58
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %sum.shift.prol = lshr i64 %i.o, 40
  %i.p = trunc i64 %sum.shift.prol to i8
  %i.q = and i8 %i.p, 7
  %.off.prol = add nsw i8 %i.q, -3
  %switch.prol = icmp ult i8 %.off.prol, 2
  br i1 %switch.prol, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.prol, label %._crit_edge43, !prof !302

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.prol: ; preds = %.prol.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.prol, %.lr.ph58
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph58 ], [ %i.m, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.prol ]
  %.unr = phi ptr [ %i.k, %.lr.ph58 ], [ %i.r, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.prol ]
  %i.s = icmp eq i64 %.idx, 16
  br i1 %i.s, label %._crit_edge, label %.lr.ph58.new

._crit_edge:                                      ; preds = %.prol.loopexit, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, %bb.a
  %storemerge34.lcssa = phi ptr [ undef, %bb.a ], [ %i.d, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %i.f, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader ], [ %.lcssa61.unr, %.prol.loopexit ], [ %i.bv, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1 ] ; 5 uses
  %.val1.val.i = load i8, ptr %4, align 1, !range !283, !noundef !284 ; 2 uses
  %i.t = shl nuw nsw i8 %.val1.val.i, 6
  %i.u = zext nneg i8 %i.t to i64
  %i.v = or disjoint i64 %i.u, 1404323607
  %i.w = ptrtoint ptr %storemerge34.lcssa to i64  ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 2147483649
  %i.aj = add i64 %i.v, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 728
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 240 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ap, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp ult i32 %i.as, %i.ak               ; 2 uses
  %.19.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i, %i.aq
  br i1 %i.au, label %.critedge.i, label %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i

_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp ugt i32 %i.aw, %i.ak
  br i1 %i.ax, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %trunc.i = trunc i64 %i.bb to i16
  switch i16 %trunc.i, label %.critedge.i [
    i16 67, label %bb.c
    i16 262, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.bc = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #33 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 272 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.bd, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.bg = and i64 %i.bb, 4294901760
  %i.bh = icmp eq i64 %i.bg, 65536
  br i1 %i.bh, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.bi = lshr i64 %i.bb, 53
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, %.val1.val.i
  br i1 %i.bl, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.e
  %i.bm = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not33.i = icmp eq ptr %storemerge34.lcssa, %i.bn
  br i1 %.not33.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_16Float64ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

.lr.ph58.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1
  %i.bo = phi ptr [ %i.ca, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1 ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8
  %sum.shift = lshr i64 %i.br, 40
  %i.bs = trunc i64 %sum.shift to i8
  %i.bt = and i8 %i.bs, 7
  %.off = add nsw i8 %i.bt, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, label %._crit_edge43, !prof !302

._crit_edge43:                                    ; preds = %.prol.preheader, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, %.lr.ph58.new, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177) #32
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread: ; preds = %.lr.ph58.new
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %sum.shift.1 = lshr i64 %i.bx, 40
  %i.by = trunc i64 %sum.shift.1 to i8
  %i.bz = and i8 %i.by, 7
  %.off.1 = add nsw i8 %i.bz, -3
  %switch.1 = icmp ult i8 %.off.1, 2
  br i1 %switch.1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1, label %._crit_edge43, !prof !302

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1: ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.1, label %._crit_edge, label %.lr.ph58.new

.critedge.i:                                      ; preds = %bb.b, %bb.d, %bb.e, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.c, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = icmp ult i64 %i.ch, 32
  br i1 %i.ci, label %bb.f, label %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !281

bb.f:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 noundef 32) #33
  %.pre.i.i.i = load i64, ptr %i.cf, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.f
  %i.cj = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.cg, %.critedge.i ] ; 2 uses
  %i.ck = add i64 %i.cj, 32
  store i64 %i.ck, ptr %i.cf, align 8
  %i.cl = add i64 %i.cj, 8
  %i.cm = inttoptr i64 %i.cl to ptr               ; 7 uses
  %i.cn = load i8, ptr %4, align 1, !range !283, !noundef !284
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 53
  %i.cq = or disjoint i64 %i.cp, 65798
  store ptr null, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 8
  %i.cu = load i64, ptr %i.ct, align 8
  %sum.shift.i = lshr i64 %i.cu, 40
  %i.cv = trunc i64 %sum.shift.i to i8
  %i.cw = and i8 %i.cv, 7
  %.off.i = add nsw i8 %i.cw, -3
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_16Float64ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.g, !prof !300

bb.g:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_16Float64ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_16Float64ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.cx = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cy = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 16 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 8
  store ptr %storemerge34.lcssa, ptr %i.cx, align 8
  %i.db = load ptr, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 728
  %i.dd = load ptr, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ak, ptr %i.a, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.cm, ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.df, align 8
  %i.dg = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cm)
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_16Float64ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_16Float64ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_16Float64ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.cm, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_16Float64ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.az, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_14Int32ToBooleanEJbEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !2143 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !283, !noundef !284
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_14Int32ToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !281

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #33
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = load i8, ptr %3, align 1, !range !283, !noundef !284
  %i.t = and i64 %i.r, -9007199254806528
  %4 = or disjoint i64 %i.t, 251
  %5 = zext nneg i8 %i.s to i64
  %6 = shl nuw nsw i64 %5, 53
  %i.u = or disjoint i64 %6, %4
  store ptr null, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_14Int32ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.015.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ak, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.z = load ptr, ptr %.015.i, align 8           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 7696581394432
  %i.ad = icmp eq i64 %i.ac, 1099511627776
  br i1 %i.ad, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE8GetInt32EPNS1_9ValueNodeEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.z, i1 noundef zeroext false), !inline_history !288
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8
  %i.ai = sub nsw i64 0, %indvars.iv.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ai
  store ptr %.0.i, ptr %i.aj, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.x
  br i1 %.not.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_14Int32ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_14Int32ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.q)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_14Int32ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_14Int32ToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_14Int32ToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1, ptr %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !guid !2144 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.v8::internal::maglev::KnownNodeAspects::AvailableExpression", align 8 ; 5 uses
  %.idx = shl nuw nsw i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not36 = icmp eq i64 %3, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, label %.lr.ph.split

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us: ; preds = %.lr.ph, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us
  %.02638.us = phi ptr [ %i.e, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %2, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.02638.us, align 8
  %i.d = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.c, i8 noundef zeroext 1)
  %i.e = getelementptr inbounds nuw i8, ptr %.02638.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.e, %i.b
  br i1 %.not.us, label %._crit_edge, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 7696581394432
  %i.j = icmp eq i64 %i.i, 1099511627776
  br i1 %i.j, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader: ; preds = %.lr.ph.split
  %.not53 = icmp eq i64 %3, 1
  br i1 %.not53, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, %bb.a
  %storemerge34.lcssa = phi ptr [ undef, %bb.a ], [ %i.d, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %i.f, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader ], [ %i.bk, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread ] ; 5 uses
  %.val1.val.i = load i8, ptr %4, align 1, !range !283, !noundef !284 ; 2 uses
  %i.l = zext nneg i8 %.val1.val.i to i64
  %i.m = add nuw nsw i64 %i.l, 2654451895         ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 2654435769
  %i.p = lshr i64 %i.m, 2
  %i.q = add nuw nsw i64 %i.o, %i.p
  %i.r = ptrtoint ptr %storemerge34.lcssa to i64  ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = shl i64 %i.r, 21
  %i.u = add i64 %i.t, %i.s                       ; 2 uses
  %i.v = lshr i64 %i.u, 24
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, 265                        ; 2 uses
  %i.y = lshr i64 %i.x, 14
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 21                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 28
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 2147483649
  %i.ae = add i64 %i.q, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ak, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.al, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp ult i32 %i.an, %i.af               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.al
  br i1 %i.ap, label %.critedge.i, label %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i

_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ugt i32 %i.ar, %i.af
  br i1 %i.as, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %trunc.i = trunc i64 %i.aw to i16
  switch i16 %trunc.i, label %.critedge.i [
    i16 67, label %bb.c
    i16 251, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #33 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 272 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.bb = and i64 %i.aw, 4294901760
  %i.bc = icmp eq i64 %i.bb, 65536
  br i1 %i.bc, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.bd = lshr i64 %i.aw, 53
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, %.val1.val.i
  br i1 %i.bg, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.e
  %i.bh = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not33.i = icmp eq ptr %storemerge34.lcssa, %i.bi
  br i1 %.not33.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_14Int32ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph54, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread
  %i.bj = phi ptr [ %i.k, %.lr.ph54 ], [ %i.bp, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread ] ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 7696581394432
  %i.bo = icmp eq i64 %i.bn, 1099511627776
  br i1 %i.bo, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit: ; preds = %bb.f, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177) #32
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread: ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

.critedge.i:                                      ; preds = %bb.b, %bb.d, %bb.e, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.c, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = sub i64 %i.bt, %i.bv
  %i.bx = icmp ult i64 %i.bw, 32
  br i1 %i.bx, label %bb.g, label %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !281

bb.g:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 noundef 32) #33
  %.pre.i.i.i = load i64, ptr %i.bu, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.g
  %i.by = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.bv, %.critedge.i ] ; 2 uses
  %i.bz = add i64 %i.by, 32
  store i64 %i.bz, ptr %i.bu, align 8
  %i.ca = add i64 %i.by, 8
  %i.cb = inttoptr i64 %i.ca to ptr               ; 7 uses
  %i.cc = load i8, ptr %4, align 1, !range !283, !noundef !284
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 53
  %i.cf = or disjoint i64 %i.ce, 65787
  store ptr null, ptr %i.cb, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = and i64 %i.cj, 7696581394432
  %i.cl = icmp eq i64 %i.ck, 1099511627776
  br i1 %i.cl, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_14Int32ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_14Int32ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14Int32ToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.cm = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 16 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8
  store ptr %storemerge34.lcssa, ptr %i.cm, align 8
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 728
  %i.cs = load ptr, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.af, ptr %i.a, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.cb, ptr %5, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.cu, align 8
  %i.cv = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cb)
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_14Int32ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_14Int32ToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_14Int32ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.cb, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_14Int32ToBooleanESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.au, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15IntPtrToBooleanEJbEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !2145 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !283, !noundef !284
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_15IntPtrToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15IntPtrToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !281

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #33
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15IntPtrToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_15IntPtrToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = load i8, ptr %3, align 1, !range !283, !noundef !284
  %i.t = and i64 %i.r, -9007199254806528
  %4 = or disjoint i64 %i.t, 180
  %5 = zext nneg i8 %i.s to i64
  %6 = shl nuw nsw i64 %5, 53
  %i.u = or disjoint i64 %6, %4
  store ptr null, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_15IntPtrToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_15IntPtrToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.015.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aj, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.z = load ptr, ptr %.015.i, align 8           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 7696581394432
  %i.ad = icmp eq i64 %i.ac, 5497558138880
  br i1 %i.ad, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !288
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  %i.ah = sub nsw i64 0, %indvars.iv.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ah
  store ptr %i.z, ptr %i.ai, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.x
  br i1 %.not.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_15IntPtrToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_15IntPtrToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %_ZN2v88internal6maglev8NodeBase3NewINS1_15IntPtrToBooleanEJbEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.q)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_15IntPtrToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_15IntPtrToBooleanESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_15IntPtrToBooleanEJbEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1, ptr %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !guid !2146 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.v8::internal::maglev::KnownNodeAspects::AvailableExpression", align 8 ; 5 uses
  %.idx = shl nuw nsw i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not36 = icmp eq i64 %3, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, label %.lr.ph.split

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us: ; preds = %.lr.ph, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us
  %.02638.us = phi ptr [ %i.e, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %2, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.02638.us, align 8
  %i.d = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.c, i8 noundef zeroext 5)
  %i.e = getelementptr inbounds nuw i8, ptr %.02638.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.e, %i.b
  br i1 %.not.us, label %._crit_edge, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 7696581394432
  %i.j = icmp eq i64 %i.i, 5497558138880
  br i1 %i.j, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader: ; preds = %.lr.ph.split
  %.not53 = icmp eq i64 %3, 1
  br i1 %.not53, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader, %bb.a
  %storemerge34.lcssa = phi ptr [ undef, %bb.a ], [ %i.d, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.us ], [ %i.f, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.preheader ], [ %i.bh, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread ] ; 5 uses
  %.val1.val.i = load i8, ptr %4, align 1, !range !283, !noundef !284 ; 2 uses
  %i.l = shl nuw nsw i8 %.val1.val.i, 6
  %i.m = zext nneg i8 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1403985138
  %i.o = ptrtoint ptr %storemerge34.lcssa to i64  ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = shl i64 %i.o, 21
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = lshr i64 %i.r, 24
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, 265                        ; 2 uses
  %i.v = lshr i64 %i.u, 14
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, 21                         ; 2 uses
  %i.y = lshr i64 %i.x, 28
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 2147483649
  %i.ab = add i64 %i.n, %i.aa
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 728
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 240 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp ult i32 %i.ak, %i.ac               ; 2 uses
  %.19.i.i.i.i = select i1 %i.al, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.al, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.am = icmp eq ptr %.19.i.i.i.i, %i.ai
  br i1 %i.am, label %.critedge.i, label %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i

_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp ugt i32 %i.ao, %i.ac
  br i1 %i.ap, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %trunc.i = trunc i64 %i.at to i16
  switch i16 %trunc.i, label %.critedge.i [
    i16 67, label %bb.c
    i16 180, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.au = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #33 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 272 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.av, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.ay = and i64 %i.at, 4294901760
  %i.az = icmp eq i64 %i.ay, 65536
  br i1 %i.az, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ba = lshr i64 %i.at, 53
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = icmp eq i8 %i.bc, %.val1.val.i
  br i1 %i.bd, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.e
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8
  %.not33.i = icmp eq ptr %storemerge34.lcssa, %i.bf
  br i1 %.not33.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_15IntPtrToBooleanEJbEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph54, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread
  %i.bg = phi ptr [ %i.k, %.lr.ph54 ], [ %i.bm, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread ] ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 7696581394432
  %i.bl = icmp eq i64 %i.bk, 5497558138880
  br i1 %i.bl, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit: ; preds = %bb.f, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177) #32
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

.critedge.i:                                      ; preds = %bb.b, %bb.d, %bb.e, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.c, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
end_hunk_0
