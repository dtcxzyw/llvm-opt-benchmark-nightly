Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_:bb.a
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ao = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ap = and i32 %i.ao, %.sroa.044.0             ; 2 uses
  %i.aq = and i32 %i.ap, 16382
  %.not72 = icmp eq i32 %i.aq, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ar = icmp eq i8 %i.u, 0
  br i1 %i.ar, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.as = add i64 %.024.i82, -1                   ; 2 uses
  %i.at = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !771

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.aa, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19682
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.az
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ba = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19732
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.bb = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 7                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !19682
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bj, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bm = phi i64 [ %i.be, %bb.h ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20301 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bp, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !20301
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.br = add i64 %i.bl, %.030                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.by, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21550

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !19736
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.k ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !19682
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !19682
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.au, %bb.f ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.lcssa103.sink = phi i64 [ %i.y, %bb.f ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !20282
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa103.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !21552
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #43
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !19734
  %i.b = load i64, ptr %6, align 8, !tbaa !19769
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19720
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !19695
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #39 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE14eraseBlankColdEPS8_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !21553

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #41
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19761
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19695
  %i.w = add i64 %i.v, 256
  store i64 %i.w, ptr %i.u, align 8, !tbaa !19695
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.392", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !19732  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i74 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i74, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i74) #45 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !19794
  store i8 0, ptr %i.i, align 1, !tbaa !20157
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 7
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 7
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 7
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 7
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 7
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 7
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 7
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 7
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21554

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 7
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !21555

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !19736
  store ptr %i.v, ptr %0, align 8, !tbaa !19732
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !20157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i8 0, ptr %6, align 8, !tbaa !20293, !alias.scope !21563
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !20297
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !19766
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !21564
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !19766
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20305
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.8108.0..sroa_idx, align 8, !tbaa !19766
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9109.0..sroa_idx, align 8, !tbaa !21565
end_hunk_0
begin_hunk_1_@_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE:bb.a
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !20274
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.412") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19703 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19769
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !772

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !773

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19703
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 8                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20309 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20309
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 8                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21575

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19705
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20284
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19769
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20310
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !20295
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20280
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20291
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !21577
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.418", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !19703  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #45 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !19794
  store i8 0, ptr %i.i, align 1, !tbaa !20157
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 8
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 8
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 8
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 8
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 8
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 8
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 8
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21578

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 8
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !21579

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !19705
  store ptr %i.v, ptr %0, align 8, !tbaa !19703
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !20157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i8 0, ptr %6, align 8, !tbaa !20293, !alias.scope !21587
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !20297
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_1
begin_hunk_2_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.436") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19691 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load i64, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676
  %i.ae = icmp eq i64 %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !721

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !722

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19691
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 8                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20315 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20315
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 8                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21599

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19698
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !19766
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !19676
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !20317
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store ptr null, ptr %i.ch, align 8, !tbaa !20318
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19767
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20300
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !21602
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.442", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !19691  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #45 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !19794
  store i8 0, ptr %i.i, align 1, !tbaa !20157
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 8
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 8
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 8
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 8
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 8
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 8
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 8
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21603

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 8
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !21604

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !19698
  store ptr %i.v, ptr %0, align 8, !tbaa !19691
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !20157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i8 0, ptr %6, align 8, !tbaa !20293, !alias.scope !21612
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !20297
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19714
  %.pre92 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19714 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i81 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i81, %i.k
  %i.q = shl nuw nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not71 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19769
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nuw nsw i32 %.sroa.044.0, 65535
  %i.al = and i32 %i.ak, %.sroa.044.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i82, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i81
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !767

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %..thread69_crit_edge
  %.pre-phi93 = phi i64 [ %.pre92, %..thread69_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi93, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi93, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %i.ay, align 8, !tbaa !19714
  %.pre94 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi95 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre94, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi95
  %i.ba = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nuw nsw i64 %i.bb, 6                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.bh, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20323 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bn, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20323
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.030                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nuw nsw i64 %i.bq, 6                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.bw, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21633

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20324
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !19715, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = load i64, ptr %6, align 8, !tbaa !20284
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19769
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !20330
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.cu, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cv, align 8, !tbaa !19720
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %i.cw, align 8, !tbaa !19695
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cy = add i64 %i.cx, 256
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !19861
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cz, align 8, !tbaa !20332
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19695
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.455", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19714 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !20333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #45 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !19794
  %i.ah = load ptr, ptr %0, align 8, !tbaa !19715 ; 3 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %i.bd, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ] ; 9 uses
  %.01517.i.i = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %i.be, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ] ; 8 uses
  %niter = phi i64 [ 0, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.am = load <2 x ptr>, ptr %.01418.i.i, align 8, !tbaa !19800
  store <2 x ptr> %i.am, ptr %.01517.i.i, align 8, !tbaa !19800
  store ptr null, ptr %i.al, align 8, !tbaa !20279
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.an, align 8, !tbaa !19720
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !19695
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20333
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !20333
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ap, align 8, !tbaa !20333
  %i.ar = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19676
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !19676
  store i64 0, ptr %i.ar, align 8, !tbaa !19676
  %i.at = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !19800
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !19800
  store ptr null, ptr %i.av, align 8, !tbaa !20279
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ax, align 8, !tbaa !19720
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !19695
  %i.az = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20333
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !20333
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.az, align 8, !tbaa !20333
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19676
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !19676
  store i64 0, ptr %i.bb, align 8, !tbaa !19676
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i, !llvm.loop !777

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader ], [ %i.bd, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader ], [ %i.be, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod171 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 8
  %i.bg = load <2 x ptr>, ptr %.01418.i.i.epil.init, align 8, !tbaa !19800
  store <2 x ptr> %i.bg, ptr %.01517.i.i.epil.init, align 8, !tbaa !19800
  store ptr null, ptr %i.bf, align 8, !tbaa !20279
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em:bb.a
  store i64 0, ptr %i.ac, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !19715
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.469") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19725 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19763
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !764

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !765

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19725
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 8                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20339 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20339
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 8                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21657

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19727
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20287
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19763
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20342
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !19681
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19765
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20289
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !21660
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.475", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !19725  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i72 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i72, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i72) #45 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !19794
  store i8 0, ptr %i.i, align 1, !tbaa !20157
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 8
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 8
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 8
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 8
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 8
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 8
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 8
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21661

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 8
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !21662

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !19727
  store ptr %i.v, ptr %0, align 8, !tbaa !19725
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !20157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i8 0, ptr %6, align 8, !tbaa !20293, !alias.scope !21670
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !20297
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_4
begin_hunk_5_@_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19676
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19720
  %.pre90 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19720 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i80 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i79 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i79, %i.k
  %i.q = shl nuw nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not69 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19763
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nuw nsw i32 %.sroa.042.0, 65535
  %i.al = and i32 %i.ak, %.sroa.042.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not70 = icmp eq i32 %i.am, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !762

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread67, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i80, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i79
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !763

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread67:                                        ; preds = %bb.e, %.loopexit, %..thread67_crit_edge
  %.pre-phi91 = phi i64 [ %.pre90, %..thread67_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi91, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi91, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre88 = load ptr, ptr %i.ay, align 8, !tbaa !19720
  %.pre92 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi93 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre92, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi93
  %i.ba = xor i64 %notmask.i31, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nuw nsw i64 %i.bb, 6                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.bh, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20323 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bn, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20323
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.028                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nuw nsw i64 %i.bq, 6                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.bw, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !21683

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20324
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !20279, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %5, align 8, !tbaa !19763
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !19763
  %i.cs = add i64 %i.cl, 256
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa103.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !19861
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa103.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !19676
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !20332
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19695
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.485", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19720 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !20333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 3
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #45 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !19794
  %i.ah = load ptr, ptr %0, align 8, !tbaa !20279 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !20279
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !20287
  %.not.i54 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i54, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = shl nsw i64 %.08.i, 6
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 6
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 6
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = shl i64 %.08.i, 6
  %i.av = getelementptr i8, ptr %i.ag, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = shl i64 %.08.i, 6
  %i.ay = getelementptr i8, ptr %i.ag, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = shl i64 %.08.i, 6
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = shl i64 %.08.i, 6
  %i.be = getelementptr i8, ptr %i.ag, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = shl i64 %.08.i, 6
  %i.bh = getelementptr i8, ptr %i.ag, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21684

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.epil

end_hunk_5
begin_hunk_6_@_ZN5folly15RegexMatchCache9addStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u, %bb.t, %bb.h
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.u ], [ %i.ao, %bb.h ], [ %i.dv, %bb.t ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #39, !inline_history !774
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.501") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20273 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19763
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.044.0, 65535
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !768

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !769

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !20273
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 8                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20352 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20352
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 8                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21751

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !20353
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20287
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19763
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20356
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !19681
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19675
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !21753
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !21756
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.504", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.394", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19676
  store i64 %2, ptr %i.b, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.k = load ptr, ptr %0, align 8, !tbaa !20273  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i72 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i72, ptr %i.g, align 8, !tbaa !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i72) #45 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !19794
  store i8 0, ptr %i.i, align 1, !tbaa !20157
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 8
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 8
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = shl i64 %.08.i, 8
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = shl i64 %.08.i, 8
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = shl i64 %.08.i, 8
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = shl i64 %.08.i, 8
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = shl i64 %.08.i, 8
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !21757

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.av = shl nsw i64 %.08.i.epil, 8
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !21758

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.az = trunc i64 %5 to i8
  store i8 %i.az, ptr %i.ay, align 2, !tbaa !20353
  store ptr %i.v, ptr %0, align 8, !tbaa !20273
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.bd = and i64 %i.bc, -256
  %i.be = select i1 %.not.i, i64 4294967295, i64 %i.bb
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !19695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  store i8 0, ptr %i.j, align 1, !tbaa !20157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i8 0, ptr %6, align 8, !tbaa !20293, !alias.scope !21766
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bg, align 8, !tbaa !20297
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19714
  %.pre92 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19714 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i81 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i81, %i.k
  %i.q = shl nuw nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not71 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19769
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nuw nsw i32 %.sroa.044.0, 65535
  %i.al = and i32 %i.ak, %.sroa.044.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i82, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i81
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !767

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %..thread69_crit_edge
  %.pre-phi93 = phi i64 [ %.pre92, %..thread69_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi93, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi93, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %i.ay, align 8, !tbaa !19714
  %.pre94 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi95 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre94, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi95
  %i.ba = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nuw nsw i64 %i.bb, 6                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.bh, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20323 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bn, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20323
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.030                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nuw nsw i64 %i.bq, 6                ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.bw, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21778

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20324
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !19715, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = load i64, ptr %6, align 8, !tbaa !20284
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19769
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !20330
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.cu, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cv, align 8, !tbaa !19720
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %i.cw, align 8, !tbaa !19695
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cy = add i64 %i.cx, 256
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !19861
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cz, align 8, !tbaa !20332
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache11eraseStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !19763
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19695 ; 3 uses
  %i.e = icmp ult i64 %i.d, 512
  br i1 %i.e, label %bb.b, label %.noexc53

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %i.d, 256
  br i1 %i.f, label %.thread395, label %.noexc51

.noexc51:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19765 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.h, 15
  %i.l = load ptr, ptr %i.j, align 16, !tbaa !19763
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %.thread400, label %.thread395

.noexc53:                                         ; preds = %bb.a
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw i128 %i.o, 14181476777654086739
  %i.q = lshr i128 %i.p, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = mul i64 %i.n, -4265267296055464877
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4265267296055464877       ; 2 uses
  %i.v = lshr i64 %i.u, 14
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %i.u, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = and i64 %i.d, 255                       ; 2 uses
  %i.ae = shl nuw i64 1, %i.ad
  %notmask.i = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %notmask.i, -1
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !19725
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc53, %bb.c
  %.024.i.i556 = phi i64 [ %i.ae, %.noexc53 ], [ %i.be, %bb.c ]
  %.026.i.i555 = phi i64 [ %i.x, %.noexc53 ], [ %i.bf, %bb.c ] ; 2 uses
  %i.ah = and i64 %.026.i.i555, %i.af
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.aj, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ac
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 16383
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = extractelement <16 x i8> %i.al, i64 15
  br i1 %.not, label %.loopexit521, label %.noexc59.preheader

.noexc59.preheader:                               ; preds = %.noexc56
  %i.ar = icmp ne ptr %i.aj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  br label %.noexc59

.noexc59:                                         ; preds = %.noexc59.preheader, %.critedge.i.i50
  %.sroa.0311.0 = phi i32 [ %i.bb, %.critedge.i.i50 ], [ %i.ao, %.noexc59.preheader ] ; 4 uses
  %i.as = icmp ne i32 %.sroa.0311.0, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0311.0, i1 true)
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = getelementptr i8, ptr %i.aj, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19763
  %i.az = icmp eq ptr %1, %i.ay
  br i1 %i.az, label %.thread400.loopexit, label %.critedge.i.i50, !prof !19685

.critedge.i.i50:                                  ; preds = %.noexc59
  %i.ba = add nuw nsw i32 %.sroa.0311.0, 65535
  %i.bb = and i32 %i.ba, %.sroa.0311.0            ; 2 uses
  %i.bc = and i32 %i.bb, 16382
  %.not496 = icmp eq i32 %i.bc, 0
  br i1 %.not496, label %.loopexit521, label %.noexc59, !llvm.loop !764

.loopexit521:                                     ; preds = %.critedge.i.i50, %.noexc56
  %i.bd = icmp eq i8 %i.aq, 0
  br i1 %i.bd, label %.thread395, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit521
  %i.be = add i64 %.024.i.i556, -1                ; 2 uses
  %i.bf = add i64 %i.z, %.026.i.i555
  %.not.i.i35 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i35, label %.thread395, label %.noexc56, !llvm.loop !765

.thread400.loopexit:                              ; preds = %.noexc59
  %i.bg = getelementptr i8, ptr %i.aw, i64 16
  br label %.thread400

.thread400:                                       ; preds = %.thread400.loopexit, %.noexc51
  %.sroa.7310.1406 = phi i64 [ %i.k, %.noexc51 ], [ %i.au, %.thread400.loopexit ] ; 4 uses
  %.sroa.0309.1405 = phi ptr [ %i.j, %.noexc51 ], [ %i.bg, %.thread400.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0309.1405, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19676 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %.thread400
  %i.bk = shl i64 %i.bi, 1
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !19766 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i165 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i165, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.thread400, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i643 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.bh, %.thread400 ] ; 3 uses
  %.sroa.3.0.i.i.i641 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %.thread400 ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.01422.i.i.i = phi i64 [ %i.bu, %bb.d ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.bm = lshr i64 %.01422.i.i.i, 6
  %i.bn = and i64 %.01422.i.i.i, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i643, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19676, !noalias !21783
  %i.bq = lshr i64 %i.bp, %i.bn                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.d, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bq, i1 true)
  %i.bs = add i64 %i.br, %.01422.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = and i64 %.01422.i.i.i, -64
  %i.bu = add i64 %i.bt, 64                       ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.3.0.i.i.i641
  br i1 %i.bv, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.d, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i644 = phi ptr [ %.sroa.0.0.i.i.i643, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i643, %bb.d ]
  %.sroa.3.0.i.i.i642 = phi i64 [ %.sroa.3.0.i.i.i641, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i641, %bb.d ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.bs, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.bu, %bb.d ] ; 2 uses
  %.not497561 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i642
  br i1 %.not497561, label %.noexc98, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.i

.noexc98:                                         ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %.neg.i.i.i = mul nsw i64 %.sroa.7310.1406, -16 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.0309.1405, i64 %.neg.i.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !19727
  %.not.i175 = icmp ult i8 %i.cb, 16
  br i1 %.not.i175, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc98
  %i.cc = load ptr, ptr %.sroa.0309.1405, align 8, !tbaa !19763
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = zext i64 %i.cd to i128
  %i.cf = mul nuw i128 %i.ce, 14181476777654086739
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = trunc nuw i128 %i.cg to i64
  %i.ci = mul i64 %i.cd, -4265267296055464877
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -4265267296055464877     ; 2 uses
  %i.cl = lshr i64 %i.ck, 14
  %i.cm = and i64 %i.cl, 255
  %i.cn = lshr i64 %i.ck, 22
  %.sroa.speculated.i.i.i176 = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  br label %bb.f

end_hunk_7
