inline.NumInlined: 898
inline.NumDeleted: 423
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19JSInliningHeuristic21CreateOrReuseDispatchEPNS1_4NodeES4_RKNS2_9CandidateEPS4_S8_S8_iPi:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  store i32 %i.al, ptr %8, align 4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = sext i32 %7 to i64
  %i.at = getelementptr [8 x i8], ptr %6, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.053 = phi ptr [ %i.aj, %.lr.ph ], [ %.1, %bb.m ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit: ; preds = %bb.g
  %i.ax = load ptr, ptr %i.an, align 8
  %i.ay = load ptr, ptr %i.ao, align 8
  %i.az = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ax, ptr nonnull %i.aw, ptr noundef %i.ay) #16 ; 3 uses
  %i.ba = load i32, ptr %8, align 4
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = zext i32 %i.bb to i64
  %.not = icmp eq i64 %indvars.iv, %i.bc
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit
  %i.bd = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 816
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder14ReferenceEqualEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr %2, ptr %12, align 8
  store ptr %i.az, ptr %i.ap, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.be, ptr noundef %i.bh, i32 noundef 2, ptr noundef nonnull %12, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.bj = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 noundef zeroext 0, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %i.bi, ptr %11, align 8
  store ptr %.053, ptr %i.aq, align 8
  %i.bo = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, ptr noundef %i.bn, i32 noundef 2, ptr noundef nonnull %11, i1 noundef zeroext false) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.bp = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.bo, ptr %10, align 8
  %i.bu = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, ptr noundef %i.bt, i32 noundef 1, ptr noundef nonnull %10, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.bv = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %i.bo, ptr %9, align 8
  %i.ca = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull %9, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit, %bb.i
  %.sink = phi ptr [ %i.ca, %bb.i ], [ %.053, %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit ]
  %.1 = phi ptr [ %i.bu, %bb.i ], [ %.053, %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEE5valueEv.exit ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  store ptr %.sink, ptr %i.cb, align 8
  %i.cc = load ptr, ptr %1, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i16, ptr %i.cd, align 8
  %i.cf = icmp eq i16 %i.ce, 1139
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %6, align 8
  %i.ch = load ptr, ptr %i.ar, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.az, ptr %i.ar, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  store ptr %i.az, ptr %6, align 8
  %i.cj = load ptr, ptr %i.cb, align 8
  store ptr %i.cj, ptr %i.au, align 8
  %i.ck = load ptr, ptr %i.an, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %1, align 8
  %i.cn = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cl, ptr noundef %i.cm, i32 noundef %7, ptr noundef nonnull %6, i1 noundef zeroext false) #16 ; 2 uses
  store ptr %i.cn, ptr %i.cb, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store ptr %i.cn, ptr %i.co, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load i32, ptr %8, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %bb.g, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.m, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit
  store i64 %i.e, ptr %i.d, align 8
  ret void
}

declare i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleENS1_9ObjectRefEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(1144), ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19JSInliningHeuristic10simplifiedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder14ReferenceEqualEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19JSInliningHeuristic6commonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN2v88internal8compiler9JSInliner12ReduceJSCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9IfSuccessEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11IfExceptionEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(109) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(109) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = load float, ptr %i.a, align 8            ; 2 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load float, ptr %i.d, align 8            ; 2 uses
  %i.f = fcmp uno float %i.e, 0.000000e+00        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %i.h, %i.j
  br i1 %i.l, label %bb.h, label %.sink.split

