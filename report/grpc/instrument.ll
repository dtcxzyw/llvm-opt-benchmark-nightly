Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/instrument?download=true
inline.NumInlined: 7378
inline.NumDeleted: 4043
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK9grpc_core12MetricsQuery3RunENS_13RefCountedPtrINS_15CollectionScopeEEERNS_11MetricsSinkE:bb.a
  br label %bb.av

bb.av:                                            ; preds = %.critedge, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.080.0120, i64 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.9.0119, i64 56 ; 2 uses
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !95  ; 2 uses
  %i.gg = icmp slt i8 %i.gf, -1
  br i1 %i.gg, label %.lr.ph.i.i77, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i77:                                     ; preds = %bb.av, %.lr.ph.i.i77
  %i.gh = phi ptr [ %i.gr, %.lr.ph.i.i77 ], [ %i.ge, %bb.av ]
  %i.gi = phi ptr [ %i.gq, %.lr.ph.i.i77 ], [ %i.gd, %bb.av ] ; 2 uses
  %i.gj = load <16 x i8>, ptr %i.gi, align 1, !tbaa !40
  %i.gk = icmp slt <16 x i8> %i.gj, splat (i8 -1)
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = zext i16 %i.gl to i32
  %i.gn = add nuw nsw i32 %i.gm, 1
  %i.go = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gn, i1 true)
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw [56 x i8], ptr %i.gh, i64 %i.gp ; 2 uses
  %i.gs = load i8, ptr %i.gq, align 1, !tbaa !95  ; 2 uses
  %i.gt = icmp slt i8 %i.gs, -1
  br i1 %i.gt, label %.lr.ph.i.i77, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !523

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i77, %bb.av
  %.sroa.9.1 = phi ptr [ %i.ge, %bb.av ], [ %i.gr, %.lr.ph.i.i77 ]
  %.sroa.080.1 = phi ptr [ %i.gd, %bb.av ], [ %i.gq, %.lr.ph.i.i77 ]
  %i.gu = phi i8 [ %i.gf, %bb.av ], [ %i.gs, %.lr.ph.i.i77 ]
  %i.gv = icmp eq i8 %i.gu, -1
  br i1 %i.gv, label %._crit_edge.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE8iteratorppEv.exit, !prof !81

bb.aw:                                            ; preds = %bb.at
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gw, %bb.aw ], [ %i.fw, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp166, %.loopexit107, %.loopexit.split-lp, %bb.ax, %bb.q, %bb.n, %bb.j, %.body71
  %.pn50.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.r, %bb.j ], [ %i.eo, %.body71 ], [ %i.ae, %bb.n ], [ %i.ag, %bb.q ], [ %.pn, %bb.ax ], [ %lpad.loopexit, %.loopexit107 ], [ %lpad.loopexit167, %.loopexit ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ]
  %.val.i.i160 = load i64, ptr %8, align 8, !tbaa !85
  %i.gx = icmp eq i64 %.val.i.i160, 0
  br i1 %i.gx, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEED2Ev.exit164, label %bb.ay

bb.ay:                                            ; preds = %.body
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %8, ptr %3, align 8, !tbaa !532
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 56, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS6_12MetricsQuery3RunENS6_13RefCountedPtrINS6_15CollectionScopeEEERNS6_11MetricsSinkEE10DomainInfoEENS3_6HashEqIS9_vE4HashENSJ_2EqESaISt4pairIKS9_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJST_SU_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i161 unwind label %bb.az

.noexc.i161:                                      ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.val1.i.i.i162 = load i64, ptr %8, align 8, !tbaa !85
  %.val2.i.i.i163 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !86
  %i.ha = and i64 %i.gz, 65536
  %i.hb = icmp ne i64 %i.ha, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.val1.i.i.i162, ptr noundef %.val2.i.i.i163, i64 noundef 56, i64 noundef 8, i1 noundef zeroext %i.hb)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEED2Ev.exit164 unwind label %bb.az

