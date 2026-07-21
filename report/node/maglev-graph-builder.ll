inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitGetNamedPropertyEv:bb.a
bb.e:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZN2v88internal8compiler14FeedbackSourceC1ENS1_17FeedbackVectorRefENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr nonnull %i.x, i32 %i.r) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %1, align 8
  store ptr %i.h, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %4, ptr %i.aa, align 8
  %i.ab = call fastcc i64 @"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_S7_S9_OT_"(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.h, ptr noundef %i.h, ptr nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !121 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = and i64 %i.ab, 7
  switch i64 %i.ac, label %.thread [
    i64 3, label %bb.g
    i64 0, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.ad = inttoptr i64 %i.ab to ptr
  br label %.thread.sink.split

bb.g:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -48
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ult i64 %i.an, 152
  br i1 %i.ao, label %bb.h, label %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 noundef 152) #33
  %.pre.i.i.i.i = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i

_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i: ; preds = %bb.h, %bb.g
  %i.ap = phi i64 [ %.pre.i.i.i.i, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %i.aq = add i64 %i.ap, 152
  store i64 %i.aq, ptr %i.al, align 8
  %i.ar = add i64 %i.ap, 104
  %i.as = inttoptr i64 %i.ar to ptr               ; 8 uses
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 536871043203, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.q, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 7696581394432
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.bc = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.ag, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i: ; preds = %bb.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %.0.i.i = phi ptr [ %i.ag, %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8
  store ptr %.0.i.i, ptr %i.ax, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 7696581394432
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  %i.bk = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.h, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1: ; preds = %bb.j, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  %.0.i.i.1 = phi ptr [ %i.h, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i ], [ %i.bk, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 16 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 -16
  store ptr %.0.i.i.1, ptr %i.bo, align 8
  %i.bp = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_16LoadNamedGenericEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.as)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1, %bb.f
  %.sink = phi ptr [ %i.ad, %bb.f ], [ %i.bp, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1 ]
  %.sroa.08.1.ph = phi i64 [ %i.ab, %bb.f ], [ 2, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1 ]
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -64
  store ptr %.sink, ptr %i.br, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %.sroa.08.1 = phi i64 [ %i.ab, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit ], [ %.sroa.08.1.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40GetConstantSingleCharacterStringFromCodeEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp ult i16 %1, 256
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i16 %1, 328                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.e, ptr %i.a, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp ult i16 %i.m, %i.e                  ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.n, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i.i.i.i, %i.k
  br i1 %i.o, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.q = load i16, ptr %i.p, align 2
  %i.r = icmp ult i16 %i.e, %i.q
  br i1 %i.r, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %bb.c

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.s = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.s, ptr %i.b, align 8
  %i.t = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

bb.c:                                             ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.u, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %.sroa.0.0 = phi i64 [ %i.x, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit ], [ 3, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 4, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %2 = alloca %"class.v8::base::SmallVector.2648", align 8 ; 9 uses
  %3 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %4 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 26 uses
  %5 = alloca %"class.std::optional.2650", align 4 ; 9 uses
  %6 = alloca %"class.std::optional.636", align 8 ; 8 uses
  %7 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %8 = alloca %"class.std::optional.636", align 8 ; 6 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [2 x ptr], align 8                ; 5 uses
  %.sroa.597 = alloca [18 x i8], align 4          ; 3 uses
  %9 = alloca %"class.std::optional.888", align 8 ; 8 uses
  %10 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %14 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 8 uses
  %16 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %18 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %20 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %21 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 6 uses
  %22 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %i.j = alloca [2 x ptr], align 8                ; 5 uses
  %23 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %24 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 6 uses
  %25 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 9 uses
  %26 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %27 = alloca %"class.v8::internal::compiler::PropertyAccessInfo", align 8 ; 14 uses
  %28 = alloca %"class.v8::internal::compiler::AccessInfoFactory", align 8 ; 4 uses
  %29 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 6 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca [1 x ptr], align 8                ; 4 uses
  %30 = alloca %"class.v8::internal::compiler::FeedbackCellRef", align 8 ; 4 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %31 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %32 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 7 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %33 = alloca %class.anon.918, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.q = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef 0) #33
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.m, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -64
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 14 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef 1, ptr noundef %i.aa) #33 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = tail call ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %i.y, i64 %i.ad)
  br label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i

_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.01.0.i.i = phi ptr [ %i.ae, %bb.b ], [ null, %bb.a ]
  %i.af = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_4NameEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %i.y, ptr %.sroa.01.0.i.i, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  store ptr %i.af, ptr %31, align 8
  %i.ag = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef 2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  store ptr %i.ak, ptr %30, align 8
  %i.al = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit6brokerEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ai) #33
  %i.am = call ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %i.al) #33 ; 2 uses
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i7, label %bb.e, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit, !prof !6

bb.e:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @_ZN2v88internal8compiler14FeedbackSourceC1ENS1_17FeedbackVectorRefENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(12) %32, ptr nonnull %i.am, i32 %i.ag) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 0, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  store ptr %i.w, ptr %i.l, align 8
  %i.an = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.l, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  %i.ao = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.an, i32 noundef 24) ; 27 uses
  store ptr %i.ao, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  store ptr %0, ptr %33, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.m, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.n, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr %31, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %32, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.m, align 8             ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %31, align 8 ; 2 uses
  %i.au = load ptr, ptr %i.x, align 8
  %i.av = call noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker28GetFeedbackForPropertyAccessERKNS1_14FeedbackSourceENS1_10AccessModeENS1_11OptionalRefINS1_7NameRefEEE(ptr noundef nonnull align 8 dereferenceable(8560) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %32, i8 noundef zeroext 0, ptr %.sroa.0.0.copyload) #33, !inline_history !122 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  switch i32 %i.aw, label %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit.thread127" [
    i32 0, label %.thread129
    i32 11, label %bb.f
  ]

.thread129:                                       ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 22, ptr %i.c, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = or i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  %i.bc = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread133

bb.f:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.bd = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder25TryReuseKnownPropertyLoadEPNS1_9ValueNodeENS0_8compiler7NameRefE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao, ptr %.sroa.0.0.copyload), !inline_history !122 ; 2 uses
  %i.be = and i64 %i.bd, 7
  %.not = icmp eq i64 %i.be, 3
  br i1 %.not, label %.critedge.i, label %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit"

.critedge.i:                                      ; preds = %bb.f
  %i.bf = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK2v88internal8compiler17ProcessedFeedback13AsNamedAccessEv(ptr noundef nonnull align 4 dereferenceable(5) %i.av) #33, !inline_history !122 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store i64 1, ptr %15, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %.loopexit.i.i.i, %.critedge.i
  %.tr17.i.i = phi ptr [ %i.ao, %.critedge.i ], [ %.0.i7.ph.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.x, align 8
  %i.bi = call ptr @_ZN2v88internal6maglev9ValueNode14TryGetConstantEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %.tr17.i.i, ptr noundef %i.bh) #33, !inline_history !123 ; 5 uses
  %.not16.i.i = icmp eq ptr %i.bi, null
  br i1 %.not16.i.i, label %bb.g, label %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit.i

bb.g:                                             ; preds = %tailrecurse.i.i
  %i.bj = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 312
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.g ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bm, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp ult ptr %i.bo, %.tr17.i.i          ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.bp, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bq = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.bm
  br i1 %i.bq, label %bb.p, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  store ptr %i.ib, ptr %i.hd, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEE9push_backERKS3_.exit.i, %bb.aj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.ie = load ptr, ptr %i.gb, align 8            ; 4 uses
  store ptr %i.ie, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.gt, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, i8 0, i64 24, i1 false)
  %i.ig = load ptr, ptr %i.gc, align 8            ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.ii = load ptr, ptr %i.gd, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.ii, %i.ig
  br i1 %.not.i37, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.ij = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.il = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.ij                    ; 5 uses
  %.not23.i = icmp eq ptr %i.il, %i.ig
  br i1 %.not23.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.io = icmp sgt i64 %i.in, -1
  br i1 %i.io, label %bb.an, label %bb.am, !prof !5

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 3 uses
  %i.is = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.it = sub i64 %i.iq, %i.is
  %i.iu = icmp ugt i64 %i.in, %i.it
  br i1 %i.iu, label %bb.ao, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !6

bb.ao:                                            ; preds = %bb.an
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, i64 noundef %i.in) #33
  %.pre.i.i.i = load i64, ptr %i.ir, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ao, %bb.an
  %i.iv = phi i64 [ %.pre.i.i.i, %bb.ao ], [ %i.is, %bb.an ] ; 2 uses
  %i.iw = inttoptr i64 %i.iv to ptr               ; 2 uses
  %i.ix = add i64 %i.iv, %i.in
  store i64 %i.ix, ptr %i.ir, align 8
  store ptr %i.iw, ptr %i.if, align 8
  %i.iy = load ptr, ptr %i.gc, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.iz = load ptr, ptr %i.gd, align 8
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.iw, ptr nonnull align 8 %i.iy, i64 %i.jc, i1 false)
  %.pre.i = load ptr, ptr %i.if, align 8
  %.pre229 = load ptr, ptr %i.gd, align 8
  %.pre230 = load ptr, ptr %i.gc, align 8
  %.pre232 = ptrtoint ptr %.pre230 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %.pre-phi = phi i64 [ %i.ij, %bb.ak ], [ %.pre232, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jd = phi ptr [ %i.ii, %bb.ak ], [ %.pre229, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.je = phi ptr [ null, %bb.ak ], [ %.pre.i, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.in
  store ptr %i.jf, ptr %i.ih, align 8
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jg, %.pre-phi
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  store ptr %i.ji, ptr %i.ik, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gt, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.jj, ptr noundef nonnull align 8 dereferenceable(65) %i.gf, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.jk = add nuw i64 %.sroa.5.0146, 1            ; 2 uses
  %.not138 = icmp eq i64 %i.jk, %.0.i.i.i207
  br i1 %.not138, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.aq, %bb.z, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  %i.jl = load ptr, ptr %i.x, align 8
  %i.jm = load ptr, ptr %i.ah, align 8
  %i.jn = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.jm) #33, !inline_history !124
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %i.jl, ptr noundef %i.jn) #33, !inline_history !124
  %i.jo = load ptr, ptr %25, align 8
  store ptr %i.jo, ptr %29, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i8 0, i64 24, i1 false)
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %25) #33, !inline_history !124 ; 0 uses
  %i.jr = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull %29, i8 noundef zeroext 0, ptr noundef nonnull %24) #33, !inline_history !124
  br i1 %i.jr, label %bb.ar, label %bb.dd

bb.ar:                                            ; preds = %._crit_edge
  %i.js = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = load ptr, ptr %i.fi, align 8            ; 4 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 168
  br i1 %i.jy, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8            ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8            ; 4 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 3                 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.kc, %i.ka
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 8 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.kh, %i.kc
  br i1 %.not.i102.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.as, %bb.at
  %.01013.i.i = phi ptr [ %i.kh, %bb.at ], [ %i.ka, %bb.as ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.ki = load i64, ptr %.01013.i.i, align 8
  store i64 %i.ki, ptr %13, align 8
  %i.kj = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #33, !inline_history !124
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br i1 %i.kj, label %bb.at, label %.lr.ph.i104.i

.loopexit:                                        ; preds = %bb.at, %bb.as
  %i.kk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !10, !noundef !11
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.au, label %.critedge8.i

bb.au:                                            ; preds = %.loopexit
  %i.km = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_30VisitGetNamedPropertyFromSuperEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.ka, i64 %i.kg), !inline_history !124
  br i1 %i.km, label %bb.av, label %.critedge8.i

bb.av:                                            ; preds = %bb.au
  %i.kn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !124
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.dd, label %bb.ay

