inline.NumInlined: 3092
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6hermes15ProfileAnalyzer20dumpInstructionStatsEv:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i8.i.i = phi i32 [ %i.db, %bb.ad ], [ %i.dl, %bb.ae ]
  %i.dm = icmp eq i32 %.0.i.i.i.i.i8.i.i, 1
  br i1 %i.dm, label %bb.af, label %"_ZZN6hermes15ProfileAnalyzer20dumpInstructionStatsEvENK3$_0clESt10shared_ptrINS_3hbc14BCProviderBaseEERSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEERS6_IPKhtS7_ISI_ES9_ISI_ESaISB_IKSI_tEEEj.exit.i", !prof !69

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #21, !inline_history !291
  br label %"_ZZN6hermes15ProfileAnalyzer20dumpInstructionStatsEvENK3$_0clESt10shared_ptrINS_3hbc14BCProviderBaseEERSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEERS6_IPKhtS7_ISI_ES9_ISI_ESaISB_IKSI_tEEEj.exit.i"

"_ZZN6hermes15ProfileAnalyzer20dumpInstructionStatsEvENK3$_0clESt10shared_ptrINS_3hbc14BCProviderBaseEERSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEERS6_IPKhtS7_ISI_ES9_ISI_ESaISB_IKSI_tEEEj.exit.i": ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7.i.i, %bb.ab, %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %"_ZZN6hermes15ProfileAnalyzer20dumpInstructionStatsEvENK3$_0clESt10shared_ptrINS_3hbc14BCProviderBaseEERSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEERS6_IPKhtS7_ISI_ES9_ISI_ESaISB_IKSI_tEEEj.exit.i"
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dn, align 8, !tbaa !65
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !67
  %i.ds = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21, !inline_history !292
  %i.dv = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21, !inline_history !292
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i = phi i32 [ %i.dq, %bb.aj ], [ %i.ea, %bb.ak ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eb, label %bb.al, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !69

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZN6hermes9HBCParser22functionIdFromChecksumEN4llvh9StringRefE.exit.thread.i: ; preds = %.critedge.i.i, %.critedge.us.i.i, %bb.f
  br i1 %i.x, label %bb.am, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.am:                                            ; preds = %_ZN6hermes9HBCParser22functionIdFromChecksumEN4llvh9StringRefE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %i.u, ptr %1, align 8, !tbaa !99
  %i.ec = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.am, %_ZN6hermes9HBCParser22functionIdFromChecksumEN4llvh9StringRefE.exit.thread.i, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ah, %"_ZZN6hermes15ProfileAnalyzer20dumpInstructionStatsEvENK3$_0clESt10shared_ptrINS_3hbc14BCProviderBaseEERSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEERS6_IPKhtS7_ISI_ES9_ISI_ESaISB_IKSI_tEEEj.exit.i"
  %.sroa.018.0.i = load ptr, ptr %.sroa.018.033.i, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exitthread-pre-split", label %bb.f

"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exitthread-pre-split": ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.pr = load i64, ptr %i.v, align 8, !tbaa !48
  br label %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exit"

"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exit": ; preds = %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exitthread-pre-split", %bb.e
  %i.ed = phi i64 [ %.pr, %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exitthread-pre-split" ], [ %i.w, %bb.e ]
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit, label %bb.an

bb.an:                                            ; preds = %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exit"
  %i.ef = load ptr, ptr %0, align 8, !tbaa !127, !nonnull !85, !align !128 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !129
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !132 ; 2 uses
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp ult i64 %i.em, 75
  br i1 %i.en, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ef, ptr noundef nonnull @.str.27, i64 noundef 75) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.ej, ptr noundef nonnull align 1 dereferenceable(75) @.str.27, i64 75, i1 false)
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !132
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 75
  store ptr %i.eq, ptr %i.ei, align 8, !tbaa !132
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.ap, %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.07.010.i = load ptr, ptr %i.er, align 8, !tbaa !49 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.07.010.i, null
  br i1 %.not11.i, label %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %_ZN4llvh11raw_ostreamlsEPKc.exit6.i
  %.sroa.07.012.i = phi ptr [ %.sroa.07.0.i, %_ZN4llvh11raw_ostreamlsEPKc.exit6.i ], [ %.sroa.07.010.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i, i64 8
  %i.et = load ptr, ptr %0, align 8, !tbaa !127, !nonnull !85, !align !128
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !50
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !54
  %i.ex = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.et, ptr noundef %i.eu, i64 noundef %i.ew) #21 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !129
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !132 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i10
  %i.fd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ex, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6.i

