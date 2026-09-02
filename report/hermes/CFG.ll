Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CFG?download=true
inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14ChildrenGetterILb1EE3GetEPS4_PNS6_15BatchUpdateInfoE:bb.a
  br i1 %i.bh, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.bj = add nsw i64 %.047.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.bk, label %bb.h, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !22

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.l
  %i.bl = and i32 %i.ar, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.g
  %.pre-phi56.i.i.i.i = phi i32 [ %i.bl, %._crit_edge.loopexit.i.i.i.i ], [ %i.ar, %bb.g ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aq, %bb.g ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit [
    i32 3, label %bb.m
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !63
  %i.bn = icmp eq ptr %i.bm, %i.an
  br i1 %i.bn, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.n
  %.1.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bp = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !63
  %i.bq = icmp eq ptr %i.bp, %i.an
  br i1 %i.bq, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.2.i.i.i.i = phi ptr [ %i.br, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bs = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !63
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit50: ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit52: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i: ; preds = %bb.h, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit50, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit52, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.m
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.m ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.bw, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit52 ], [ %i.bv, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit50 ], [ %i.bu, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.h ] ; 4 uses
  %i.bx = icmp eq ptr %.028.i.i.i.i, %i.at
  %.01730.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i = icmp eq ptr %.01730.i.i, %i.at
  %or.cond.i.i = select i1 %i.bx, i1 true, i1 %.not31.i.i
  br i1 %or.cond.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, %bb.q
  %.01733.i.i = phi ptr [ %.017.i.i, %bb.q ], [ %.01730.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.032.i.i = phi ptr [ %.1.i.i, %bb.q ], [ %.028.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ] ; 3 uses
  %i.by = load ptr, ptr %.01733.i.i, align 8, !tbaa !63 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.an
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  store ptr %i.by, ptr %.032.i.i, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.032.i.i, %.lr.ph.i.i ], [ %i.ca, %bb.p ] ; 2 uses
  %.017.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.017.i.i, %i.at
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit: ; preds = %bb.q, %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i
  %.016.i.i = phi ptr [ %.028.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ], [ %i.at, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.at, %._crit_edge.i.i.i.i ], [ %.1.i.i, %bb.q ]
  %i.cb = ptrtoint ptr %.016.i.i to i64
  %i.cc = sub i64 %i.cb, %i.au
  %i.cd = lshr exact i64 %i.cc, 3
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.cf = load i32, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.cg = load i32, ptr %i.aj, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.s, !prof !74

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 8) #14
  %.pre.i16 = load i32, ptr %i.ai, align 8, !tbaa !40
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %bb.r, %bb.s
  %i.ch = phi i32 [ %.pre.i16, %bb.s ], [ %i.cf, %bb.r ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !39
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  store i64 %i.am, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.cm = add i32 %i.cl, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit
  %storemerge = phi i32 [ %i.cm, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %i.ce, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit ]
  store i32 %storemerge, ptr %i.ai, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.cn, %i.ah
  br i1 %.not15, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.t, %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E4findEPKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14ChildrenGetterILb1EE3GetEPS4_St17integral_constantIbLb1EE(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.114") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !noalias !387 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40, !noalias !387 ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i.i ; 6 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !112, !noalias !387 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !113, !noalias !387
  %i.j = add i8 %i.i, -90
  %i.k = icmp ult i8 %i.j, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.g, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.k
  br i1 %.not1.i.i.i.i.i, label %bb.b, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.p, align 4, !tbaa !41
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.m
  br i1 %.not4.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i64 [ %i.x, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i8 = icmp eq ptr %i.q, %i.f
  br i1 %.not3.i.i.i.i.i8, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.02.1.i.i.i = phi ptr [ %i.w, %bb.c ], [ %i.q, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !113
  %i.u = add i8 %i.t, -90
  %i.v = icmp ult i8 %i.u, -15
  %.not12.i.i.i.i.i10 = icmp eq ptr %i.r, null
  %.not1.i.i.i.i.i11 = or i1 %.not12.i.i.i.i.i10, %i.v
  br i1 %.not1.i.i.i.i.i11, label %bb.c, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i.i12, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !9

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i9, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.w, %bb.c ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i.i.i9 ] ; 2 uses
  %i.x = add nuw nsw i64 %.06.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.m
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !385

_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i
  %.not.i.i = icmp samesign ult i64 %.06.i.i.i, 8
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 8) #14
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !40
  %.pre16.i.i = zext i32 %.pre.i.i to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i ]
  %.pre-phi.i.i = phi i64 [ %.pre16.i.i, %bb.d ], [ 0, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, %bb.e
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.04.2.i.i.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.e ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !125
  store ptr %i.ac, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.f
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.04.1.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.04.1.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !113
  %i.ah = add i8 %i.ag, -90
  %i.ai = icmp ult i8 %i.ah, -15
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  %.not1.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i.i.i, %i.ai
  br i1 %.not1.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.2.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i.i.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !386

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i
  %2 = add nuw i64 %.pre-phi.i.i, %i.x
  %3 = trunc i64 %2 to i32
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit: ; preds = %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i
  %i.al = phi i32 [ 0, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ], [ %3, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i ]
  store i32 %i.al, ptr %i.o, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE20CalculateFromScratchERS5_PNS6_15BatchUpdateInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::DomTreeBuilder::SemiNCAInfo", align 8 ; 12 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.g, align 4, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !149
  store ptr null, ptr %i.h, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !39, !alias.scope !392
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !41, !alias.scope !392
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !53, !noalias !392
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %i.n, align 8, !alias.scope !392
  store i32 1, ptr %i.o, align 8, !tbaa !40, !alias.scope !392
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.v) #14
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.x = load ptr, ptr %0, align 8, !tbaa !39
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = call noundef i32 @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE6runDFSILb0EPFbPS4_S8_EEEjS8_jT0_j(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.y, i32 noundef 0, ptr noundef nonnull @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE13AlwaysDescendEPS4_S7_, i32 noundef 0) ; 0 uses
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10runSemiNCAERS5_j(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.aa, align 8, !tbaa !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = load ptr, ptr %0, align 8, !tbaa !39
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !63
  %i.ae = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15, !noalias !393 ; 3 uses
  call void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEC1EPS2_PS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef %i.ad, ptr noundef null) #14, !noalias !393
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 4 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #13
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 56) #13
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !64
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.e
  %i.ap = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i ], [ %i.ae, %bb.e ] ; 2 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !91
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16attachNewSubtreeERS5_PNS_15DomTreeNodeBaseIS4_EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !159 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %.pre1.i.i = load ptr, ptr %i.l, align 8, !tbaa !160 ; 3 uses
  br i1 %i.as, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %i.at = zext i32 %i.ar to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.at, 72
  %i.au = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.ba, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.av = load ptr, ptr %.011.i.i.i, align 8, !tbaa !63
  %magicptr.i.i.i = ptrtoint ptr %i.av to i64
  switch i64 %magicptr.i.i.i, label %bb.i [
    i64 -8, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
    i64 -16, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !39 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.ax) #14
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i: ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, %bb.h
  %i.bb = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i ], [ %.pre1.i.i, %bb.h ]
  call void @_ZdlPv(ptr noundef %i.bb) #14
  %i.bc = load ptr, ptr %2, align 8, !tbaa !148   ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i17, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #13
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEED2Ev.exit

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE6runDFSILb0EZNS6_15DeleteReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESD_EUlPS4_SE_E_EEjSE_jT0_j(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"class.llvh::SmallVector.112", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %7 = alloca %"class.llvh::SmallVector.114", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 64, ptr %i.e, align 4, !tbaa !41
  store ptr %1, ptr %i.c, align 8
  store i32 1, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph73, label %bb.b
end_hunk_0