.critedge8.i:                                     ; preds = %.loopexit, %bb.au
  %i.kp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !124
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.dd, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i104.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 8 ; 2 uses
  %.not.i106.i = icmp eq ptr %i.kr, %i.kc
  br i1 %.not.i106.i, label %bb.ax, label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %.lr.ph.i.i, %bb.aw
  %.01014.i.i = phi ptr [ %i.kr, %bb.aw ], [ %i.ka, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ks = load i64, ptr %.01014.i.i, align 8
  store i64 %i.ks, ptr %12, align 8
  %i.kt = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #33, !inline_history !124
  %.not11.i.i = icmp eq i16 %i.kt, 130
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %.not11.i.i, label %bb.aw, label %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ku = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !124
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dd, label %bb.ay

_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i: ; preds = %.lr.ph.i104.i
  %i.kw = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao, ptr %i.ka, i64 %i.kg, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !124
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.dd, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i, %bb.ax, %.critedge8.i, %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i107.i = load ptr, ptr %i.ky, align 8
  %i.kz = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20TryBuildPropertyLoadEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.at, ptr noundef %i.ao, ptr %.sroa.0.0.copyload.i107.i, ptr noundef nonnull align 8 dereferenceable(168) %i.ju), !inline_history !125
  br label %bb.dd

bb.az:                                            ; preds = %bb.ar
  %i.la = sdiv exact i64 %i.jx, 168               ; 5 uses
  %i.lb = trunc i64 %i.la to i32                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.ld = load i8, ptr %i.lc, align 8, !range !10, !noundef !11
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = icmp sgt i32 %i.lb, 0                   ; 2 uses
  br i1 %i.lf, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %bb.az
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not15.i.i = icmp eq ptr %i.ao, null
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %wide.trip.count = and i64 %i.la, 2147483647
  br label %bb.ba

._crit_edge160:                                   ; preds = %._crit_edge153, %bb.az
  %.0101.i.i.lcssa = phi i1 [ false, %bb.az ], [ %.1102.i.i.lcssa, %._crit_edge153 ] ; 2 uses
  %.0.i.i.lcssa = phi i32 [ -1, %bb.az ], [ %.1.i.i.lcssa, %._crit_edge153 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 1), !inline_history !126
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i8 0, ptr %i.lr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 0, ptr %i.ls, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i8 0, ptr %i.lt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store i8 0, ptr %i.lu, align 8
  %i.lv = icmp sgt i32 %.0.i.i.lcssa, -1
  br i1 %i.lv, label %bb.bf, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph159, %._crit_edge153
  %indvars.iv = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next, %._crit_edge153 ] ; 3 uses
  %.0.i.i157 = phi i32 [ -1, %.lr.ph159 ], [ %.1.i.i.lcssa, %._crit_edge153 ] ; 2 uses
  %.0101.i.i156 = phi i1 [ false, %.lr.ph159 ], [ %.1102.i.i.lcssa, %._crit_edge153 ] ; 2 uses
  %i.lw = load ptr, ptr %i.fi, align 8
  %i.lx = getelementptr inbounds nuw [168 x i8], ptr %i.lw, i64 %indvars.iv ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8            ; 2 uses
  %.not114.i.i147 = icmp eq ptr %i.lz, %i.mb
  br i1 %.not114.i.i147, label %._crit_edge153, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %bb.ba
  %i.mc = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph152

._crit_edge153:                                   ; preds = %bb.be, %bb.ba
  %.1102.i.i.lcssa = phi i1 [ %.0101.i.i156, %bb.ba ], [ %spec.select.i.i, %bb.be ] ; 2 uses
  %.1.i.i.lcssa = phi i32 [ %.0.i.i157, %bb.ba ], [ %.3.i.i, %bb.be ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge160, label %bb.ba, !llvm.loop !127

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %bb.be
  %.1.i.i150 = phi i32 [ %.3.i.i, %bb.be ], [ %.0.i.i157, %.lr.ph152.preheader ] ; 3 uses
  %.1102.i.i149 = phi i1 [ %spec.select.i.i, %bb.be ], [ %.0101.i.i156, %.lr.ph152.preheader ]
  %.0109.i.i148 = phi ptr [ %i.nr, %bb.be ], [ %i.lz, %.lr.ph152.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.md = load i64, ptr %.0109.i.i148, align 8
  store i64 %i.md, ptr %1, align 8
  %i.me = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !126
  %spec.select.i.i = select i1 %i.me, i1 true, i1 %.1102.i.i149 ; 2 uses
  %i.mf = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !126
  br i1 %i.mf, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i, label %bb.be

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i: ; preds = %.lr.ph152
  %i.mg = load ptr, ptr %i.bg, align 8
  %i.mh = load ptr, ptr %i.x, align 8
  %i.mi = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.mg, ptr noundef %i.mh, ptr noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.mj = load i64, ptr %1, align 8
  store ptr %i.lg, ptr %2, align 8
  store ptr %i.lj, ptr %i.li, align 8
  store i64 %i.mj, ptr %i.lg, align 8
  store ptr %i.lj, ptr %i.lh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.mk = load ptr, ptr %i.x, align 8
  %i.ml = load ptr, ptr %i.ah, align 8
  %i.mm = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ml) #33
  %i.mn = load ptr, ptr %2, align 8               ; 2 uses
  %i.mo = load ptr, ptr %i.lh, align 8
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = ashr exact i64 %i.mr, 3
  store ptr %i.mk, ptr %3, align 8
  store ptr %i.mm, ptr %i.lk, align 8
  store ptr %i.mn, ptr %i.ll, align 8
  store i64 %i.ms, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 1, ptr %i.lm, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ln, align 8
  store i32 0, ptr %i.lo, align 4
  %i.mt = load ptr, ptr %i.bg, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(352) %i.mt), !inline_history !126
  %.sroa.01.0.copyload.i = load i64, ptr %i.lm, align 8
  %i.mu = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.mu, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i
  %i.mv = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.mw = load ptr, ptr %i.x, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 312
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.my, null
  br i1 %.not10.i.i.i.i.i.i.i.i22, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i.i23:                         ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i.i.i24 = phi ptr [ %.1.i.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %i.my, %bb.bb ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i25 = phi ptr [ %.19.i.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %i.mz, %bb.bb ]
  %i.na = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i24, i64 32
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = icmp ult ptr %i.nb, %i.ao               ; 2 uses
  %.19.i.i.i.i.i.i.i.i26 = select i1 %i.nc, ptr %.0811.i.i.i.i.i.i.i.i25, ptr %.012.i.i.i.i.i.i.i.i24 ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i27 = select i1 %i.nc, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i24, i64 %.1.in.v.i.i.i.i.i.i.i.i27
  %.1.i.i.i.i.i.i.i.i29 = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i28, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i.i.i.i.i29, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i23, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i.i23
  %i.nd = icmp eq ptr %.19.i.i.i.i.i.i.i.i26, %i.mz
  br i1 %i.nd, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31
  %i.ne = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i26, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = icmp ult ptr %i.ao, %i.nf
  br i1 %i.ng, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31, %bb.bb
  %i.nh = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef %i.mw) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32
  %i.ni = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i26, i64 40
  %i.nj = load i32, ptr %i.ni, align 8            ; 2 uses
  %i.nk = load i64, ptr %i.lp, align 8
  %i.nl = and i64 %i.nk, 65535
  %i.nm = icmp ne i64 %i.nl, 142
  %.not.i.i33 = or i1 %.not15.i.i, %i.nm
  br i1 %.not.i.i33, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.nn = load i32, ptr %i.lq, align 8
  %i.no = and i32 %i.nn, %i.nj
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.bc
  %.0.i.i34 = phi i32 [ %i.nh, %select.unfold.i.i ], [ %i.no, %bb.bc ], [ %i.nj, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.np = and i32 %.0.i.i34, 1
  %i.nq = icmp eq i32 %i.np, 0
  %spec.select115.i.i = select i1 %i.nq, i32 %.1.i.i150, i32 %i.mc
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i
  %.2.i.i = phi i32 [ %.1.i.i150, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i ], [ %spec.select115.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph152
  %.3.i.i = phi i32 [ %.2.i.i, %bb.bd ], [ %.1.i.i150, %.lr.ph152 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.nr = getelementptr inbounds nuw i8, ptr %.0109.i.i148, i64 8 ; 2 uses
  %.not114.i.i = icmp eq ptr %i.nr, %i.mb
  br i1 %.not114.i.i, label %._crit_edge153, label %.lr.ph152

bb.bf:                                            ; preds = %._crit_edge160
  store i8 0, ptr %i.lt, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %4, i32 noundef 2)
  store i8 1, ptr %i.lt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ao, ptr %i.d, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %7, ptr nonnull %i.d, i64 1), !inline_history !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bj

bb.bg:                                            ; preds = %._crit_edge160
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = and i64 %i.nt, 7696581394432
  switch i64 %i.nu, label %bb.bh [
    i64 0, label %bb.bi
    i64 4398046511104, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 70, ptr %i.b, align 1
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = or i8 %i.ny, 1
  store i8 %i.nz, ptr %i.nx, align 1
  %i.oa = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i"

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  %i.ob = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.ao), !inline_history !126
  %i.oc = icmp eq i64 %i.ob, 1
  br i1 %i.oc, label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.od = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !126 ; 2 uses
  br i1 %.0101.i.i.lcssa, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.od, ptr %i.e, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %i.oe, align 8
  %i.of = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_18MigrateMapIfNeededEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.e, i64 2), !inline_history !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0110.i.i = phi ptr [ %i.of, %bb.bk ], [ %i.od, %bb.bj ]
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = zext i32 %i.on to i64
  %i.op = add i64 %i.ol, %i.oo
  %i.oq = sub i64 %i.ok, %i.op
  %i.or = trunc i64 %i.oq to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.597)
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.ot = load i32, ptr %i.os, align 8, !noalias !128 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.sroa.597.8..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.sroa.597, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.597.8..sroa_idx99, ptr noundef nonnull align 8 dereferenceable(14) %i.ou, i64 14, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.ow = load i32, ptr %i.ov, align 8, !noalias !128 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.oy = load i32, ptr %i.ox, align 4, !noalias !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.oz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pa = call { i64, i8 } @_ZN2v88internal6maglev18MaglevGraphBuilder42FindContinuationForPolymorphicPropertyLoadEv(ptr noundef nonnull align 8 dereferenceable(953) %0), !inline_history !126 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.pa, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.pa, 1 ; 3 uses
  store i64 %.fca.0.extract.i.i, ptr %9, align 8
  store i8 %.fca.1.extract.i.i, ptr %i.oz, align 8
  br i1 %i.lf, label %.lr.ph167, label %.loopexit141

.lr.ph167:                                        ; preds = %bb.bl
  %i.pb = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.pc = add nsw i64 %i.la, 4294967295
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.pj = trunc nuw i8 %.fca.1.extract.i.i to i1  ; 3 uses
  %i.pk = add nuw i32 %i.lb, 1
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.po = zext i32 %.0.i.i.lcssa to i64
  %i.pp = and i64 %i.pc, 4294967295
  %wide.trip.count174 = and i64 %i.la, 2147483647
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph167, %bb.cr
  %indvars.iv171 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next172, %bb.cr ] ; 6 uses
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef %i.or) #33, !inline_history !126
  store i32 %i.ot, ptr %i.os, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ou, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.597.8..sroa_idx99, i64 14, i1 false)
  store i32 %i.ow, ptr %i.ov, align 8
  store i32 %i.oy, ptr %i.ox, align 4
  %i.pr = load ptr, ptr %i.fi, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitGetKeyedPropertyEv:bb.a
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp ult i16 %i.bs, 128
  br i1 %i.bt, label %bb.i, label %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load atomic i32, ptr %i.bu monotonic, align 8 ; 3 uses
  %i.bw = and i32 %i.bv, -536870909
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread21, label %bb.j

_ZN2v88internal4Name12IsArrayIndexEv.exit.thread21: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.by = trunc i32 %i.bv to i1
  %i.bz = and i32 %i.bv, 3
  %i.ca = icmp eq i32 %i.bz, 0
  %or.cond.i.i.i = or i1 %i.ca, %i.by
  br i1 %or.cond.i.i.i, label %_ZN2v88internal4Name12IsArrayIndexEv.exit, label %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread

_ZN2v88internal4Name12IsArrayIndexEv.exit.thread: ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.k

_ZN2v88internal4Name12IsArrayIndexEv.exit:        ; preds = %bb.j
  %i.cb = call noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.cb, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread, %_ZN2v88internal4Name12IsArrayIndexEv.exit
  %i.cc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK2v88internal8compiler17ProcessedFeedback15AsElementAccessEv(ptr noundef nonnull align 4 dereferenceable(5) %i.r) #33
  %i.cd = load ptr, ptr %i.p, align 8
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %i.ce = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK2v88internal8compiler21ElementAccessFeedback6RefineEPNS1_12JSHeapBrokerENS1_7NameRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef %i.cd, ptr %.sroa.0.0.copyload) #33
  br label %.critedge2