bb.ar:                                            ; preds = %.lr.ph.i10
  store i8 10, ptr %i.fb, align 1
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !132
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !132
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6.i

_ZN4llvh11raw_ostreamlsEPKc.exit6.i:              ; preds = %bb.ar, %bb.aq
  %.sroa.07.0.i = load ptr, ptr %.sroa.07.012.i, align 8, !tbaa !49 ; 2 uses
  %.not.i11 = icmp eq ptr %.sroa.07.0.i, null
  br i1 %.not.i11, label %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit, label %.lr.ph.i10

_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6.i, %"_ZN6hermes15ProfileAnalyzer21forEachTracedFunctionIZNS0_20dumpInstructionStatsEvE3$_0EEvT_.exit", %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  %i.fg = load ptr, ptr %i.r, align 8, !tbaa !293 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not4.i.i.i, label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i ], [ 0, %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i ], [ %i.fg, %_ZN6hermes15ProfileAnalyzer24reportUnmatchedChecksumsEv.exit ]
  %i.fh = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.fi = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKN6hermes4inst6OpCodeEmELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !294

_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKN6hermes4inst6OpCodeEmELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fj = icmp samesign ugt i64 %.06.i.i.i, 576460752303423486
  br i1 %i.fj, label %bb.as, label %_ZNSt12_Vector_baseISt4pairIN6hermes4inst6OpCodeEmESaIS4_EE11_M_allocateEm.exit.i.i

bb.as:                                            ; preds = %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKN6hermes4inst6OpCodeEmELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #26
  unreachable