bb.az:                                            ; preds = %.noexc.i161, %bb.ay
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #40
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEED2Ev.exit164: ; preds = %.body, %.noexc.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  resume { ptr, i32 } %.pn50.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9grpc_core17instrument_detail15InstrumentIndex4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17NodeHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEN9grpc_core18InstrumentMetadata11DescriptionEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SA_EEE4findIS7_EENSI_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEEixIS7_SF_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERKSS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !125, !noalias !550 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !551 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr readonly %.val21.i.i.i.i, i32 0, i32 1, i32 1), !noalias !551
  %i.b = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !86, !noalias !552
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %0, align 8, !tbaa !85, !noalias !552 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.m, %i.k
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val24.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !551 ; 2 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.i.i.i.i = phi i64 [ %i.n, %bb.a ], [ %i.aj, %bb.c ]
  %.sroa.15.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ai, %bb.c ] ; 2 uses
  %.sroa.7.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.l ; 5 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.7.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1), !noalias !551
  %i.u = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i, i64 %.sroa.7.0.i.i.i.i
  %i.v = load <16 x i8>, ptr %i.u, align 1, !tbaa !40, !noalias !551 ; 2 uses
  %i.w = icmp eq <16 x i8> %i.s, %i.v
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not67.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not67.i.i.i.i, label %.critedge18.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.critedge.i.i.i.i
  %.sroa.042.068.i.i.i.i = phi i16 [ %i.af, %.critedge.i.i.i.i ], [ %i.x, %bb.b ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.042.068.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.7.0.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.l
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %.val24.i.i.i.i, i64 %i.ab ; 2 uses
  %.val26.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !125, !noalias !551
  %i.ad = icmp eq ptr %.val26.i.i.i.i, %.val.i.i
  br i1 %i.ad, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SI_SJ_SN_E14const_iteratorEEE5valueEiE4typeELi0EEESK_INST_8iteratorEbERKSR_DpOT1_.exit, label %.critedge.i.i.i.i, !prof !87

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ae = add i16 %.sroa.042.068.i.i.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.042.068.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i.i.i, label %.critedge18.i.i.i.i, label %.lr.ph.i.i.i.i

.critedge18.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.b
  %i.ag = icmp eq <16 x i8> %i.v, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not60.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not60.i.i.i.i, label %bb.c, label %bb.d, !prof !81

bb.c:                                             ; preds = %.critedge18.i.i.i.i
  %i.ai = add i64 %.sroa.15.0.i.i.i.i, 16         ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.7.0.i.i.i.i
  br label %bb.b

bb.d:                                             ; preds = %.critedge18.i.i.i.i
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i.i.i.i, %i.al
  %i.an = and i64 %i.am, %i.l
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.an, i64 %.sroa.15.0.i.i.i.i), !noalias !551
  %.val28.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !551
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %.val28.i.i.i.i, i64 %i.ao ; 3 uses
  %.val.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !125, !noalias !553
  store ptr %.val.val.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !178, !noalias !553
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false), !noalias !553
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SI_SJ_SN_E14const_iteratorEEE5valueEiE4typeELi0EEESK_INST_8iteratorEbERKSR_DpOT1_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPN9grpc_core17instrument_detail15QueryableDomainEZNKS4_12MetricsQuery3RunENS4_13RefCountedPtrINS4_15CollectionScopeEEERNS4_11MetricsSinkEE10DomainInfoEENS1_6HashEqIS7_vE4HashENSH_2EqESaISt4pairIKS7_SE_EEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SI_SJ_SN_E14const_iteratorEEE5valueEiE4typeELi0EEESK_INST_8iteratorEbERKSR_DpOT1_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.5.0 = phi ptr [ %i.ap, %bb.d ], [ %i.ac, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core12MetricsQuery5ApplyENS_19InstrumentLabelListEN4absl12lts_2025051211FunctionRefIFvRNS_11MetricsSinkEEEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly byval(%"class.grpc_core::InstrumentLabelList") align 8 captures(none) %1, ptr %2, ptr nofree readonly captures(none) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::Span.167", align 8 ; 5 uses
  %6 = alloca %"class.grpc_core::InstrumentLabelList", align 1 ; 7 uses
  %7 = alloca %class.Filter, align 8              ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.fr.i.i = freeze i64 %i.b
  %.not.not.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK9grpc_core12MetricsQuery16ApplyLabelChecksENS_19InstrumentLabelListEN4absl12lts_2025051211FunctionRefIFvRNS_11MetricsSinkEEEES6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull byval(%"class.grpc_core::InstrumentLabelList") align 8 %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i8 0, ptr %6, align 1, !tbaa !50
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %scevgep.i, i8 -1, i64 63, i1 false), !tbaa !45
  %i.c = load i8, ptr %1, align 8, !tbaa !50      ; 4 uses
  %.not91 = icmp eq i8 %i.c, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.e = ptrtoint ptr %.sroa.10.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.15.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.e, %._crit_edge.loopexit ]
  %.sroa.031.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.031.1, %._crit_edge.loopexit ] ; 6 uses
  %.lcssa66 = phi i64 [ 0, %bb.c ], [ %i.ao, %._crit_edge.loopexit ]
  %i.f = ptrtoint ptr %.sroa.031.0.lcssa to i64   ; 2 uses
  %i.g = sub i64 %.sroa.10.0.lcssa, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.h, %.lcssa66
  br i1 %i.i, label %bb.m, label %bb.n