.critedge2:                                       ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit14, %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread21, %bb.k, %_ZN2v88internal4Name12IsArrayIndexEv.exit
  %.0 = phi ptr [ %i.ce, %bb.k ], [ %i.r, %_ZN2v88internal4Name12IsArrayIndexEv.exit ], [ %i.r, %_ZN2v88internal4Name12IsArrayIndexEv.exit.thread21 ], [ %i.r, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.critedge

.critedge:                                        ; preds = %.loopexit.i.i, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i, %bb.f, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit, %.critedge2, %bb.d, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %.2 = phi ptr [ %i.r, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit ], [ %i.r, %bb.d ], [ %.0, %.critedge2 ], [ %i.r, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit ], [ %i.r, %bb.f ], [ %i.r, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i ], [ %i.r, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i ], [ %i.r, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ], [ %i.r, %.loopexit.i.i ]
  %i.cf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS5_17ProcessedFeedbackE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 %i.cf
}

declare noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker28GetFeedbackForPropertyAccessERKNS1_14FeedbackSourceENS1_10AccessModeENS1_11OptionalRefINS1_7NameRefEEE(ptr noundef nonnull align 8 dereferenceable(8560), ptr noundef nonnull align 8 dereferenceable(12), i8 noundef zeroext, ptr) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef6IsNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZNK2v88internal8compiler9ObjectRef6AsNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal8compiler7NameRef12IsUniqueNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK2v88internal8compiler21ElementAccessFeedback6RefineEPNS1_12JSHeapBrokerENS1_7NameRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder31VisitGetEnumeratedKeyedPropertyEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::FeedbackCellRef", align 8 ; 4 uses
  %2 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 0) #33
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i: ; preds = %bb.a
  store ptr %i.l, ptr %1, align 8
  %i.m = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit6brokerEv(ptr noundef nonnull align 8 dereferenceable(52) %i.j) #33
  %i.n = call ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.m) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit, !prof !6

bb.c:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZN2v88internal8compiler14FeedbackSourceC1ENS1_17FeedbackVectorRefENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nonnull %i.n, i32 %i.h) #33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker28GetFeedbackForPropertyAccessERKNS1_14FeedbackSourceENS1_10AccessModeENS1_11OptionalRefINS1_7NameRefEEE(ptr noundef nonnull align 8 dereferenceable(8560) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %2, i8 noundef zeroext 0, ptr null) #33
  %i.r = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS5_17ProcessedFeedbackE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder22VisitLdaModuleVariableEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetImmediateOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0) #33 ; 3 uses
  %i.c = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetUnsignedImmediateOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 1) #33
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder17GetContextAtDepthEPNS1_9ValueNodeEm(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.h, i64 noundef %i.d)
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder23LoadAndCacheContextSlotEPNS1_9ValueNodeEiNS1_21ContextSlotMutabilityENS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.i, i32 noundef 2, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.k = icmp sgt i32 %i.b, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.j, i32 noundef 64)
  %i.m = add nsw i32 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.j, i32 noundef 72)
  %i.o = xor i32 %i.b, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi ptr [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  %i.p = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeEi(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %.010, i32 noundef %.0)
  %i.q = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.p, i32 noundef 8)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -64
  store ptr %i.q, ptr %i.s, align 8
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder22VisitStaModuleVariableEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetImmediateOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 0) #33 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.e = tail call noundef ptr @_ZNK2v88internal6maglev18MaglevGraphBuilder14GetSmiConstantEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 67)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 418, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetUnsignedImmediateOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 1) #33
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder17GetContextAtDepthEPNS1_9ValueNodeEm(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.l, i64 noundef %i.h)
  %i.n = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder23LoadAndCacheContextSlotEPNS1_9ValueNodeEiNS1_21ContextSlotMutabilityENS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.m, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  %i.o = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.n, i32 noundef 64)
  %i.p = add nsw i32 %i.c, -1
  %i.q = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeEi(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, i32 noundef %i.p)
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildStoreTaggedFieldEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr noundef %i.t, i32 noundef 8, i8 noundef zeroext 0, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.08.0 = phi i64 [ %i.f, %bb.b ], [ %i.u, %bb.c ]
  ret i64 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::base::SmallVector.2648", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 31 uses
  %7 = alloca %"class.std::optional.636", align 8 ; 15 uses
  %8 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %9 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.5.i = alloca [18 x i8], align 4          ; 3 uses
  %10 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 10 uses
  %14 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %16 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %18 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 5 uses
  %20 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %22 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 6 uses
  %23 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 9 uses
  %24 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 7 uses
  %25 = alloca %"class.v8::internal::compiler::PropertyAccessInfo", align 8 ; 14 uses
  %26 = alloca %"class.v8::internal::compiler::AccessInfoFactory", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 8 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %28 = alloca %"class.v8::internal::compiler::FeedbackCellRef", align 8 ; 4 uses
  %29 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %30 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 7 uses
  %31 = alloca %class.anon.924, align 8           ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.m = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 0) #33
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 14 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 1, ptr noundef %i.u) #33 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.v, align 8
  %i.y = tail call ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %i.s, i64 %i.x)
  br label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i

_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.01.0.i.i = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ]
  %i.z = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_4NameEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %i.s, ptr %.sroa.01.0.i.i, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  store ptr %i.z, ptr %29, align 8
  %i.aa = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  store ptr %i.ae, ptr %28, align 8
  %i.af = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit6brokerEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ac) #33
  %i.ag = call ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %i.af) #33 ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i10, label %bb.e, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit, !prof !6

bb.e:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @_ZN2v88internal8compiler14FeedbackSourceC1ENS1_17FeedbackVectorRefENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(12) %30, ptr nonnull %i.ag, i32 %i.aa) #33
  %i.ah = load ptr, ptr %i.r, align 8
  %.sroa.0.0.copyload = load ptr, ptr %29, align 8
  %i.ai = call noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker28GetFeedbackForPropertyAccessERKNS1_14FeedbackSourceENS1_10AccessModeENS1_11OptionalRefINS1_7NameRefEEE(ptr noundef nonnull align 8 dereferenceable(8560) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %30, i8 noundef zeroext 1, ptr %.sroa.0.0.copyload) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  store ptr %0, ptr %31, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.q, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %29, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %30, ptr %i.al, align 8
  %i.am = load i32, ptr %i.ai, align 4
  switch i32 %i.am, label %bb.du [
    i32 0, label %bb.f
    i32 11, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 22, ptr %i.j, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  %i.as = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dv

bb.g:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.at = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK2v88internal8compiler17ProcessedFeedback13AsNamedAccessEv(ptr noundef nonnull align 4 dereferenceable(5) %i.ai) #33 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store i64 1, ptr %13, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.loopexit.i.i, %bb.g
  %.tr17.i = phi ptr [ %i.q, %bb.g ], [ %.0.i7.ph.i.i, %.loopexit.i.i ] ; 3 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = call ptr @_ZN2v88internal6maglev9ValueNode14TryGetConstantEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %.tr17.i, ptr noundef %i.av) #33, !inline_history !136 ; 5 uses
  %.not16.i = icmp eq ptr %i.aw, null
  br i1 %.not16.i, label %bb.h, label %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit25

bb.h:                                             ; preds = %tailrecurse.i
  %i.ax = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.az, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ba, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ult ptr %i.bc, %.tr17.i            ; 2 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.bd, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i.i.i.i, %i.ba
  br i1 %i.be, label %bb.p, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp ult ptr %.tr17.i, %i.bg
  br i1 %i.bh, label %bb.p, label %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %.not.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i27, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = and i64 %i.bl, 65535
  %i.bn = icmp eq i64 %i.bm, 67
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.i ]
  %i.bo = getelementptr inbounds i8, ptr %.04.i.i.i.i, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 65535
  %i.bt = icmp eq i64 %i.bs, 67
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !llvm.loop !62

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.i
  %i.bu = phi i64 [ %i.bl, %bb.i ], [ %i.br, %.lr.ph.i.i.i.i ]
  %.0.i7.ph.i.i = phi ptr [ %i.bj, %bb.i ], [ %i.bp, %.lr.ph.i.i.i.i ]
  %i.bv = trunc i64 %i.bu to i16
  %i.bw = add i16 %i.bv, -220
  %i.bx = icmp ult i16 %i.bw, 9
  br i1 %i.bx, label %tailrecurse.i, label %bb.p

_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit25: ; preds = %tailrecurse.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ib
  store ptr %i.it, ptr %i.hv, align 8
  %i.iu = ptrtoint ptr %i.ir to i64
  %i.iv = sub i64 %i.iu, %.pre-phi145
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iv
  store ptr %i.iw, ptr %i.hy, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEE9push_backERKS3_.exit, %bb.aj
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(24) %i.gt, i64 24, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.iz = load ptr, ptr %i.gu, align 8            ; 4 uses
  store ptr %i.iz, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ho, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i8 0, i64 24, i1 false)
  %i.jb = load ptr, ptr %i.gv, align 8            ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.jd = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not.i28 = icmp eq ptr %i.jd, %i.jb
  br i1 %.not.i28, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.je = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.jg = load ptr, ptr %i.gx, align 8            ; 2 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %i.je                    ; 5 uses
  %.not23.i = icmp eq ptr %i.jg, %i.jb
  br i1 %.not23.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jj = icmp sgt i64 %i.ji, -1
  br i1 %i.jj, label %bb.an, label %bb.am, !prof !5

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8            ; 2 uses
  %i.jo = sub i64 %i.jl, %i.jn
  %i.jp = icmp ugt i64 %i.ji, %i.jo
  br i1 %i.jp, label %bb.ao, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !6

bb.ao:                                            ; preds = %bb.an
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, i64 noundef %i.ji) #33
  %.pre.i.i.i = load i64, ptr %i.jm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ao, %bb.an
  %i.jq = phi i64 [ %.pre.i.i.i, %bb.ao ], [ %i.jn, %bb.an ] ; 2 uses
  %i.jr = inttoptr i64 %i.jq to ptr               ; 2 uses
  %i.js = add i64 %i.jq, %i.ji
  store i64 %i.js, ptr %i.jm, align 8
  store ptr %i.jr, ptr %i.ja, align 8
  %i.jt = load ptr, ptr %i.gv, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ju = load ptr, ptr %i.gw, align 8
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jr, ptr nonnull align 8 %i.jt, i64 %i.jx, i1 false)
  %.pre.i29 = load ptr, ptr %i.ja, align 8
  %.pre141 = load ptr, ptr %i.gw, align 8
  %.pre142 = load ptr, ptr %i.gv, align 8
  %.pre143 = ptrtoint ptr %.pre142 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %.pre-phi = phi i64 [ %i.je, %bb.ak ], [ %.pre143, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jy = phi ptr [ %i.jd, %bb.ak ], [ %.pre141, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jz = phi ptr [ null, %bb.ak ], [ %.pre.i29, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ji
  store ptr %i.ka, ptr %i.jc, align 8
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.kb, %.pre-phi
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc
  store ptr %i.kd, ptr %i.jf, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.ap
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ke, ptr noundef nonnull align 8 dereferenceable(65) %i.gy, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %i.kf = add nuw i64 %.sroa.651.087, 1           ; 2 uses
  %.not = icmp eq i64 %i.kf, %.0.i.i113
  br i1 %.not, label %.critedge89.i, label %bb.aa

bb.ar:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.dt

.critedge89.i:                                    ; preds = %bb.aq, %bb.y, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  %i.kg = load ptr, ptr %i.r, align 8
  %i.kh = load ptr, ptr %i.ab, align 8
  %i.ki = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.kh) #33
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef %i.kg, ptr noundef %i.ki) #33, !inline_history !137
  %i.kj = load ptr, ptr %23, align 8
  store ptr %i.kj, ptr %27, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i8 0, i64 24, i1 false)
  %i.kl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %23) #33 ; 0 uses
  %i.km = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull %27, i8 noundef zeroext 1, ptr noundef nonnull %22) #33, !inline_history !137
  br i1 %i.km, label %bb.as, label %bb.ds