_ZNSt12_Vector_baseISt4pairIN6hermes4inst6OpCodeEmESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail14_Node_iteratorISt4pairIKN6hermes4inst6OpCodeEmELb0ELb1EEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit.i.i
  %i.fk = shl nuw nsw i64 %i.fi, 4
  %i.fl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #24 ; 14 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN6hermes4inst6OpCodeEmESaIS4_EE11_M_allocateEm.exit.i.i
  %.09.i.i.i.i.i.i.idx = phi i64 [ %.09.i.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZNSt12_Vector_baseISt4pairIN6hermes4inst6OpCodeEmESaIS4_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i ], [ %i.fg, %_ZNSt12_Vector_baseISt4pairIN6hermes4inst6OpCodeEmESaIS4_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.09.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.09.i.i.i.i.i.i.idx ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !295
  store i8 %i.fn, ptr %.09.i.i.i.i.i.i.ptr, align 8, !tbaa !298
  %i.fo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.ptr, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !300
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !301
  %i.fr = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.09.i.i.i.i.i.i.add = add nuw nsw i64 %.09.i.i.i.i.i.i.idx, 16 ; 4 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i12, label %_ZNSt6vectorISt4pairIN6hermes4inst6OpCodeEmESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKS3_mELb0ELb1EEEvEET_SD_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !302

_ZNSt6vectorISt4pairIN6hermes4inst6OpCodeEmESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKS3_mELb0ELb1EEEvEET_SD_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.09.i.i.i.i.i.i.add ; 3 uses
  %i.fs = ptrtoint ptr %i.fl to i64
  %i.ft = lshr exact i64 %.09.i.i.i.i.i.i.add, 4
  %i.fu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ft, i1 true)
  %i.fv = shl nuw nsw i64 %i.fu, 1
  %i.fw = xor i64 %i.fv, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_T1_"(ptr nonnull %i.fl, ptr nonnull %.ptr.le, i64 noundef %i.fw)
  %i.fx = icmp samesign ugt i64 %.09.i.i.i.i.i.i.idx, 255
  br i1 %i.fx, label %.lr.ph.i.i.i.i, label %.preheader.i22.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIN6hermes4inst6OpCodeEmESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKS3_mELb0ELb1EEEvEET_SD_RKS5_.exit
  %i.fy = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.av ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.09.021.i.idx.i.i.i = phi i64 [ %.sroa.09.021.i.add.i.i.i, %bb.av ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn20.i.i.i.i = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %bb.av ], [ %i.fl, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.09.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sroa.09.021.i.idx.i.i.i ; 6 uses
  %i.fz = getelementptr i8, ptr %.pn20.i.i.i.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.fz, align 8, !tbaa !301 ; 5 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.fy, align 8, !tbaa !301
  %i.ga = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.sroa.09.021.i.ptr.i.i.i, align 8 ; 2 uses
  br i1 %i.ga, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.au

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.at
  %i.gb = add i64 %indvar, 1
  %i.gc = lshr exact i64 %.sroa.09.021.i.idx.i.i.i, 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 32 ; 2 uses
  %xtraiter92 = and i64 %i.gb, 3                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.gc, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.gd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.ge = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.gf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !303
  store i8 %i.gg, ptr %i.gf, align 8, !tbaa !298
  %i.gh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !109
  %i.gj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !301
  %i.gk = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !304

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.gl = icmp ult i64 %indvar, 3
  br i1 %i.gl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.gm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.gn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !303
  store i8 %i.go, ptr %i.gn, align 8, !tbaa !298
  %i.gp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !109
  %i.gr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !301
  %i.gs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.gt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.gu = load i8, ptr %i.gs, align 8, !tbaa !303
  store i8 %i.gu, ptr %i.gt, align 8, !tbaa !298
  %i.gv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !109
  %i.gx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !301
  %i.gy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -48
  %i.gz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -48
  %i.ha = load i8, ptr %i.gy, align 8, !tbaa !303
  store i8 %i.ha, ptr %i.gz, align 8, !tbaa !298
  %i.hb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !109
  %i.hd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !301
  %i.he = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.hg = load i8, ptr %i.he, align 8, !tbaa !303
  store i8 %i.hg, ptr %i.hf, align 8, !tbaa !298
  %i.hh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !109
  %i.hj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !301
  %i.hk = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.hl = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i, !llvm.loop !306

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fl, align 8, !tbaa !298
  store i64 %.val.i.i.i.i.i, ptr %i.fy, align 8, !tbaa !301
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hm = getelementptr i8, ptr %.pn20.i.i.i.i, i64 8
  %.val2.i9.i.i.i.i.i = load i64, ptr %i.hm, align 8, !tbaa !301 ; 2 uses
  %i.hn = icmp ugt i64 %.val.i.i.i.i.i, %.val2.i9.i.i.i.i.i
  br i1 %i.hn, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.au, %.lr.ph.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = phi i64 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i9.i.i.i.i.i, %bb.au ]
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.09.021.i.ptr.i.i.i, %bb.au ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -16 ; 3 uses
  %i.ho = load i8, ptr %.sroa.0.0.i.i.i.i.i, align 1, !tbaa !303
  store i8 %i.ho, ptr %.sroa.06.010.i.i.i.i.i, align 8, !tbaa !298
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.i.i.i, i64 8
  store i64 %.val2.i11.i.i.i.i.i, ptr %i.hp, align 8, !tbaa !301
  %i.hq = getelementptr i8, ptr %.sroa.06.010.i.i.i.i.i, i64 -24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.hq, align 8, !tbaa !301 ; 2 uses
  %i.hr = icmp ugt i64 %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i.i.i.i", !llvm.loop !307

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.au
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.09.021.i.ptr.i.i.i, %bb.au ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !298
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.val.i.i.i.i.i, ptr %i.hs, align 8, !tbaa !301
  br label %bb.av