bb.e:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  %3 = load i32, ptr %i.m, align 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.n = load i32, ptr %4, align 4
  %5 = insertelement <2 x i32> poison, i32 %3, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.n, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = insertelement <2 x float> poison, float %i.e, i64 0
  %9 = insertelement <2 x float> %8, float %i.b, i64 1
  %10 = fdiv <2 x float> %9, %7                   ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %12 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.o = fcmp ogt float %11, %12
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp olt float %11, %12
  br i1 %i.p, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 16777215
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = icmp samesign ugt i32 %i.u, %i.z
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.g, %bb.e, %bb.b, %bb.d, %bb.c
  %.1 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.f ], [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.g ], [ %i.aa, %.sink.split ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_13CallFrequencyE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19JSInliningHeuristic12dependenciesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8544
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19JSInliningHeuristicD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %i.f)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19JSInliningHeuristicD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %i.f)
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal8compiler19JSInliningHeuristic12reducer_nameEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.37
}

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef17raw_feedback_cellEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties11IsValueEdgeENS1_4EdgeE(ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK2v88internal8compiler17FeedbackVectorRef20shared_function_infoEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal8compiler21SharedFunctionInfoRef16HasBytecodeArrayEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_18SharedFunctionInfo13InlineabilityE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler25CreateClosureParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16FrameStateInfoOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #16, !inline_history !29
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16, !inline_history !29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #18
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #16, !inline_history !29
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #16, !inline_history !29
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #16, !inline_history !30
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #16, !inline_history !30
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #18, !inline_history !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #6 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !14
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #16, !inline_history !14
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16, !inline_history !14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #18
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE16_M_insert_uniqueIjEESt4pairISt17_Rb_tree_iteratorIjEbEOT_:bb.a
  %i.r = icmp ult i32 %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold ]
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ult i64 %i.y, 40
  br i1 %i.z, label %bb.g, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef 40) #16
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit: ; preds = %bb.f, %bb.g
  %i.aa = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = add i64 %i.aa, 40
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load i32, ptr %1, align 4
  store i32 %i.ae, ptr %i.ad, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.ab, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE10_M_insert_IjNS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSE_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE24_M_get_insert_unique_posERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(109) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02335 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not36 = icmp eq ptr %.02335, null
  br i1 %.not36, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load float, ptr %i.c, align 8
  %.fr40 = freeze float %i.d                      ; 2 uses
  %i.e = fcmp uno float %.fr40, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %.fr40, %i.h                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us
  %.02337.us = phi ptr [ %.023.us, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us ], [ %.02335, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02337.us, i64 128
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp uno float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.02337.us, i64 132
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp slt i32 %i.g, %i.q
  br i1 %i.r, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %i.g, %i.q
  br i1 %i.s, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us: ; preds = %bb.c
  %i.t = load i32, ptr %i.l, align 4
  %i.u = and i32 %i.t, 16777215
  %i.v = getelementptr inbounds nuw i8, ptr %.02337.us, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = icmp samesign ugt i32 %i.u, %i.z
  br i1 %i.aa, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us: ; preds = %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us, %bb.b
  br label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us: ; preds = %bb.c, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us, %.lr.ph.split.us, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us
  %.sink = phi i64 [ 16, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us ], [ 24, %.lr.ph.split.us ], [ 24, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us ], [ 24, %bb.c ]
  %.1.i25.us = phi i1 [ true, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread.us ], [ false, %.lr.ph.split.us ], [ false, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.us ], [ false, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.02337.us, i64 %.sink
  %.023.us = load ptr, ptr %i.ab, align 8         ; 2 uses
  %.not.us = icmp eq ptr %.023.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !38

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread
  %.02337 = phi ptr [ %.023, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread ], [ %.02335, %.lr.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02337, i64 128
  %i.ad = load float, ptr %i.ac, align 4          ; 2 uses
  %i.ae = fcmp uno float %i.ad, 0.000000e+00
  br i1 %i.ae, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr inbounds nuw i8, ptr %.02337, i64 132
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fdiv float %i.ad, %i.ah                 ; 2 uses
  %i.aj = fcmp ogt float %i.i, %i.ai
  br i1 %i.aj, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = fcmp olt float %i.i, %i.ai
  br i1 %i.ak, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit: ; preds = %bb.e
  %i.al = load i32, ptr %i.l, align 4
  %i.am = and i32 %i.al, 16777215
  %i.an = getelementptr inbounds nuw i8, ptr %.02337, i64 120
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 16777215
  %i.as = icmp samesign ugt i32 %i.am, %i.ar
  br i1 %i.as, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28: ; preds = %bb.e, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit
  br label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread: ; preds = %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, %bb.d, %.lr.ph.split, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28
  %.sink57 = phi i64 [ 24, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28 ], [ 16, %.lr.ph.split ], [ 16, %bb.d ], [ 16, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit ]
  %.1.i25 = phi i1 [ false, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28 ], [ true, %.lr.ph.split ], [ true, %bb.d ], [ true, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.02337, i64 %.sink57
  %.023 = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !38

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us
  %.022.lcssa = phi ptr [ %.02337.us, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us ], [ %.02337, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread ] ; 3 uses
  %.0.lcssa = phi i1 [ %.1.i25.us, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread28.us ], [ %.1.i25, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit.thread ]
  br i1 %.0.lcssa, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.022.lcssa55 = phi ptr [ %.022.lcssa, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %.022.lcssa55, %i.av
  br i1 %i.aw, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ax = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.022.lcssa55) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.022.lcssa54 = phi ptr [ %.022.lcssa55, %bb.f ], [ %.022.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.08.0 = phi ptr [ %i.ax, %bb.f ], [ %.022.lcssa, %._crit_edge ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.az = load float, ptr %i.ay, align 8          ; 2 uses
  %i.ba = fcmp uno float %i.az, 0.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 128
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %i.bd = fcmp uno float %i.bc, 0.000000e+00      ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.bd, label %bb.i, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 132
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp sgt i32 %i.bf, %i.bh
  br i1 %i.bj, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7

bb.k:                                             ; preds = %bb.g
  br i1 %i.bd, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 132
  %2 = load i32, ptr %i.bk, align 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bl = load i32, ptr %3, align 4
  %4 = insertelement <2 x i32> poison, i32 %2, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.bl, i64 1
  %6 = sitofp <2 x i32> %5 to <2 x float>
  %7 = insertelement <2 x float> poison, float %i.bc, i64 0
  %8 = insertelement <2 x float> %7, float %i.az, i64 1
  %9 = fdiv <2 x float> %8, %6                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0      ; 2 uses
  %11 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %i.bm = fcmp ogt float %10, %11
  br i1 %i.bm, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fcmp olt float %10, %11
  br i1 %i.bn, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7: ; preds = %bb.j, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 16777215
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 16777215
  %i.by = icmp samesign ugt i32 %i.bs, %i.bx
  br i1 %i.by, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33: ; preds = %bb.j, %bb.m, %bb.k, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7
  br label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread: ; preds = %bb.h, %bb.l, %bb.i, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7, %._crit_edge.thread, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33
  %.sroa.021.0 = phi ptr [ %.sroa.08.0, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33 ], [ null, %._crit_edge.thread ], [ null, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7 ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.h ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33 ], [ %.022.lcssa55, %._crit_edge.thread ], [ %.022.lcssa54, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7 ], [ %.022.lcssa54, %bb.i ], [ %.022.lcssa54, %bb.l ], [ %.022.lcssa54, %bb.h ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(109) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = load float, ptr %i.c, align 4            ; 2 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.g = load float, ptr %i.f, align 8            ; 2 uses
  %i.h = fcmp uno float %i.g, 0.000000e+00        ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.j, %i.l
  br i1 %i.n, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 100
  %5 = load i32, ptr %i.o, align 4
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.p = load i32, ptr %6, align 4
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.p, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = insertelement <2 x float> poison, float %i.g, i64 0
  %11 = insertelement <2 x float> %10, float %i.d, i64 1
  %12 = fdiv <2 x float> %11, %9                  ; 2 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %14 = extractelement <2 x float> %12, i64 1     ; 2 uses
  %i.q = fcmp ogt float %13, %14
  br i1 %i.q, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt float %13, %14
  br i1 %i.r, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 16777215
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 16777215
  %i.ac = icmp samesign ugt i32 %i.w, %i.ab
  br label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit: ; preds = %.sink.split.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.ad = phi i1 [ %i.ac, %.sink.split.i ], [ true, %bb.a ], [ false, %bb.f ], [ true, %bb.d ], [ true, %bb.g ], [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.h ]
  %i.ae = load ptr, ptr %4, align 8, !nonnull !12, !align !39
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = icmp ult i64 %i.ak, 144
  br i1 %i.al, label %bb.i, label %_ZNKSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE11_Alloc_nodeclIRKS4_EEPSt13_Rb_tree_nodeIS4_EOT_.exit, !prof !8

bb.i:                                             ; preds = %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef 144) #16
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  br label %_ZNKSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE11_Alloc_nodeclIRKS4_EEPSt13_Rb_tree_nodeIS4_EOT_.exit

_ZNKSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE11_Alloc_nodeclIRKS4_EEPSt13_Rb_tree_nodeIS4_EOT_.exit: ; preds = %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, %bb.i
  %i.am = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.i ], [ %i.aj, %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit ] ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = add i64 %i.am, 144
  store i64 %i.ao, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ap, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 112, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef %i.an, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8
  ret ptr %i.an
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!14 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!15 = distinct !{null}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!19 = distinct !{!19, !7}
!20 = distinct !{null}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!30 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!31 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!32 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!33 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = !{i64 8}
end_hunk_1