bb.as:                                            ; preds = %.critedge89.i
  %i.kn = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 168
  br i1 %i.kt, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8            ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8            ; 3 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = ashr exact i64 %i.la, 3                 ; 3 uses
  %.not12.i = icmp eq ptr %i.kx, %i.kv
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

bb.au:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.lc, %i.kx
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %bb.au
  %.01013.i = phi ptr [ %i.lc, %bb.au ], [ %i.kv, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ld = load i64, ptr %.01013.i, align 8
  store i64 %i.ld, ptr %12, align 8
  %i.le = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.le, label %bb.au, label %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit

.loopexit:                                        ; preds = %bb.au, %bb.at
  %i.lf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !10, !noundef !11
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.av, label %.critedge8.i

bb.av:                                            ; preds = %.loopexit
  %i.lh = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_21VisitSetNamedPropertyEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.kv, i64 %i.lb), !inline_history !137
  br i1 %i.lh, label %bb.aw, label %.critedge8.i

bb.aw:                                            ; preds = %bb.av
  %i.li = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !137
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.ds, label %bb.az

.critedge8.i:                                     ; preds = %.loopexit, %bb.av
  %i.lk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !137
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.ds, label %bb.az

_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit: ; preds = %.lr.ph.i
  %i.lm = call noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %i.kv, i64 %i.lb), !inline_history !137
  br i1 %i.lm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.ln = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !137
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.ds, label %bb.az

bb.ay:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.lp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.kv, i64 %i.lb, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !137
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.ds, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.critedge8.i, %bb.aw
  %i.lr = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.lr, align 8
  %i.ls = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(168) %i.kp, i8 noundef zeroext 1), !inline_history !138
  br label %bb.ds

bb.ba:                                            ; preds = %bb.as
  %i.lt = sdiv exact i64 %i.ks, 168               ; 5 uses
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.lw = load i8, ptr %i.lv, align 8, !range !10, !noundef !11
  %i.lx = trunc nuw i8 %i.lw to i1
  %i.ly = icmp sgt i32 %i.lu, 0                   ; 2 uses
  br i1 %i.ly, label %.lr.ph213.i, label %._crit_edge214.i

.lr.ph213.i:                                      ; preds = %bb.ba
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.not15.i.i.i = icmp eq ptr %i.q, null
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count.i = and i64 %i.lt, 2147483647
  br label %bb.bb

._crit_edge214.i:                                 ; preds = %._crit_edge.i, %bb.ba
  %.0102.lcssa.i = phi i1 [ false, %bb.ba ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ -1, %bb.ba ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 0), !inline_history !139
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ml = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.ml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.mm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store i8 0, ptr %i.mn, align 8
  %i.mo = icmp sgt i32 %.0.lcssa.i, -1
  br i1 %i.mo, label %bb.bo, label %bb.bp

bb.bb:                                            ; preds = %._crit_edge.i, %.lr.ph213.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph213.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.0211.i = phi i32 [ -1, %.lr.ph213.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0102210.i = phi i1 [ false, %.lr.ph213.i ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.mp = load ptr, ptr %i.gb, align 8
  %i.mq = getelementptr inbounds nuw [168 x i8], ptr %i.mp, i64 %indvars.iv.i ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8            ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not115204.i = icmp eq ptr %i.ms, %i.mu
  br i1 %.not115204.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %i.mv = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.i121

._crit_edge.i:                                    ; preds = %bb.bn, %bb.bb
  %.1103.lcssa.i = phi i1 [ %.0102210.i, %bb.bb ], [ %spec.select.i, %bb.bn ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0211.i, %bb.bb ], [ %.3.i, %bb.bn ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge214.i, label %bb.bb, !llvm.loop !140

.lr.ph.i121:                                      ; preds = %bb.bn, %.lr.ph.preheader.i
  %.1207.i = phi i32 [ %.3.i, %bb.bn ], [ %.0211.i, %.lr.ph.preheader.i ] ; 3 uses
  %.1103206.i = phi i1 [ %spec.select.i, %bb.bn ], [ %.0102210.i, %.lr.ph.preheader.i ]
  %.0110205.i = phi ptr [ %i.qt, %bb.bn ], [ %i.ms, %.lr.ph.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.mw = load i64, ptr %.0110205.i, align 8
  store i64 %i.mw, ptr %3, align 8
  %i.mx = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !139
  %spec.select.i = select i1 %i.mx, i1 true, i1 %.1103206.i ; 2 uses
  %i.my = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !139
  br i1 %i.my, label %bb.bc, label %bb.bn

bb.bc:                                            ; preds = %.lr.ph.i121
  %i.mz = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.na = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 312 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 304 ; 5 uses
  %.not10.i.i.i.i.i141.i = icmp eq ptr %i.nc, null
  br i1 %.not10.i.i.i.i.i141.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %.lr.ph.i.i.i.i.i142.i

.lr.ph.i.i.i.i.i142.i:                            ; preds = %bb.bc, %.lr.ph.i.i.i.i.i142.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i142.i ], [ %i.nc, %bb.bc ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i142.i ], [ %i.nd, %bb.bc ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = icmp ult ptr %i.nf, %i.q                ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.ng, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.ng, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i143.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i143.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i142.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i142.i
  %i.nh = icmp eq ptr %.19.i.i.i.i.i.i, %i.nd
  br i1 %i.nh, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = icmp ult ptr %i.q, %i.nj
  br i1 %i.nk, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, %bb.bc
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mz, i64 288
  %i.nm = load ptr, ptr %i.nl, align 8            ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8            ; 2 uses
  %i.nr = sub i64 %i.no, %i.nq
  %i.ns = icmp ult i64 %i.nr, 96
  br i1 %i.ns, label %bb.bd, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i, !prof !6

bb.bd:                                            ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.nm, i64 noundef 96) #33, !inline_history !139
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.np, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i: ; preds = %bb.bd, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i
  %i.nt = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.nq, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i ] ; 2 uses
  %i.nu = inttoptr i64 %i.nt to ptr               ; 6 uses
  %i.nv = add i64 %i.nt, 96
  store i64 %i.nv, ptr %i.np, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store ptr %i.q, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  store i64 262143, ptr %i.nx, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, i8 0, i64 40, i1 false)
  %.02022.i.i.i = load ptr, ptr %i.nb, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i ] ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.nz = load ptr, ptr %i.ny, align 8            ; 2 uses
  %i.oa = icmp ult ptr %i.q, %i.nz                ; 2 uses
  %.in.v.i.i.i = select i1 %i.oa, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i147.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i147.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.oa, label %._crit_edge.thread.i.i.i, label %bb.bf

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.nd, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i ] ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mz, i64 320
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = icmp eq ptr %.019.lcssa29.i.i.i, %i.oc
  br i1 %i.od, label %select.unfold.i.i, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.oe = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34, !inline_history !139 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i.i
  %i.of = phi ptr [ %.pre.i.i, %bb.be ], [ %i.nz, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.be ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.oe, %bb.be ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.og = icmp ult ptr %i.of, %i.q
  br i1 %i.og, label %select.unfold.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i

select.unfold.i.i:                                ; preds = %bb.bf, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.bf ] ; 3 uses
  %i.oh = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.nd
  br i1 %i.oh, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %select.unfold.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = icmp ult ptr %i.q, %i.oj
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i: ; preds = %bb.bg, %select.unfold.i.i
  %i.ol = phi i1 [ %i.ok, %bb.bg ], [ true, %select.unfold.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ol, ptr noundef nonnull %i.nu, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.nd) #33, !inline_history !139
  %i.om = getelementptr inbounds nuw i8, ptr %i.mz, i64 336 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8
  %i.oo = add i64 %i.on, 1
  store i64 %i.oo, ptr %i.om, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i, %bb.bf
  %.sroa.08.0.i.i = phi ptr [ %i.nu, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i ], [ %.sroa.05.0.i.i.i, %bb.bf ] ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 40 ; 4 uses
  %i.oq = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef %i.na) #33, !inline_history !139
  %i.or = load i32, ptr %i.op, align 8
  %i.os = and i32 %i.or, %i.oq
  store i32 %i.os, ptr %i.op, align 8
  %i.ot = load i64, ptr %i.lz, align 8
  %i.ou = and i64 %i.ot, 65535
  %.not.i122 = icmp eq i64 %i.ou, 99
  br i1 %.not.i122, label %bb.bh, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i

bb.bh:                                            ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i
  %i.ov = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %i.ox = load i8, ptr %i.ow, align 4
  %.not20.i.i = icmp eq i8 %i.ox, 3
  br i1 %.not20.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i, !prof !6

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32, !inline_history !139
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i: ; preds = %bb.bi
  store ptr %i.oz, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.oz, ptr %1, align 8
  %i.pa = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !inline_history !139
  %i.pd = xor i1 %i.pc, true
  %.sroa.0.0.copyload.i146.i = load ptr, ptr %2, align 8
  %i.pe = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i146.i, ptr noundef %i.na), !inline_history !139
  %i.pf = zext i1 %i.pd to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 48
  store i64 %i.pb, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 45
  store i8 1, ptr %i.ph, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 44
  store i8 %i.pf, ptr %i.pi, align 4
  %i.pj = load i32, ptr %i.op, align 8
  %i.pk = and i32 %i.pj, %i.pe
  store i32 %i.pk, ptr %i.op, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i, %bb.bh, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.pl = load i64, ptr %3, align 8
  store ptr %i.mb, ptr %4, align 8
  store ptr %i.me, ptr %i.md, align 8
  store i64 %i.pl, ptr %i.mb, align 8
  store ptr %i.me, ptr %i.mc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.pm = load ptr, ptr %i.r, align 8
  %i.pn = load ptr, ptr %i.ab, align 8
  %i.po = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.pn) #33, !inline_history !139
  %i.pp = load ptr, ptr %4, align 8               ; 2 uses
  %i.pq = load ptr, ptr %i.mc, align 8
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.pp to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 3
  store ptr %i.pm, ptr %5, align 8
  store ptr %i.po, ptr %i.mf, align 8
  store ptr %i.pp, ptr %i.mg, align 8
  store i64 %i.pu, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 1, ptr %i.mh, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.mi, align 8
  store i32 0, ptr %i.mj, align 4
  %i.pv = load ptr, ptr %i.au, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(352) %i.pv), !inline_history !139
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.mh, align 8
  %i.pw = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  br i1 %i.pw, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %i.px = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.py = load ptr, ptr %i.r, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 312
  %i.qa = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bk, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.qa, %bb.bk ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.qb, %bb.bk ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = icmp ult ptr %i.qd, %i.q                ; 2 uses
  %.19.i.i.i.i.i.i.i.i.i = select i1 %i.qe, ptr %.0811.i.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.qe, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.qf = icmp eq ptr %.19.i.i.i.i.i.i.i.i.i, %i.qb
  br i1 %i.qf, label %select.unfold.i.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 32
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = icmp ult ptr %i.q, %i.qh
  br i1 %i.qi, label %select.unfold.i.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i

select.unfold.i.i.i:                              ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, %bb.bk
  %i.qj = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef %i.py) #33, !inline_history !139
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i
  %i.qk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 40
  %i.ql = load i32, ptr %i.qk, align 8            ; 2 uses
  %i.qm = load i64, ptr %i.lz, align 8
  %i.qn = and i64 %i.qm, 65535
  %i.qo = icmp ne i64 %i.qn, 142
  %.not.i.i.i = or i1 %.not15.i.i.i, %i.qo
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i
  %i.qp = load i32, ptr %i.mk, align 8
  %i.qq = and i32 %i.qp, %i.ql
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i: ; preds = %bb.bl, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i, %select.unfold.i.i.i
  %.0.i.i.i = phi i32 [ %i.qj, %select.unfold.i.i.i ], [ %i.qq, %bb.bl ], [ %i.ql, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i ]
  %i.qr = and i32 %.0.i.i.i, 1
  %i.qs = icmp eq i32 %i.qr, 0
  %spec.select116.i = select i1 %i.qs, i32 %.1207.i, i32 %i.mv
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %.2.i = phi i32 [ %.1207.i, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i ], [ %spec.select116.i, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i121
  %.3.i = phi i32 [ %.2.i, %bb.bm ], [ %.1207.i, %.lr.ph.i121 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.qt = getelementptr inbounds nuw i8, ptr %.0110205.i, i64 8 ; 2 uses
  %.not115.i = icmp eq ptr %i.qt, %i.mu
  br i1 %.not115.i, label %._crit_edge.i, label %.lr.ph.i121

bb.bo:                                            ; preds = %._crit_edge214.i
  store i8 0, ptr %i.mm, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %6, i32 noundef 2), !inline_history !139
  store i8 1, ptr %i.mm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store ptr %i.q, ptr %i.h, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %8, ptr nonnull %i.h, i64 1), !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  br label %bb.bs

