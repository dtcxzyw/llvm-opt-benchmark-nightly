Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/instrument?download=true
inline.NumInlined: 7378
inline.NumDeleted: 4043
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS4_9PublishedEEEaSEOS7_EUlOT_T0_E_JRS6_St17integral_constantImLm1EEEES9_St14__invoke_otherOSB_DpOT1_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.e) #35, !inline_history !1083
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEEaSEOS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm1EEEEDaS9_SA_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp eq i8 %i.c, 0
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !53   ; 7 uses
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.f, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.p = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !81

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(96) %i.p) #35, !inline_history !1084
  br label %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.x = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #38
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

bb.j:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, !prof !81

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(96) %i.m) #35, !inline_history !1085
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZSt8_DestroyIPN9grpc_core13RefCountedPtrINS0_15CollectionScopeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.aj = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !79
  store i8 1, ptr %i.b, align 8, !tbaa !294
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEEaSEOS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm1EEEEDaS9_SA_.exit

_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEEaSEOS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm1EEEEDaS9_SA_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN9grpc_core28GlobalCollectionScopeManager8BuildingENS3_9PublishedEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #22

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal15map_slot_policyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEENS4_13RefCountedPtrINS5_13DomainStorageEEEE7destroyISaIS3_IKSH_SK_EEEEDaPT_PNS1_13map_slot_typeISH_SK_EE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 -4294967295 acq_rel, align 8
  %.mask.i.i.i = and i64 %i.d, -4294967296
  %i.e = icmp eq i64 %.mask.i.i.i, 4294967296
  br i1 %i.e, label %bb.c, label %.noexc.i.i, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc.i.i unwind label %bb.e, !inline_history !5

.noexc.i.i:                                       ; preds = %bb.c, %bb.b
  %i.i = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i, !prof !81

bb.d:                                             ; preds = %.noexc.i.i
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #35, !inline_history !1086
  br label %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #40
  unreachable

_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i: ; preds = %bb.d, %.noexc.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.q, %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.q, %_ZN9grpc_core13RefCountedPtrINS_17instrument_detail13DomainStorageEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt4pairIS_IPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEENS0_13RefCountedPtrINS1_13DomainStorageEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !115
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #38
  br label %_ZNSt4pairIS_IPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEENS0_13RefCountedPtrINS1_13DomainStorageEEEED2Ev.exit

_ZNSt4pairIS_IPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEENS0_13RefCountedPtrINS1_13DomainStorageEEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EEENS7_13RefCountedPtrINS8_13DomainStorageEEEEENS0_13hash_internal4HashISK_EESt8equal_toISK_ESaIS6_IKSK_SN_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJS10_S11_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.686", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEENS4_13RefCountedPtrINS5_13DomainStorageEEEE7destroyISaIS3_IKSH_SK_EEEEDaPT_PNS1_13map_slot_typeISH_SK_EE(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::RefCountedPtr", align 8 ; 6 uses
  %4 = alloca %"class.grpc_core::RefCountedPtr", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph60

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.cc, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph60, !llvm.loop !1087

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa54 = phi i64 [ %i.d, %.lr.ph ], [ %i.cf, %bb.b ] ; 2 uses
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = add nsw i64 %.lcssa54, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.t, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  store ptr null, ptr %i.k, align 8, !tbaa !79
  store ptr %i.l, ptr %3, align 8, !tbaa !79
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef %.08.i.i, i64 noundef %.lcssa54, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %3, align 8, !tbaa !79     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i, !prof !81

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.m) #35, !inline_history !1088
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.t = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, label %bb.c, !llvm.loop !1089

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !79     ; 3 uses
  %.not.i11.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i11.i.i, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 1 acq_rel, align 8
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %common.resume.sink.split, label %common.resume, !prof !81

common.resume.sink.split:                         ; preds = %bb.h, %bb.o
  %.sink50 = phi ptr [ %i.ax, %bb.o ], [ %i.v, %bb.h ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.u, %bb.h ]
  %i.z = load ptr, ptr %.sink50, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %.sink50) #35
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.o, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.aw, %bb.o ], [ %i.u, %bb.h ], [ %i.aw, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ac, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge21.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit ]
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  store ptr null, ptr %i.ac, align 8, !tbaa !79
  %i.ae = load ptr, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %0, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 4 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !80
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 acq_rel, align 8
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i, !prof !81

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(96) %i.af) #35, !inline_history !1090
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = sub i64 %i.am, %i.a                     ; 2 uses
  %i.ao = ashr exact i64 %i.an, 3
  store ptr %i.ad, ptr %4, align 8, !tbaa !79
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ao, ptr noundef nonnull align 8 %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i
  %i.ap = load ptr, ptr %4, align 8, !tbaa !79    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 acq_rel, align 8
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, !prof !81

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(96) %i.ap) #35, !inline_history !1091
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i

