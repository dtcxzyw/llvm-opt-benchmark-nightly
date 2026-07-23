inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder20BuildEagerInlineCallEPNS1_9ValueNodeES4_S4_NS0_8compiler21SharedFunctionInfoRefENS5_15FeedbackCellRefERNS1_13CallArgumentsEf:bb.a
  store ptr %storemerge, ptr %i.fe, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(953) dereferenceable(953) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i64 %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sext i1 %i.b to i64
  %.0.i = add nsw i64 %i.j, %i.k                  ; 3 uses
  %i.l = trunc i64 %.0.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.n) #33 ; 3 uses
  %i.p = shl i64 %.0.i, 32
  %sext = add i64 %i.p, 4294967296                ; 2 uses
  %i.q = ashr exact i64 %sext, 32                 ; 2 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693951
  br i1 %i.r, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = ashr exact i64 %sext, 29                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.d, label %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef %i.s) #33
  %.pre.i.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit

_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder18GetConvertReceiverENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(100) %2)
  store ptr %i.ac, ptr %i.aa, align 8
  %i.ad = icmp sgt i32 %i.l, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit
  %wide.trip.count = and i64 %.0.i, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit, %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.q, 1
  ret { ptr, i64 } %.fca.1.insert.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit ] ; 2 uses
  %i.ae = load i32, ptr %2, align 8
  %.not.i = icmp ne i32 %i.ae, 0
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %indvars.iv, %i.af ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %.not5.i = icmp ult i64 %spec.select.i, %i.al
  br i1 %.not5.i, label %bb.e, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %spec.select.i
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

_ZNK2v88internal6maglev13CallArgumentsixEm.exit:  ; preds = %.lr.ph, %bb.e
  %.04.i = phi ptr [ %i.an, %bb.e ], [ null, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store ptr %.04.i, ptr %i.ao, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCallKnownJSFunctionEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS5_6VectorIS4_EE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr %5, ptr nofree noundef readonly byval(%"class.v8::base::Vector.75") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = add i64 %i.b, 4294967295
  %i.e = shl i64 %i.b, 32
  %sext = add i64 %i.e, 12884901888               ; 2 uses
  %i.f = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, i32 noundef 0) ; 2 uses
  %i.g = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.h = load ptr, ptr %6, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.i, i32 noundef 0) ; 2 uses
  %i.k = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %3, i32 noundef 0) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = ashr exact i64 %sext, 29                 ; 2 uses
  %i.o = add nsw i64 %i.n, 96
  %i.p = add nsw i64 %i.n, 136                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.p) #33
  %.pre.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i: ; preds = %bb.b, %bb.a
  %i.w = phi i64 [ %.pre.i.i, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %i.x = add i64 %i.w, %i.p
  store i64 %i.x, ptr %i.s, align 8
  %i.y = add i64 %i.o, %i.w
  %i.z = inttoptr i64 %i.y to ptr                 ; 12 uses
  %i.aa = ashr exact i64 %sext, 16
  %i.ab = or i64 %i.aa, 18129056956496
  store ptr null, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 %4, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %5, ptr %i.af, align 8
  %i.ag = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 10688
  %i.ai = lshr i32 %4, 8
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %i.an = icmp ugt i64 %i.am, -281474976710657
  br i1 %i.an, label %bb.c, label %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.395) #32
  unreachable

_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 65535
  store i32 %i.as, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  store i8 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  store ptr %i.f, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.z, i64 -16
  store ptr %i.g, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.z, i64 -24
  store ptr %i.j, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.z, i64 -32
  store ptr %i.k, ptr %i.bj, align 8
  %i.bk = icmp sgt i32 %i.c, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.preheader, label %"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit"

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bl = and i64 %i.d, 4294967295
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bn, i32 noundef 0) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = sub nuw nsw i64 -4, %indvars.iv.i.i.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bs
  store ptr %i.bo, ptr %i.bt, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i, %umax
  br i1 %exitcond.not, label %"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit", label %.lr.ph.i.i.i, !llvm.loop !172

"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit": ; preds = %.lr.ph.i.i.i, %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bu = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_19CallKnownJSFunctionEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.z)
  ret ptr %i.bu
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp ne i32 %i.ae, -2
  %.sroa.4.8.insert.ext = zext i1 %i.af to i64
  %.sroa.4.9.insert.insert = or disjoint i64 %.sroa.4.8.insert.ext, 256
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not15 = icmp eq ptr %i.ah, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.9.insert.mask10 = and i64 %.sroa.4.0.copyload, -65281
  %.sroa.4.9.insert.insert11 = or disjoint i64 %.sroa.4.9.insert.mask10, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0.copyload, %bb.d ], [ null, %bb.c ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.9.insert.insert, %bb.b ], [ %.sroa.4.9.insert.insert11, %bb.d ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %i.n, %i.p
  br i1 %i.ad, label %bb.c, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  br label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.n, %bb.b ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = sext i32 %i.aj to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 3
  %i.av = icmp eq i32 %i.au, 2
  %.sroa.4.8.insert.ext = zext i1 %i.av to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not11 = icmp eq ptr %i.ax, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.0.0.copyload, %bb.e ], [ null, %bb.d ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.8.insert.ext, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.4.0.copyload, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN2v88internal6maglev31MergePointInterpreterFrameState10MergeThrowEPNS1_18MaglevGraphBuilderEPKNS1_21MaglevCompilationUnitERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, %i.g
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, %i.k                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.q
  %i.y = ashr exact i64 %i.x, 3
  %.not.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.n, align 8           ; 2 uses
end_hunk_0