bb.bp:                                            ; preds = %._crit_edge214.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.qv = load i64, ptr %i.qu, align 8
  %i.qw = and i64 %i.qv, 7696581394432
  switch i64 %i.qw, label %bb.bq [
    i64 0, label %bb.br
    i64 4398046511104, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 70, ptr %i.g, align 1
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 1 ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = or i8 %i.ra, 1
  store i8 %i.rb, ptr %i.qz, align 1
  %i.rc = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.g), !inline_history !139 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

bb.br:                                            ; preds = %bb.bp, %bb.bp
  %i.rd = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.q), !inline_history !139
  %i.re = icmp eq i64 %i.rd, 1
  br i1 %i.re, label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit", label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %i.rf = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8
  %i.rh = and i64 %i.rg, 7696581394432
  switch i64 %i.rh, label %bb.bt [
    i64 0, label %bb.bw
    i64 4398046511104, label %bb.bw
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ri = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 368 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %.not.i.i119.i = icmp eq ptr %i.rk, null
  br i1 %.not.i.i119.i, label %bb.bu, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN2v88internal8compiler12JSHeapBroker17InitHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.ri) #33, !inline_history !139
  %.pr.i.i.i = load ptr, ptr %i.rj, align 8       ; 2 uses
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i120, label %bb.bv, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i, !prof !76

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32, !inline_history !139
  unreachable

_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i: ; preds = %bb.bu, %bb.bt
  %i.rl = phi ptr [ %.pr.i.i.i, %bb.bu ], [ %i.rk, %bb.bt ]
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.rn, ptr nonnull %i.rl) #33, !inline_history !139
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i

bb.bw:                                            ; preds = %bb.bs, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr %i.q, ptr %i.f, align 8
  %i.rp = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.e), !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i: ; preds = %bb.bw, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i
  %.0.i.i = phi ptr [ %i.rp, %bb.bw ], [ %i.ro, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i ] ; 4 uses
  br i1 %.0102.lcssa.i, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8            ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load i64, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 3 uses
  %i.rv = load i64, ptr %i.ru, align 8            ; 2 uses
  %i.rw = sub i64 %i.rt, %i.rv
  %i.rx = icmp ult i64 %i.rw, 96
  br i1 %i.rx, label %bb.by, label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, !prof !6

bb.by:                                            ; preds = %bb.bx
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.rr, i64 noundef 96) #33, !inline_history !139
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ru, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i: ; preds = %bb.by, %bb.bx
  %i.ry = phi i64 [ %.pre.i.i.i.i.i.i, %bb.by ], [ %i.rv, %bb.bx ] ; 2 uses
  %i.rz = add i64 %i.ry, 96
  store i64 %i.rz, ptr %i.ru, align 8
  %i.sa = add i64 %i.ry, 72
  %i.sb = inttoptr i64 %i.sa to ptr               ; 6 uses
  store ptr null, ptr %i.sb, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store i64 18081812447366, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store i32 0, ptr %i.sd, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %i.zh = load ptr, ptr %i.yv, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 728
  store ptr %i.zh, ptr %i.zi, align 8
  store ptr null, ptr %i.yv, align 8
  br label %.critedge.i118

.critedge.i118:                                   ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i, %bb.dj, %.loopexit.i
  %i.zj = load i8, ptr %i.ml, align 8, !range !10, !noundef !11
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge.i118
  %i.zl = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %7), !inline_history !139
  %i.zm = icmp eq i64 %i.zl, 1
  %spec.select196.i = select i1 %i.zm, i64 1, i64 2
  br label %bb.dr

bb.dq:                                            ; preds = %.critedge.i118
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.th) #33, !inline_history !139
  store i32 %i.tj, ptr %i.ti, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.tk, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx.i, i64 14, i1 false)
  store i32 %i.tm, ptr %i.tl, align 8
  store i32 %i.to, ptr %i.tn, align 4
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dk
  %.sroa.0183.2.i = phi i64 [ 2, %bb.dk ], [ %spec.select196.i, %bb.dp ], [ 1, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit": ; preds = %bb.bq, %bb.br, %bb.dr
  %.sroa.0183.3.i = phi i64 [ %.sroa.0183.2.i, %bb.dr ], [ 1, %bb.bq ], [ 1, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ds

bb.ds:                                            ; preds = %bb.az, %bb.aw, %.critedge8.i, %bb.ax, %bb.ay, %.critedge89.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"
  %.sroa.062.2 = phi i64 [ 3, %.critedge89.i ], [ %.sroa.0183.3.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit" ], [ 1, %bb.ax ], [ %i.ls, %bb.az ], [ 1, %bb.aw ], [ 1, %.critedge8.i ], [ 1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ar, %bb.ds
  %.sroa.062.3 = phi i64 [ 3, %bb.ar ], [ %.sroa.062.2, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"

.thread77:                                        ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit25, %.critedge85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %bb.du

"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit": ; preds = %bb.v, %bb.dt
  %.sroa.062.8 = phi i64 [ %.sroa.062.3, %bb.dt ], [ %i.ey, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.zn = and i64 %.sroa.062.8, 7
  %.not82 = icmp eq i64 %i.zn, 3
  br i1 %.not82, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.thread77, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit, %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"
  %i.zo = call fastcc i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEvENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %31)
  br label %bb.dv

bb.dv:                                            ; preds = %.thread75, %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit", %bb.du, %bb.f
  %.sroa.09.1 = phi i64 [ %i.zo, %bb.du ], [ 1, %bb.f ], [ %.sroa.062.8, %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit" ], [ 1, %.thread75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  ret i64 %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEvENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !11, !align !102
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ult i64 %i.t, 160
  br i1 %i.u, label %bb.b, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef 160) #33
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i

_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i: ; preds = %bb.b, %bb.a
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.s, %bb.a ] ; 2 uses
  %i.w = add i64 %i.v, 160
  store i64 %i.w, ptr %i.r, align 8
  %i.x = add i64 %i.v, 112
  %i.y = inttoptr i64 %i.x to ptr                 ; 9 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 536871108743, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, 7696581394432
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.ai = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull %i.e, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i: ; preds = %bb.c, %_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %.0.i.i = phi ptr [ %i.e, %_ZN2v88internal6maglev8NodeBase3NewINS1_15SetNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i ], [ %i.ai, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  store ptr %.0.i.i, ptr %i.ad, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 7696581394432
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  %i.aq = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull %i.i, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1: ; preds = %bb.d, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i
  %.0.i.i.1 = phi ptr [ %i.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 -16
  store ptr %.0.i.i.1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 7696581394432
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.2, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1
  %i.az = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull %i.g, i32 noundef 0), !inline_history !69
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.2

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.2: ; preds = %bb.e, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1
  %.0.i.i.2 = phi ptr [ %i.g, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.1 ], [ %i.az, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.y, i64 -24
  store ptr %.0.i.i.2, ptr %i.bd, align 8
  %i.be = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_15SetNamedGenericEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull %i.y) ; 0 uses
  ret i64 2
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder27VisitSetPrototypePropertiesEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(953) %0) local_unnamed_addr #16 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::base::SmallVector.2648", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 31 uses
  %7 = alloca %"class.std::optional.636", align 8 ; 15 uses
  %8 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %9 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.584 = alloca [18 x i8], align 4          ; 3 uses
  %10 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 11 uses
  %12 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %14 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %16 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %17 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 5 uses
  %18 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %20 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 8 uses
  %21 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 11 uses
  %22 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %23 = alloca %"class.v8::internal::compiler::PropertyAccessInfo", align 8 ; 14 uses
  %24 = alloca %"class.v8::internal::compiler::AccessInfoFactory", align 8 ; 6 uses
  %25 = alloca %"class.v8::internal::ZoneVector.2641", align 8 ; 9 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %26 = alloca %"class.v8::internal::compiler::FeedbackCellRef", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 5 uses
  %28 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %29 = alloca %class.anon.925, align 8           ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.m = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 0) #33
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 14 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 1, ptr noundef %i.u) #33 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.v, align 8
  %i.y = tail call ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %i.s, i64 %i.x)
  br label %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i

_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.01.0.i.i = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ]
  %i.z = tail call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_4NameEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %i.s, ptr %.sroa.01.0.i.i, i32 3) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EES7_.exit.i
  store ptr %i.z, ptr %27, align 8
  %i.aa = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder13GetRefOperandINS0_4NameEEENS0_8compiler10ref_traitsIT_E8ref_typeEiQ13is_taggable_vIS7_E.exit
  store ptr %i.ae, ptr %26, align 8
  %i.af = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit6brokerEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ac) #33
  %i.ag = call ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %i.af) #33 ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i10, label %bb.e, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit, !prof !6

bb.e:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit13feedback_cellEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @_ZN2v88internal8compiler14FeedbackSourceC1ENS1_17FeedbackVectorRefENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(12) %28, ptr nonnull %i.ag, i32 %i.aa) #33
  %i.ah = load ptr, ptr %i.r, align 8
  %.sroa.0.0.copyload = load ptr, ptr %27, align 8
  %i.ai = call noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker28GetFeedbackForPropertyAccessERKNS1_14FeedbackSourceENS1_10AccessModeENS1_11OptionalRefINS1_7NameRefEEE(ptr noundef nonnull align 8 dereferenceable(8560) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %28, i8 noundef zeroext 1, ptr %.sroa.0.0.copyload) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  store ptr %0, ptr %29, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.q, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %27, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %28, ptr %i.al, align 8
  %i.am = load i32, ptr %i.ai, align 4
  switch i32 %i.am, label %.thread124 [
    i32 0, label %bb.f
    i32 11, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 22, ptr %i.j, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  %i.as = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.thread121

bb.g:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.at = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK2v88internal8compiler17ProcessedFeedback13AsNamedAccessEv(ptr noundef nonnull align 4 dereferenceable(5) %i.ai) #33 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i64 1, ptr %11, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.loopexit.i.i, %bb.g
  %.tr17.i = phi ptr [ %i.q, %bb.g ], [ %.0.i7.ph.i.i, %.loopexit.i.i ] ; 3 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = call ptr @_ZN2v88internal6maglev9ValueNode14TryGetConstantEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %.tr17.i, ptr noundef %i.av) #33, !inline_history !147 ; 5 uses
  %.not16.i = icmp eq ptr %i.aw, null
  br i1 %.not16.i, label %bb.h, label %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit32

bb.h:                                             ; preds = %tailrecurse.i
  %i.ax = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i.i.i.i.i, label %bb.p, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.az, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ba, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ult ptr %i.bc, %.tr17.i            ; 2 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.bd, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i.i.i.i, %i.ba
  br i1 %i.be, label %bb.p, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp ult ptr %.tr17.i, %i.bg
  br i1 %i.bh, label %bb.p, label %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %.not.i.i.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i34, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = and i64 %i.bl, 65535
  %i.bn = icmp eq i64 %i.bm, 67
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.i ]
  %i.bo = getelementptr inbounds i8, ptr %.04.i.i.i.i, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 65535
  %i.bt = icmp eq i64 %i.bs, 67
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !llvm.loop !62

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.i
  %i.bu = phi i64 [ %i.bl, %bb.i ], [ %i.br, %.lr.ph.i.i.i.i ]
  %.0.i7.ph.i.i = phi ptr [ %i.bj, %bb.i ], [ %i.bp, %.lr.ph.i.i.i.i ]
  %i.bv = trunc i64 %i.bu to i16
  %i.bw = add i16 %i.bv, -220
  %i.bx = icmp ult i16 %i.bw, 9
  br i1 %i.bx, label %tailrecurse.i, label %bb.p