bb.av:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i
  %.sroa.09.021.i.add.i.i.i = add nuw nsw i64 %.sroa.09.021.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i14 = icmp eq i64 %.sroa.09.021.i.add.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i14, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_.exit.i.i.i", label %bb.at, !llvm.loop !308

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_.exit.i.i.i": ; preds = %bb.av
  %.not6.i.i.i.i = icmp eq i64 %.09.i.i.i.i.i.i.add, 256
  br i1 %.not6.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_.exit.i.i.i"
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fl, i64 256
  br label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ib, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i" ], [ %i.ht, %.lr.ph.i12.i.i.i.preheader ] ; 6 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.0.07.i.i.i.i, align 8
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.sroa.44.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8 ; 3 uses
  %i.hu = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -8
  %.val2.i9.i.i13.i.i.i = load i64, ptr %i.hu, align 8, !tbaa !301 ; 2 uses
  %i.hv = icmp ugt i64 %.sroa.44.0.copyload.i.i.i.i.i, %.val2.i9.i.i13.i.i.i
  br i1 %i.hv, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i"

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i17.i.i.i
  %.val2.i11.i.i18.i.i.i = phi i64 [ %.val2.i.i.i21.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.val2.i9.i.i13.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.06.010.i.i19.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -16 ; 3 uses
  %i.hw = load i8, ptr %.sroa.0.0.i.i20.i.i.i, align 1, !tbaa !303
  store i8 %i.hw, ptr %.sroa.06.010.i.i19.i.i.i, align 8, !tbaa !298
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 8
  store i64 %.val2.i11.i.i18.i.i.i, ptr %i.hx, align 8, !tbaa !301
  %i.hy = getelementptr i8, ptr %.sroa.06.010.i.i19.i.i.i, i64 -24
  %.val2.i.i.i21.i.i.i = load i64, ptr %i.hy, align 8, !tbaa !301 ; 2 uses
  %i.hz = icmp ugt i64 %.sroa.44.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.hz, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i", !llvm.loop !307

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.06.0.lcssa.i.i15.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ] ; 2 uses
  store i8 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i15.i.i.i, align 8, !tbaa !298
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15.i.i.i, i64 8
  store i64 %.sroa.44.0.copyload.i.i.i.i.i, ptr %i.ia, align 8, !tbaa !301
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.ib, %.ptr.le
  br i1 %.not.i16.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i12.i.i.i, !llvm.loop !309

.preheader.i22.i.i.i:                             ; preds = %_ZNSt6vectorISt4pairIN6hermes4inst6OpCodeEmESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKS3_mELb0ELb1EEEvEET_SD_RKS5_.exit
  %.not19.i24.i.i.i = icmp samesign eq i64 %.09.i.i.i.i.i.i.idx, 0
  br i1 %.not19.i24.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i25.i.i.i

.lr.ph.preheader:                                 ; preds = %bb.az, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_.exit.i14.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_.exit.i.i.i", %.preheader.i22.i.i.i
  br label %.lr.ph

.lr.ph.i25.i.i.i:                                 ; preds = %.preheader.i22.i.i.i
  %i.ic = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %.lr.ph.i25.i.i.i
  %.pn20.i27.i.i.i = phi ptr [ %i.fl, %.lr.ph.i25.i.i.i ], [ %.sroa.09.021.i26.i.i.i, %bb.az ] ; 4 uses
  %.sroa.09.021.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i, i64 16 ; 8 uses
  %i.id = getelementptr i8, ptr %.pn20.i27.i.i.i, i64 24
  %.val.i.i28.i.i.i = load i64, ptr %i.id, align 8, !tbaa !301 ; 5 uses
  %.val1.i.i29.i.i.i = load i64, ptr %i.ic, align 8, !tbaa !301
  %i.ie = icmp ugt i64 %.val.i.i28.i.i.i, %.val1.i.i29.i.i.i
  %.sroa.0.0.copyload.i30.i.i.i = load i8, ptr %.sroa.09.021.i26.i.i.i, align 8 ; 2 uses
  br i1 %i.ie, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.if = ptrtoint ptr %.sroa.09.021.i26.i.i.i to i64
  %i.ig = sub i64 %i.if, %i.fs
  %i.ih = ashr exact i64 %i.ig, 4                 ; 5 uses
  %i.ii = icmp sgt i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i41.i.i.i

.lr.ph.i.i.i.i.i.preheader.i42.i.i.i:             ; preds = %bb.ax
  %i.ij = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.ih, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