bb.d:                                             ; preds = %bb.m
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit47:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp48:                             ; preds = %bb.i
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.pre.pre114 = phi i8 [ %i.c, %.lr.ph ], [ %.pre.pre115, %bb.l ] ; 3 uses
  %.pre111 = phi i8 [ %i.c, %.lr.ph ], [ %.pre112, %bb.l ] ; 2 uses
  %i.k = phi i8 [ %i.c, %.lr.ph ], [ %i.al, %bb.l ]
  %i.l = phi i8 [ 0, %.lr.ph ], [ %i.am, %bb.l ]  ; 3 uses
  %storemerge86 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.l ] ; 4 uses
  %.sroa.031.085 = phi ptr [ null, %.lr.ph ], [ %.sroa.031.1, %bb.l ] ; 8 uses
  %.sroa.10.084 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %bb.l ] ; 7 uses
  %.sroa.15.083 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %bb.l ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge86 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.m, align 1, !tbaa !40
  %i.n = zext i8 %.sroa.0.0.copyload.i to i64     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.sroa.10.084, %.sroa.15.083
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %storemerge86, ptr %.sroa.10.084, align 8, !tbaa !48
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %.sroa.10.084 to i64
  %i.v = ptrtoint ptr %.sroa.031.085 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #37
          to label %.noexc unwind label %.loopexit.split-lp48

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #36
          to label %.noexc17 unwind label %.loopexit47 ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i64 %storemerge86, ptr %i.af, align 8, !tbaa !48
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.031.085, i64 %i.w, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc17
  %.not.i17.i.i = icmp eq ptr %.sroa.031.085, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.031.085, i64 noundef %i.w) #38
  %.pre.pre.pre = load i8, ptr %1, align 8, !tbaa !50
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %.pre.pre = phi i8 [ %.pre.pre.pre, %bb.k ], [ %.pre.pre114, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.g
  %.pre.pre116 = phi i8 [ %.pre.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.pre.pre114, %bb.g ]
  %.pre = phi i8 [ %.pre.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.pre111, %bb.g ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %i.ah, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15.083, %bb.g ]
  %.pn = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.10.084, %bb.g ]
  %.sroa.031.2 = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.031.085, %bb.g ]
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0.0.copyload.i18 = load i8, ptr %i.m, align 1, !tbaa !40
  %i.ai = add nuw i8 %i.l, 1                      ; 2 uses
  store i8 %i.ai, ptr %6, align 1, !tbaa !50
  %i.aj = zext i8 %i.l to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 %i.aj
  store i8 %.sroa.0.0.copyload.i18, ptr %i.ak, align 1, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.e
  %.pre.pre115 = phi i8 [ %.pre.pre114, %bb.e ], [ %.pre.pre116, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.pre112 = phi i8 [ %.pre111, %bb.e ], [ %.pre, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %i.al = phi i8 [ %i.k, %bb.e ], [ %.pre, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.am = phi i8 [ %i.l, %bb.e ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.083, %bb.e ], [ %.sroa.15.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.084, %bb.e ], [ %.sroa.10.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.sroa.031.1 = phi ptr [ %.sroa.031.085, %bb.e ], [ %.sroa.031.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.an = add nuw nsw i64 %storemerge86, 1        ; 2 uses
  %i.ao = zext i8 %i.al to i64                    ; 2 uses
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !554

bb.m:                                             ; preds = %._crit_edge
  invoke void @_ZNK9grpc_core12MetricsQuery16ApplyLabelChecksENS_19InstrumentLabelListEN4absl12lts_2025051211FunctionRefIFvRNS_11MetricsSinkEEEES6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull byval(%"class.grpc_core::InstrumentLabelList") align 8 %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.v unwind label %bb.d

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 1 dereferenceable(64) %6, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZNK9grpc_core12MetricsQuery5ApplyENS_19InstrumentLabelListEN4absl12lts_2025051211FunctionRefIFvRNS_11MetricsSinkEEEES6_E6Filter, i64 16), ptr %7, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.031.0.lcssa, ptr %i.ar, align 8, !tbaa !185
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i4.i = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i4.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i5.i = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i5.i, align 8
  invoke void @_ZNK9grpc_core12MetricsQuery16ApplyLabelChecksENS_19InstrumentLabelListEN4absl12lts_2025051211FunctionRefIFvRNS_11MetricsSinkEEEES6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull byval(%"class.grpc_core::InstrumentLabelList") align 8 %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !86
  %.not.i.i.i.i = icmp ult i64 %i.aw, 131072
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %bb.p, !prof !81

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !85
  %i.ay = icmp eq i64 %i.ax, 1
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !40, !nonnull !93, !noundef !93 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 112
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 3 uses
  br i1 %i.ay, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt5tupleIJSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESt17basic_string_viewIcS9_EEEmEENS0_13hash_internal4HashISG_EESt8equal_toISG_ESaISt4pairIKSG_mEEE14const_iteratorppEv.exit.i.preheader, label %bb.q

end_hunk_0