_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit32: ; preds = %tailrecurse.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.aw, ptr %12, align 8
  %i.by = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef9IsTheHoleEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #33, !inline_history !148
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a
  store ptr %i.gq, ptr %i.ft, align 8
  %i.gr = load ptr, ptr %i.er, align 8
  %i.gs = load ptr, ptr %i.eq, align 8
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gv
  store ptr %i.gw, ptr %i.fw, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEE9push_backERKS3_.exit, %bb.ad
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.gz = load ptr, ptr %i.eu, align 8            ; 4 uses
  store ptr %i.gz, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i8 0, i64 24, i1 false)
  %i.hb = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.hd = load ptr, ptr %i.ew, align 8
  %.not.i35 = icmp eq ptr %i.hd, %i.hb
  br i1 %.not.i35, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.hg = load ptr, ptr %i.ex, align 8            ; 2 uses
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.he                    ; 5 uses
  %.not23.i = icmp eq ptr %i.hg, %i.hb
  br i1 %.not23.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = icmp sgt i64 %i.hi, -1
  br i1 %i.hj, label %bb.ah, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = sub i64 %i.hl, %i.hn
  %i.hp = icmp ugt i64 %i.hi, %i.ho
  br i1 %i.hp, label %bb.ai, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !6

bb.ai:                                            ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gz, i64 noundef %i.hi) #33
  %.pre.i.i.i = load i64, ptr %i.hm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ai, %bb.ah
  %i.hq = phi i64 [ %.pre.i.i.i, %bb.ai ], [ %i.hn, %bb.ah ] ; 2 uses
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %i.hs = add i64 %i.hq, %i.hi
  store i64 %i.hs, ptr %i.hm, align 8
  store ptr %i.hr, ptr %i.ha, align 8
  %i.ht = load ptr, ptr %i.ev, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.hu = load ptr, ptr %i.ew, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hr, ptr nonnull align 8 %i.ht, i64 %i.hx, i1 false)
  %.pre.i36 = load ptr, ptr %i.ha, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %i.hy = phi ptr [ %.pre.i36, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ], [ null, %bb.ae ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hi
  store ptr %i.hz, ptr %i.hc, align 8
  %i.ia = load ptr, ptr %i.ew, align 8
  %i.ib = load ptr, ptr %i.ev, align 8
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ie
  store ptr %i.if, ptr %i.hf, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.aj
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ig, ptr noundef nonnull align 8 dereferenceable(65) %i.ey, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  %i.ih = add nuw i64 %.sroa.556.0137, 1          ; 2 uses
  %.not = icmp eq i64 %i.ih, %.0.i.i18201
  br i1 %.not, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.ak, %bb.t, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.ii = load ptr, ptr %i.r, align 8
  %i.ij = load ptr, ptr %i.ab, align 8
  %i.ik = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ij) #33
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %i.ii, ptr noundef %i.ik) #33, !inline_history !148
  %i.il = load ptr, ptr %21, align 8
  store ptr %i.il, ptr %25, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %i.in = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %21) #33 ; 0 uses
  %i.io = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull %25, i8 noundef zeroext 4, ptr noundef nonnull %20) #33, !inline_history !148
  br i1 %i.io, label %bb.al, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread118"

"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread118": ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %.thread124.sink.split

bb.al:                                            ; preds = %._crit_edge
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = load ptr, ptr %i.eb, align 8            ; 4 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 168
  br i1 %i.iv, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8            ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8            ; 3 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.not12.i = icmp eq ptr %i.iz, %i.ix
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.je = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.je, %i.iz
  br i1 %.not.i14, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.an
  %.01013.i = phi ptr [ %i.je, %bb.an ], [ %i.ix, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.jf = load i64, ptr %.01013.i, align 8
  store i64 %i.jf, ptr %2, align 8
  %i.jg = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %i.jg, label %bb.an, label %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit

.loopexit:                                        ; preds = %bb.an, %bb.am
  %i.jh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !10, !noundef !11
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.ao, label %.critedge8.i

bb.ao:                                            ; preds = %.loopexit
  %i.jj = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_27VisitDefineNamedOwnPropertyEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.ix, i64 %i.jd), !inline_history !148
  br i1 %i.jj, label %bb.ap, label %.critedge8.i

bb.ap:                                            ; preds = %bb.ao
  %i.jk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !148
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

.critedge8.i:                                     ; preds = %.loopexit, %bb.ao
  %i.jm = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !148
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit: ; preds = %.lr.ph.i
  %i.jo = call noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %i.ix, i64 %i.jd), !inline_history !148
  br i1 %i.jo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.jp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !148
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

bb.ar:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.jr = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.ix, i64 %i.jd, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !148
  %i.js = icmp eq i64 %i.jr, 1
  br i1 %i.js, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.critedge8.i, %bb.ap
  %i.jt = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.jt, align 8
  %i.ju = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(168) %i.ir, i8 noundef zeroext 4), !inline_history !149
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"

bb.at:                                            ; preds = %bb.al
  %i.jv = sdiv exact i64 %i.iu, 168               ; 5 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.jy = load i8, ptr %i.jx, align 8, !range !10, !noundef !11
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = icmp sgt i32 %i.jw, 0                   ; 2 uses
  br i1 %i.ka, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.at
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.kk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not15.i.i.i = icmp eq ptr %i.q, null
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count = and i64 %i.jv, 2147483647
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.au

._crit_edge151:                                   ; preds = %._crit_edge144, %bb.at
  %.0102.i.lcssa = phi i1 [ false, %bb.at ], [ %.1103.i.lcssa, %._crit_edge144 ] ; 2 uses
  %.0.i.lcssa = phi i32 [ -1, %bb.at ], [ %.1.i13.lcssa, %._crit_edge144 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 0), !inline_history !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.km, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store i8 0, ptr %i.ko, align 8
  %i.kp = icmp sgt i32 %.0.i.lcssa, -1
  br i1 %i.kp, label %bb.az, label %bb.ba

bb.au:                                            ; preds = %.lr.ph150, %._crit_edge144
  %indvars.iv = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next, %._crit_edge144 ] ; 3 uses
  %.0.i148 = phi i32 [ -1, %.lr.ph150 ], [ %.1.i13.lcssa, %._crit_edge144 ] ; 2 uses
  %.0102.i147 = phi i1 [ false, %.lr.ph150 ], [ %.1103.i.lcssa, %._crit_edge144 ] ; 2 uses
  %i.kq = load ptr, ptr %i.eb, align 8
  %i.kr = getelementptr inbounds nuw [168 x i8], ptr %i.kq, i64 %indvars.iv ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %.not115.i138 = icmp eq ptr %i.kt, %i.kv
  br i1 %.not115.i138, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.au
  %i.kw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph143

._crit_edge144:                                   ; preds = %bb.ay, %bb.au
  %.1103.i.lcssa = phi i1 [ %.0102.i147, %bb.au ], [ %spec.select.i, %bb.ay ] ; 2 uses
  %.1.i13.lcssa = phi i32 [ %.0.i148, %bb.au ], [ %.3.i, %bb.ay ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge151, label %bb.au, !llvm.loop !151

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.ay
  %.1.i13141 = phi i32 [ %.3.i, %bb.ay ], [ %.0.i148, %.lr.ph143.preheader ] ; 3 uses
  %.1103.i140 = phi i1 [ %spec.select.i, %bb.ay ], [ %.0102.i147, %.lr.ph143.preheader ]
  %.0110.i139 = phi ptr [ %i.ml, %bb.ay ], [ %i.kt, %.lr.ph143.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.kx = load i64, ptr %.0110.i139, align 8
  store i64 %i.kx, ptr %3, align 8
  %i.ky = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !150
  %spec.select.i = select i1 %i.ky, i1 true, i1 %.1103.i140 ; 2 uses
  %i.kz = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !150
  br i1 %i.kz, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i, label %bb.ay

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i: ; preds = %.lr.ph143
  %i.la = load ptr, ptr %i.au, align 8
  %i.lb = load ptr, ptr %i.r, align 8
  %i.lc = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.la, ptr noundef %i.lb, ptr noundef %i.q), !inline_history !150 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ld = load i64, ptr %3, align 8
  store ptr %i.kb, ptr %4, align 8
  store ptr %i.ke, ptr %i.kd, align 8
  store i64 %i.ld, ptr %i.kb, align 8
  store ptr %30, ptr %i.kc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.le = load ptr, ptr %i.r, align 8
  %i.lf = load ptr, ptr %i.ab, align 8
  %i.lg = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.lf) #33, !inline_history !150
  %i.lh = load ptr, ptr %4, align 8               ; 2 uses
  %i.li = load ptr, ptr %i.kc, align 8
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lh to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 3
  store ptr %i.le, ptr %5, align 8
  store ptr %i.lg, ptr %i.kf, align 8
  store ptr %i.lh, ptr %i.kg, align 8
  store i64 %i.lm, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 1, ptr %i.kh, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ki, align 8
  store i32 0, ptr %i.kj, align 4
  %i.ln = load ptr, ptr %i.au, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(352) %i.ln), !inline_history !150
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.kh, align 8
  %i.lo = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  br i1 %i.lo, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %i.lp = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.lq = load ptr, ptr %i.r, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 312
  %i.ls = load ptr, ptr %i.lr, align 8            ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ls, %bb.av ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.lt, %bb.av ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = icmp ult ptr %i.lv, %i.q                ; 2 uses
  %.19.i.i.i.i.i.i.i.i.i = select i1 %i.lw, ptr %.0811.i.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.lw, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.lx = icmp eq ptr %.19.i.i.i.i.i.i.i.i.i, %i.lt
  br i1 %i.lx, label %select.unfold.i.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = icmp ult ptr %i.q, %i.lz
  br i1 %i.ma, label %select.unfold.i.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i

select.unfold.i.i.i:                              ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, %bb.av
  %i.mb = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef %i.lq) #33, !inline_history !150
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 40
  %i.md = load i32, ptr %i.mc, align 8            ; 2 uses
  %i.me = load i64, ptr %i.kk, align 8
  %i.mf = and i64 %i.me, 65535
  %i.mg = icmp ne i64 %i.mf, 142
  %.not.i.i.i = or i1 %.not15.i.i.i, %i.mg
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i
  %i.mh = load i32, ptr %i.kl, align 8
  %i.mi = and i32 %i.mh, %i.md
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i: ; preds = %bb.aw, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i, %select.unfold.i.i.i
  %.0.i.i.i = phi i32 [ %i.mb, %select.unfold.i.i.i ], [ %i.mi, %bb.aw ], [ %i.md, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i ]
  %i.mj = and i32 %.0.i.i.i, 1
  %i.mk = icmp eq i32 %i.mj, 0
  %spec.select116.i = select i1 %i.mk, i32 %.1.i13141, i32 %i.kw
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %.2.i = phi i32 [ %.1.i13141, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i ], [ %spec.select116.i, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph143
  %.3.i = phi i32 [ %.2.i, %bb.ax ], [ %.1.i13141, %.lr.ph143 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ml = getelementptr inbounds nuw i8, ptr %.0110.i139, i64 8 ; 2 uses
  %.not115.i = icmp eq ptr %i.ml, %i.kv
  br i1 %.not115.i, label %._crit_edge144, label %.lr.ph143

bb.az:                                            ; preds = %._crit_edge151
  store i8 0, ptr %i.kn, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %6, i32 noundef 2), !inline_history !150
  store i8 1, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %i.q, ptr %i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %8, ptr nonnull %i.i, i64 1), !inline_history !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.bd

bb.ba:                                            ; preds = %._crit_edge151
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = and i64 %i.mn, 7696581394432
  switch i64 %i.mo, label %bb.bb [
    i64 0, label %bb.bc
    i64 4398046511104, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 70, ptr %i.h, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = or i8 %i.ms, 1
  store i8 %i.mt, ptr %i.mr, align 1
  %i.mu = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.h), !inline_history !150 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

bb.bc:                                            ; preds = %bb.ba, %bb.ba
  %i.mv = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.q), !inline_history !150
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.mx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = and i64 %i.my, 7696581394432
  switch i64 %i.mz, label %bb.be [
    i64 0, label %bb.bh
    i64 4398046511104, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bd
  %i.na = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 368 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %.not.i.i119.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i119.i, label %bb.bf, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2v88internal8compiler12JSHeapBroker17InitHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.na) #33, !inline_history !150
  %.pr.i.i.i = load ptr, ptr %i.nb, align 8       ; 2 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i12, label %bb.bg, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i, !prof !76

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32, !inline_history !150
  unreachable