bb.n:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !79    ; 3 uses
  %.not.i3.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i3.i.i.i, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %common.resume.sink.split, label %common.resume, !prof !81

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bb = icmp sgt i64 %i.an, 8
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !1092

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2159 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02258 = phi i64 [ %i.cc, %bb.b ], [ %2, %.lr.ph ]
  %i.bc = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bd = lshr i64 %i.bc, 1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %storemerge2159, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.f, ptr %i.be, ptr nonnull %i.bf)
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i: ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, %.lr.ph60
  %.sroa.010.0.i.i = phi ptr [ %i.f, %.lr.ph60 ], [ %i.bj, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2159, %.lr.ph60 ], [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i ], [ %i.bj, %bb.p ] ; 10 uses
  %i.bh = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !79 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.bi, label %bb.p, label %.preheader.i.i, !llvm.loop !1093

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 8 uses
  %i.bk = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !79
  %i.bl = icmp ult ptr %i.bg, %i.bk
  br i1 %i.bl, label %.preheader.i.i, label %bb.q, !llvm.loop !1094

bb.q:                                             ; preds = %.preheader.i.i
  %i.bm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bm, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %.sroa.010.1.i.i, align 8, !tbaa !79
  %i.bn = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !80
  store ptr null, ptr %.sroa.0.1.i.i, align 8, !tbaa !80
  %i.bo = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !80 ; 4 uses
  store ptr %i.bn, ptr %.sroa.010.1.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.t, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i, !prof !81

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(96) %i.bo) #35, !inline_history !1095
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.bv = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !80 ; 4 uses
  store ptr %i.bh, ptr %.sroa.0.1.i.i, align 8, !tbaa !80
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i4.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, label %bb.u

bb.u:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 acq_rel, align 8
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.v, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge, !prof !81

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(96) %i.bv) #35, !inline_history !1095
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i.backedge: ; preds = %bb.v, %bb.u, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i.i.i
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i, !llvm.loop !1096

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.q
  %i.cc = add nsw i64 %.02258, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2159, i64 noundef %i.cc)
  %i.cd = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a
  %i.cf = ashr exact i64 %i.ce, 3                 ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !1087

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit
  %.043 = phi i64 [ %spec.select, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.043, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.k = icmp ult ptr %i.i, %i.j
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %.043 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !80
  store ptr null, ptr %i.l, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !80   ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.c, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(96) %i.o) #35, !inline_history !21
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %i.v = icmp slt i64 %spec.select, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !1097

._crit_edge:                                      ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26

bb.d:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26

bb.e:                                             ; preds = %bb.d
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !80
  store ptr null, ptr %i.ad, align 8, !tbaa !80
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 4 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %.not.i.i25 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i25, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.g, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26, !prof !81

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #35, !inline_history !21
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ] ; 3 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !79
  %i.ao = icmp sgt i64 %.1, %1
  br i1 %i.ao, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i
  %.020.i = phi i64 [ %.0921.i, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i ], [ %.1, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26 ] ; 3 uses
  %.0921.in.i = add nsw i64 %.020.i, -1
  %.0921.i = sdiv i64 %.0921.in.i, 2              ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0921.i ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.an
  br i1 %i.ar, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.020.i ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80 ; 4 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw sub ptr %i.au, i64 1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.j, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i, !prof !81

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(96) %i.at) #35, !inline_history !1098
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ba = icmp sgt i64 %.0921.i, %1
  br i1 %i.ba, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1099

.critedge.i:                                      ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i, %.lr.ph.i, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26
  %.0.lcssa.i = phi i64 [ %.1, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit26 ], [ %.020.i, %.lr.ph.i ], [ %.0921.i, %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 4 uses
  store ptr %i.an, ptr %i.bb, align 8, !tbaa !80
  %.not.i.i10.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i10.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 acq_rel, align 8
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.l, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit, !prof !81

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(96) %i.bc) #35, !inline_history !1098
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEED2Ev.exit: ; preds = %.critedge.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !79     ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !79     ; 3 uses
  %i.c = icmp ult ptr %i.a, %i.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !79     ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !79
  store ptr null, ptr %0, align 8, !tbaa !79
  %i.g = load ptr, ptr %2, align 8, !tbaa !80
  store ptr null, ptr %2, align 8, !tbaa !80
  %i.h = load ptr, ptr %0, align 8, !tbaa !80     ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !80
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 acq_rel, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #35, !inline_history !1100
  br label %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i

_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load ptr, ptr %2, align 8, !tbaa !80     ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !80
  %.not.i.i4.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i4.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_15CollectionScopeEEaSEOS2_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.sink.split, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN9grpc_core13RefCountedPtrINS2_15CollectionScopeEEESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit, !prof !81

bb.g:                                             ; preds = %bb.b
end_hunk_0