_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i: ; preds = %bb.bf, %bb.be
  %i.nd = phi ptr [ %.pr.i.i.i, %bb.bf ], [ %i.nc, %bb.be ]
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.nf, ptr nonnull %i.nd) #33, !inline_history !150
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i

bb.bh:                                            ; preds = %bb.bd, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.q, ptr %i.g, align 8
  %i.nh = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f), !inline_history !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i: ; preds = %bb.bh, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i
  %.0.i.i = phi ptr [ %i.nh, %bb.bh ], [ %i.ng, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i ] ; 4 uses
  br i1 %.0102.i.lcssa, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8            ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16 ; 3 uses
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  %i.no = sub i64 %i.nl, %i.nn
  %i.np = icmp ult i64 %i.no, 96
  br i1 %i.np, label %bb.bj, label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, !prof !6

bb.bj:                                            ; preds = %bb.bi
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.nj, i64 noundef 96) #33, !inline_history !150
  %.pre.i.i.i.i.i.i = load i64, ptr %i.nm, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.nq = phi i64 [ %.pre.i.i.i.i.i.i, %bb.bj ], [ %i.nn, %bb.bi ] ; 2 uses
  %i.nr = add i64 %i.nq, 96
  store i64 %i.nr, ptr %i.nm, align 8
  %i.ns = add i64 %i.nq, 72
  %i.nt = inttoptr i64 %i.ns to ptr               ; 6 uses
  store ptr null, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store i64 18081812447366, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store i32 0, ptr %i.nv, align 8
end_hunk_5
begin_hunk_6_@"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_25TryBuildLoadNamedPropertyEPNS8_9ValueNodeENS4_7NameRefERNS4_14FeedbackSourceEE3$_0EENS8_17MaybeReduceResultESC_SC_RKNS4_19NamedAccessFeedbackERKSE_NS4_10AccessModeEOT_EUlS5_E_EEbRKSP_RKT0_":bb.a
"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.e = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.e, label %bb.b, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  %.val31.i.i.i.i = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.val31.i.i.i.i, ptr %5, align 8
  %i.g = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br i1 %i.g, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i": ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.i.i.i.i": ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.i, label %bb.c, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit"

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  %.val30.i.i.i.i = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.val30.i.i.i.i, ptr %4, align 8
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.k, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i": ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.i.i.i.i": ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.m, label %bb.d, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.i.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.val.i.i.i.i, ptr %3, align 8
  %i.o = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i": ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i": ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.q, label %bb.e, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 32 ; 3 uses
  %i.s = add nsw i64 %.062.i.i.i.i, -1
  %i.t = icmp sgt i64 %.062.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !547

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %i.r to i64
  %.pre71.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i
  %i.u = ashr exact i64 %.pre71.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi72.i.i.i.i = phi i64 [ %i.u, %._crit_edge.loopexit.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 6 uses
  switch i64 %.pre-phi72.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.029.val.i.i.i.i, ptr %2, align 8
  %i.v = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i": ; preds = %bb.f
  %i.w = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.w, label %bb.g, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.1.val.i.i.i.i, ptr %1, align 8
  %i.y = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i": ; preds = %bb.h
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.z, label %bb.i, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %.2.val.i.i.i.i, ptr %0, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i": ; preds = %bb.j
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.ac, label %bb.k, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", %._crit_edge.i.i.i.i
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i"
  %i.af = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i" ], [ %i.p, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i" ], [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i" ], [ %i.a, %bb.k ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i" ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.thread.i.i.i.i" ], [ %i.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i" ], [ %i.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i" ], [ %i.af, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51" ], [ %i.ad, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit" ], [ %i.ae, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i" ]
  %i.ag = icmp eq ptr %i.a, %.028.i.i.i.i
  ret i1 %i.ag
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %0, i64 %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not13 = icmp eq i64 %1, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01014 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = load i64, ptr %.01014, align 8
  store i64 %i.b, ptr %2, align 8
  %i.c = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  %.not11 = icmp eq i16 %i.c, 130                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.d = getelementptr inbounds nuw i8, ptr %.01014, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.d, %i.a
  %or.cond.not = select i1 %.not11, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not11, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_"(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
  %13 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %14 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.5 = alloca [18 x i8], align 4            ; 3 uses
  %15 = alloca %"class.std::optional.888", align 8 ; 10 uses
  %16 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 168                 ; 5 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.not15.i.i = icmp eq ptr %2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  br label %bb.b

._crit_edge219:                                   ; preds = %._crit_edge, %bb.a
  %.0101.lcssa = phi i1 [ false, %bb.a ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 8 uses
  store i8 0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  store i8 0, ptr %i.an, align 8
  %i.ao = icmp sgt i32 %.0.lcssa, -1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.b:                                             ; preds = %.lr.ph218, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0216 = phi i32 [ -1, %.lr.ph218 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0101215 = phi i1 [ false, %.lr.ph218 ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw [168 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not114209 = icmp eq ptr %i.as, %i.au
  br i1 %.not114209, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.1102.lcssa = phi i1 [ %.0101215, %bb.b ], [ %spec.select, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0216, %bb.b ], [ %.3, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge219, label %bb.b, !llvm.loop !548

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.1212 = phi i32 [ %.3, %bb.n ], [ %.0216, %.lr.ph.preheader ] ; 3 uses
  %.1102211 = phi i1 [ %spec.select, %bb.n ], [ %.0101215, %.lr.ph.preheader ]
  %.0109210 = phi ptr [ %i.et, %bb.n ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.aw = load i64, ptr %.0109210, align 8
  store i64 %i.aw, ptr %8, align 8
  %i.ax = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  %spec.select = select i1 %i.ax, i1 true, i1 %.1102211 ; 2 uses
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  br i1 %i.ay, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.ba = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 312 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 304 ; 5 uses
  %.not10.i.i.i.i.i144 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i.i.i144, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %.lr.ph.i.i.i.i.i145

.lr.ph.i.i.i.i.i145:                              ; preds = %bb.c, %.lr.ph.i.i.i.i.i145
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i145 ], [ %i.bc, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i145 ], [ %i.bd, %bb.c ]
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp ult ptr %i.bf, %2                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bg, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i146 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i146, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i145, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i145
  %i.bh = icmp eq ptr %.19.i.i.i.i.i, %i.bd
  br i1 %i.bh, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %2, %i.bj
  br i1 %i.bk, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = sub i64 %i.bo, %i.bq
  %i.bs = icmp ult i64 %i.br, 96
  br i1 %i.bs, label %bb.d, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i64 noundef 96) #33
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  %i.bt = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.bq, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i ] ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 6 uses
  %i.bv = add i64 %i.bt, 96
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %2, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 262143, ptr %i.bx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  %.02022.i.i = load ptr, ptr %i.bb, align 8      ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp ult ptr %2, %i.bz                  ; 2 uses
  %.in.v.i.i = select i1 %i.ca, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i150 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i150, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !141

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.ca, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.bd, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %.019.lcssa29.i.i, %i.cc
  br i1 %i.cd, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.ce = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.cf = phi ptr [ %.pre.i, %bb.e ], [ %i.bz, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.ce, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.cg = icmp ult ptr %i.cf, %2
  br i1 %i.cg, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

select.unfold.i:                                  ; preds = %bb.f, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.ch = icmp eq ptr %.sroa.4.0.i.ph.i, %i.bd
  br i1 %i.ch, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp ult ptr %2, %i.cj
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i: ; preds = %bb.g, %select.unfold.i
  %i.cl = phi i1 [ %i.ck, %bb.g ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cl, ptr noundef nonnull %i.bu, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 336 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i
  %.sroa.08.0.i = phi ptr [ %i.bu, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i ], [ %.sroa.05.0.i.i, %bb.f ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 40 ; 4 uses
  %i.cq = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.ba) #33
  %i.cr = load i32, ptr %i.cp, align 8
  %i.cs = and i32 %i.cr, %i.cq
  store i32 %i.cs, ptr %i.cp, align 8
  %i.ct = load i64, ptr %i.y, align 8
  %i.cu = and i64 %i.ct, 65535
  %.not = icmp eq i64 %i.cu, 99
  br i1 %.not, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit
  %i.cv = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.cx = load i8, ptr %i.cw, align 4
  %.not20.i = icmp eq i8 %i.cx, 3
  br i1 %.not20.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i: ; preds = %bb.i
  store ptr %i.cz, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.cz, ptr %6, align 8
  %i.da = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #33
  %i.dd = xor i1 %i.dc, true
  %.sroa.0.0.copyload.i149 = load ptr, ptr %7, align 8
  %i.de = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i149, ptr noundef %i.ba)
  %i.df = zext i1 %i.dd to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 48
  store i64 %i.db, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 45
  store i8 1, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 44
  store i8 %i.df, ptr %i.di, align 4
  %i.dj = load i32, ptr %i.cp, align 8
  %i.dk = and i32 %i.dj, %i.de
  store i32 %i.dk, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, %bb.h, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.dl = load i64, ptr %8, align 8
  store ptr %i.aa, ptr %9, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  store i64 %i.dl, ptr %i.aa, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.dm = load ptr, ptr %i.x, align 8
  %i.dn = load ptr, ptr %i.ae, align 8
  %i.do = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.dn) #33
  %i.dp = load ptr, ptr %9, align 8               ; 2 uses
  %i.dq = load ptr, ptr %i.ab, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  store ptr %i.dm, ptr %10, align 8
  store ptr %i.do, ptr %i.af, align 8
  store ptr %i.dp, ptr %i.ag, align 8
  store i64 %i.du, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 1, ptr %i.ah, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ai, align 8
  store i32 0, ptr %i.aj, align 4
  %i.dv = load ptr, ptr %i.w, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(352) %i.dv)
  %.sroa.01.0.copyload.i = load i64, ptr %i.ah, align 8
  %i.dw = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.dw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit
  %i.dx = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.x, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ea, %bb.k ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eb, %bb.k ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = icmp ult ptr %i.ed, %2                  ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.ee, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.ee, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.eb
  br i1 %i.ef, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = icmp ult ptr %2, %i.eh
  br i1 %i.ei, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.k
  %i.ej = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.dy) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 40
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = load i64, ptr %i.y, align 8
  %i.en = and i64 %i.em, 65535
  %i.eo = icmp ne i64 %i.en, 142
  %.not.i.i = or i1 %.not15.i.i, %i.eo
  br i1 %.not.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.ep = load i32, ptr %i.ak, align 8
  %i.eq = and i32 %i.ep, %i.el
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.l
  %.0.i.i = phi i32 [ %i.ej, %select.unfold.i.i ], [ %i.eq, %bb.l ], [ %i.el, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.er = and i32 %.0.i.i, 1
  %i.es = icmp eq i32 %i.er, 0
  %spec.select115 = select i1 %i.es, i32 %.1212, i32 %i.av
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit
  %.2 = phi i32 [ %.1212, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit ], [ %spec.select115, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %.3 = phi i32 [ %.2, %bb.m ], [ %.1212, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.et = getelementptr inbounds nuw i8, ptr %.0109210, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.et, %i.au
  br i1 %.not114, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %._crit_edge219
  store i8 0, ptr %i.am, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull %11, i32 noundef 2)
  store i8 1, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %2, ptr %i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %13, ptr nonnull %i.i, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge219
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, 7696581394432
  switch i64 %i.ew, label %bb.q [
    i64 0, label %bb.r
    i64 4398046511104, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 70, ptr %i.h, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = or i8 %i.fa, 1
  store i8 %i.fb, ptr %i.ez, align 1
  %i.fc = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cr

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.fd = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %2)
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.cr, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = and i64 %i.fg, 7696581394432
  switch i64 %i.fh, label %bb.t [
    i64 0, label %bb.w
    i64 4398046511104, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 368 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i118, label %bb.u, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZN2v88internal8compiler12JSHeapBroker17InitHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.fj) #33
  %.pr.i.i = load ptr, ptr %i.fk, align 8         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i, !prof !76

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i: ; preds = %bb.u, %bb.t
  %i.fm = phi ptr [ %.pr.i.i, %bb.u ], [ %i.fl, %bb.t ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.fo, ptr nonnull %i.fm) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit

bb.w:                                             ; preds = %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %2, ptr %i.g, align 8
  %i.fq = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i, %bb.w
  %.0.i = phi ptr [ %i.fq, %bb.w ], [ %i.fp, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i ] ; 4 uses
  br i1 %.0101.lcssa, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = sub i64 %i.fu, %i.fw
  %i.fy = icmp ult i64 %i.fx, 96
  br i1 %i.fy, label %bb.y, label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i, !prof !6

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fs, i64 noundef 96) #33
  %.pre.i.i.i.i.i = load i64, ptr %i.fv, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fz = phi i64 [ %.pre.i.i.i.i.i, %bb.y ], [ %i.fw, %bb.x ] ; 2 uses
  %i.ga = add i64 %i.fz, 96
  store i64 %i.ga, ptr %i.fv, align 8
  %i.gb = add i64 %i.fz, 72
  %i.gc = inttoptr i64 %i.gb to ptr               ; 6 uses
  store ptr null, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 18081812447366, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
end_hunk_6
begin_hunk_7_@"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_21BuildGetKeyedPropertyEPNS8_9ValueNodeERKNS4_14FeedbackSourceERKNS4_17ProcessedFeedbackEE3$_0EENS8_17MaybeReduceResultESC_SC_RKNS4_19NamedAccessFeedbackESF_NS4_10AccessModeEOT_EUlS5_E_EEbRKSQ_RKT0_":bb.a
bb.a:
  %0 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %1 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.8.val ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %.8.val, 2                      ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %.062.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %.02961.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %.0.val, %bb.a ] ; 13 uses
  %.029.val32.i.i.i.i = load ptr, ptr %.02961.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.029.val32.i.i.i.i, ptr %6, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br i1 %i.d, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.e = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.e, label %bb.b, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  %.val31.i.i.i.i = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.val31.i.i.i.i, ptr %5, align 8
  %i.g = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  br i1 %i.g, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i": ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.i.i.i.i": ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.i, label %bb.c, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit"

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  %.val30.i.i.i.i = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.val30.i.i.i.i, ptr %4, align 8
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.k, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i": ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i": ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.m, label %bb.d, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.val.i.i.i.i, ptr %3, align 8
  %i.o = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i": ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i": ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.q, label %bb.e, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 32 ; 3 uses
  %i.s = add nsw i64 %.062.i.i.i.i, -1
  %i.t = icmp sgt i64 %.062.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !562

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %i.r to i64
  %.pre71.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i
  %i.u = ashr exact i64 %.pre71.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi72.i.i.i.i = phi i64 [ %i.u, %._crit_edge.loopexit.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 6 uses
  switch i64 %.pre-phi72.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.029.val.i.i.i.i, ptr %2, align 8
  %i.v = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i": ; preds = %bb.f
  %i.w = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.w, label %bb.g, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.1.val.i.i.i.i, ptr %1, align 8
  %i.y = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i": ; preds = %bb.h
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.z, label %bb.i, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %.2.val.i.i.i.i, ptr %0, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i": ; preds = %bb.j
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.ac, label %bb.k, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", %._crit_edge.i.i.i.i
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i"
  %i.af = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i" ], [ %i.p, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i" ], [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i" ], [ %i.a, %bb.k ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i" ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i" ], [ %i.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i" ], [ %i.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i" ], [ %i.af, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51" ], [ %i.ad, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit" ], [ %i.ae, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i" ]
  %i.ag = icmp eq ptr %i.a, %.028.i.i.i.i
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_"(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
  %13 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %14 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.5 = alloca [18 x i8], align 4            ; 3 uses
  %15 = alloca %"class.std::optional.888", align 8 ; 10 uses
  %16 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 168                 ; 5 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.not15.i.i = icmp eq ptr %2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge, %bb.a
  %.0101.lcssa = phi i1 [ false, %bb.a ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 8 uses
  store i8 0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  store i8 0, ptr %i.an, align 8
  %i.ao = icmp sgt i32 %.0.lcssa, -1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.b:                                             ; preds = %.lr.ph214, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0212 = phi i32 [ -1, %.lr.ph214 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0101211 = phi i1 [ false, %.lr.ph214 ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw [168 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not114205 = icmp eq ptr %i.as, %i.au
  br i1 %.not114205, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.1102.lcssa = phi i1 [ %.0101211, %bb.b ], [ %spec.select, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0212, %bb.b ], [ %.3, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge215, label %bb.b, !llvm.loop !563

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.1208 = phi i32 [ %.3, %bb.n ], [ %.0212, %.lr.ph.preheader ] ; 3 uses
  %.1102207 = phi i1 [ %spec.select, %bb.n ], [ %.0101211, %.lr.ph.preheader ]
  %.0109206 = phi ptr [ %i.et, %bb.n ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.aw = load i64, ptr %.0109206, align 8
  store i64 %i.aw, ptr %8, align 8
  %i.ax = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  %spec.select = select i1 %i.ax, i1 true, i1 %.1102207 ; 2 uses
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  br i1 %i.ay, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.ba = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 312 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 304 ; 5 uses
  %.not10.i.i.i.i.i140 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i.i.i140, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %.lr.ph.i.i.i.i.i141

.lr.ph.i.i.i.i.i141:                              ; preds = %bb.c, %.lr.ph.i.i.i.i.i141
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i141 ], [ %i.bc, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i141 ], [ %i.bd, %bb.c ]
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp ult ptr %i.bf, %2                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bg, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i142 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i142, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i141, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i141
  %i.bh = icmp eq ptr %.19.i.i.i.i.i, %i.bd
  br i1 %i.bh, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %2, %i.bj
  br i1 %i.bk, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = sub i64 %i.bo, %i.bq
  %i.bs = icmp ult i64 %i.br, 96
  br i1 %i.bs, label %bb.d, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i64 noundef 96) #33
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  %i.bt = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.bq, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i ] ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 6 uses
  %i.bv = add i64 %i.bt, 96
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %2, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 262143, ptr %i.bx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  %.02022.i.i = load ptr, ptr %i.bb, align 8      ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp ult ptr %2, %i.bz                  ; 2 uses
  %.in.v.i.i = select i1 %i.ca, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i146 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i146, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !141

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.ca, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.bd, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %.019.lcssa29.i.i, %i.cc
  br i1 %i.cd, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.ce = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.cf = phi ptr [ %.pre.i, %bb.e ], [ %i.bz, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.ce, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.cg = icmp ult ptr %i.cf, %2
  br i1 %i.cg, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

select.unfold.i:                                  ; preds = %bb.f, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.ch = icmp eq ptr %.sroa.4.0.i.ph.i, %i.bd
  br i1 %i.ch, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp ult ptr %2, %i.cj
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i: ; preds = %bb.g, %select.unfold.i
  %i.cl = phi i1 [ %i.ck, %bb.g ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cl, ptr noundef nonnull %i.bu, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 336 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i
  %.sroa.08.0.i = phi ptr [ %i.bu, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i ], [ %.sroa.05.0.i.i, %bb.f ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 40 ; 4 uses
  %i.cq = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.ba) #33
  %i.cr = load i32, ptr %i.cp, align 8
  %i.cs = and i32 %i.cr, %i.cq
  store i32 %i.cs, ptr %i.cp, align 8
  %i.ct = load i64, ptr %i.y, align 8
  %i.cu = and i64 %i.ct, 65535
  %.not = icmp eq i64 %i.cu, 99
  br i1 %.not, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit
  %i.cv = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.cx = load i8, ptr %i.cw, align 4
  %.not20.i = icmp eq i8 %i.cx, 3
  br i1 %.not20.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i: ; preds = %bb.i
  store ptr %i.cz, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.cz, ptr %6, align 8
  %i.da = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #33
  %i.dd = xor i1 %i.dc, true
  %.sroa.0.0.copyload.i145 = load ptr, ptr %7, align 8
  %i.de = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i145, ptr noundef %i.ba)
  %i.df = zext i1 %i.dd to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 48
  store i64 %i.db, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 45
  store i8 1, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 44
  store i8 %i.df, ptr %i.di, align 4
  %i.dj = load i32, ptr %i.cp, align 8
  %i.dk = and i32 %i.dj, %i.de
  store i32 %i.dk, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, %bb.h, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.dl = load i64, ptr %8, align 8
  store ptr %i.aa, ptr %9, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  store i64 %i.dl, ptr %i.aa, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.dm = load ptr, ptr %i.x, align 8
  %i.dn = load ptr, ptr %i.ae, align 8
  %i.do = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.dn) #33
  %i.dp = load ptr, ptr %9, align 8               ; 2 uses
  %i.dq = load ptr, ptr %i.ab, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  store ptr %i.dm, ptr %10, align 8
  store ptr %i.do, ptr %i.af, align 8
  store ptr %i.dp, ptr %i.ag, align 8
  store i64 %i.du, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 1, ptr %i.ah, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ai, align 8
  store i32 0, ptr %i.aj, align 4
  %i.dv = load ptr, ptr %i.w, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(352) %i.dv)
  %.sroa.01.0.copyload.i = load i64, ptr %i.ah, align 8
  %i.dw = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.dw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit
  %i.dx = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.x, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 312
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ea, %bb.k ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eb, %bb.k ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = icmp ult ptr %i.ed, %2                  ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.ee, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.ee, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.eb
  br i1 %i.ef, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = icmp ult ptr %2, %i.eh
  br i1 %i.ei, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.k
  %i.ej = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.dy) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 40
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = load i64, ptr %i.y, align 8
  %i.en = and i64 %i.em, 65535
  %i.eo = icmp ne i64 %i.en, 142
  %.not.i.i = or i1 %.not15.i.i, %i.eo
  br i1 %.not.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.ep = load i32, ptr %i.ak, align 8
  %i.eq = and i32 %i.ep, %i.el
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.l
  %.0.i.i = phi i32 [ %i.ej, %select.unfold.i.i ], [ %i.eq, %bb.l ], [ %i.el, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.er = and i32 %.0.i.i, 1
  %i.es = icmp eq i32 %i.er, 0
  %spec.select115 = select i1 %i.es, i32 %.1208, i32 %i.av
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit
  %.2 = phi i32 [ %.1208, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit ], [ %spec.select115, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %.3 = phi i32 [ %.2, %bb.m ], [ %.1208, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.et = getelementptr inbounds nuw i8, ptr %.0109206, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.et, %i.au
  br i1 %.not114, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %._crit_edge215
  store i8 0, ptr %i.am, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull %11, i32 noundef 2)
  store i8 1, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %2, ptr %i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %13, ptr nonnull %i.i, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge215
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, 7696581394432
  switch i64 %i.ew, label %bb.q [
    i64 0, label %bb.r
    i64 4398046511104, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 70, ptr %i.h, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = or i8 %i.fa, 1
  store i8 %i.fb, ptr %i.ez, align 1
  %i.fc = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.co

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.fd = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %2)
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.co, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = and i64 %i.fg, 7696581394432
  switch i64 %i.fh, label %bb.t [
    i64 0, label %bb.w
    i64 4398046511104, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 368 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i118, label %bb.u, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZN2v88internal8compiler12JSHeapBroker17InitHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.fj) #33
  %.pr.i.i = load ptr, ptr %i.fk, align 8         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i, !prof !76

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i: ; preds = %bb.u, %bb.t
  %i.fm = phi ptr [ %.pr.i.i, %bb.u ], [ %i.fl, %bb.t ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.fo, ptr nonnull %i.fm) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit

bb.w:                                             ; preds = %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %2, ptr %i.g, align 8
  %i.fq = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i, %bb.w
  %.0.i = phi ptr [ %i.fq, %bb.w ], [ %i.fp, %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i ] ; 4 uses
  br i1 %.0101.lcssa, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = sub i64 %i.fu, %i.fw
  %i.fy = icmp ult i64 %i.fx, 96
  br i1 %i.fy, label %bb.y, label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i, !prof !6

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fs, i64 noundef 96) #33
  %.pre.i.i.i.i.i = load i64, ptr %i.fv, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_18MigrateMapIfNeededEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fz = phi i64 [ %.pre.i.i.i.i.i, %bb.y ], [ %i.fw, %bb.x ] ; 2 uses
  %i.ga = add i64 %i.fz, 96
  store i64 %i.ga, ptr %i.fv, align 8
  %i.gb = add i64 %i.fz, 72
  %i.gc = inttoptr i64 %i.gb to ptr               ; 6 uses
  store ptr null, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 18081812447366, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
end_hunk_7
