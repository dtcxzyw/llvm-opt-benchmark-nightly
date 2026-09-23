Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage?download=true
inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb16IndexStorageInfoaSEOS0_:bb.a
  store i64 %i.u, ptr %i.v, align 8, !tbaa !356
  %i.w = load i64, ptr %i.e, align 8, !tbaa !355
  store i64 %i.w, ptr %i.b, align 8, !tbaa !355
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %1, align 8, !tbaa !255
  store i64 %i.s, ptr %i.e, align 8, !tbaa !355
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8, !tbaa !255
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !356
  store i8 0, ptr %i.x, align 1, !tbaa !355
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !790
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !790
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #45
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !791
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !792
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !792
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !792
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !791
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !791
  store <2 x ptr> %i.an, ptr %2, align 16, !tbaa !792
  store ptr %i.aj, ptr %i.am, align 16, !tbaa !791
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !793 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !794 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.av = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !795
  store <2 x ptr> %i.av, ptr %i.ap, align 8, !tbaa !795
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !796
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !796
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit, %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ar, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit ] ; 2 uses
  %i.ay = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !799 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #44
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS0_INS_15IndexBufferInfoELb1ESaIS1_EEELb1ESaIS3_EEaSEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #44
  br label %_ZN6duckdb6vectorINS0_INS_15IndexBufferInfoELb1ESaIS1_EEELb1ESaIS3_EEaSEOS5_.exit

_ZN6duckdb6vectorINS0_INS_15IndexBufferInfoELb1ESaIS1_EEELb1ESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !800
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !793  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !794  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !799 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #44
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !793
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #44
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit

_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !801  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.l, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.k, %_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit ] ; 5 uses
  %i.l = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !529 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #23
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !255  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.o) #44
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #44
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt6vectorIN6duckdb6vectorINS0_15IndexBufferInfoELb1ESaIS2_EEESaIS4_EED2Ev.exit
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !739
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !740
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !739  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.v) #44
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !255    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.y) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12UnboundIndexEJNS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1116") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(408) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr.1085", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::IndexStorageInfo", align 8 ; 19 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #46 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !728
  store i64 %i.b, ptr %5, align 8, !tbaa !728
  store ptr null, ptr %1, align 8, !tbaa !728
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !354
  %i.d = load ptr, ptr %2, align 8, !tbaa !255    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !356  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !255
  %i.k = load i64, ptr %i.e, align 8, !tbaa !355
  store i64 %i.k, ptr %i.c, align 8, !tbaa !355
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !356
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !356
  store ptr %i.e, ptr %2, align 8, !tbaa !255
  store i64 0, ptr %i.m, align 8, !tbaa !356
  store i8 0, ptr %i.e, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !790
  store i64 %i.q, ptr %i.o, align 8, !tbaa !790
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !739  ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !739
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !740  ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !740
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !801  ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !529
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !802
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !802
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !804
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !805
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ah = icmp eq ptr %i.t, %i.ag
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.af, ptr %i.r, align 8, !tbaa !739
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !805
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !805
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = phi ptr [ %i.af, %bb.c ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !807
  %i.am = urem i64 %i.al, %i.w
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am
  store ptr %i.x, ptr %i.an, align 8, !tbaa !528
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit:         ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.ao, align 8, !tbaa !808
  store i64 1, ptr %i.v, align 8, !tbaa !740
  store ptr null, ptr %i.ag, align 8, !tbaa !805
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !739
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !792
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !792
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  %7 = load ptr, ptr %i.at, align 8, !tbaa !791
  store ptr %7, ptr %i.as, align 8, !tbaa !791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 120
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.au = load <2 x ptr>, ptr %9, align 8, !tbaa !795
  store <2 x ptr> %i.au, ptr %8, align 8, !tbaa !795
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 136
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 136
  %12 = load ptr, ptr %11, align 8, !tbaa !796
  store ptr %12, ptr %10, align 8, !tbaa !796
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !800
  invoke void @_ZN6duckdb12UnboundIndexC1ENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(336) %i.a, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(408) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !767
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  %i.ax = load ptr, ptr %5, align 8, !tbaa !728   ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !227
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(320) %i.ax) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  ret void

bb.g:                                             ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  %i.bc = load ptr, ptr %5, align 8, !tbaa !728   ; 3 uses
  %.not.i6 = icmp eq ptr %i.bc, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7: ; preds = %bb.g
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !227
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(320) %i.bc) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7
  call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb14TableIOManager3GetERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(124) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14TableIOManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableIndexList8AddIndexENS_10unique_ptrINS_5IndexESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1125", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.2656", align 8 ; 7 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #46
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !771, !noalias !2514
  store i64 %i.c, ptr %2, align 8, !tbaa !771, !noalias !2514
  store ptr null, ptr %1, align 8, !tbaa !771, !noalias !2514
  invoke void @_ZN6duckdb10IndexEntryC1ENS_10unique_ptrINS_5IndexESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.d, !noalias !2514

bb.c:                                             ; preds = %.noexc
  store ptr %i.b, ptr %3, align 8, !tbaa !810, !alias.scope !2514
  %i.d = load ptr, ptr %2, align 8, !tbaa !771, !noalias !2514 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.d, null
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not.i.i4, label %bb.e, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !227, !noalias !2514
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !2514
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.d) #23, !noalias !2514, !inline_history !2505
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !771, !noalias !2514 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.j, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i: ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227, !noalias !2514
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !2514
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.j) #23, !noalias !2514, !inline_history !2505
  br label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i

_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i, %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.b) #44, !noalias !2514
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !812  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !813
  %.not.i.i5 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.e, ptr %i.p, align 8, !tbaa !810
  store ptr null, ptr %3, align 8, !tbaa !810
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !812
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !814  ; 10 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc6 unwind label %bb.p

.noexc6:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #46
          to label %.noexc7 unwind label %bb.p    ; 10 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i64 %i.e, ptr %i.af, align 8, !tbaa !810
  store ptr null, ptr %3, align 8, !tbaa !810
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc7
  %i.ag = add i64 %i.u, -8
  %i.ah = sub i64 %i.ag, %i.v                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.u, -8
  %i.al = sub i64 %i.ak, %i.v
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.an
  %scevgep19 = getelementptr i8, ptr %i.t, i64 %i.an
  %bound0 = icmp ult ptr %i.ae, %scevgep19
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.t, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.as = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !810, !alias.scope !2517, !noalias !2515
end_hunk_0
begin_hunk_1_@_ZN6duckdb16TemporaryFileMap7GetFileERKNS_23TemporaryFileIdentifierE:bb.a

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.f, %i.z
  br i1 %i.w, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !113

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !529 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !248  ; 2 uses
  %i.aa = urem i64 %i.z, %i.n
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.o
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !113

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.thread, !llvm.loop !113

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1773
  br label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.thread

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit
  %i.ad = phi ptr [ %i.ac, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %i.ad
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZN6duckdb16TemporaryFileMap10CreateFileERKNS_23TemporaryFileIdentifierE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.duckdb::unique_ptr.2633", align 8 ; 7 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !1772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !1769
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseIN6duckdb19TemporaryBufferSizeESt4pairIKS2_St13unordered_mapImNS1_10unique_ptrINS1_19TemporaryFileHandleESt14default_deleteIS7_ELb1EEESt4hashImESt8equal_toImESaIS3_IKmSA_EEEESaISJ_ENS_10_Select1stESD_IS2_ENS1_13EnumClassHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  store i64 %i.g, ptr %i.b, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = load ptr, ptr %0, align 8, !tbaa !3466, !nonnull !245, !align !246
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1779
  call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %i.k = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #46, !noalias !3467 ; 3 uses
  invoke void @_ZN6duckdb19TemporaryFileHandleC1ERNS_20TemporaryFileManagerENS_23TemporaryFileIdentifierEm(ptr noundef nonnull align 8 dereferenceable(232) %i.k, ptr noundef nonnull align 8 dereferenceable(6928) %i.h, ptr noundef nonnull byval(%"struct.duckdb::TemporaryFileIdentifier") align 8 %1, i64 noundef %i.j)
          to label %_ZN6duckdb9make_uniqINS_19TemporaryFileHandleEJRNS_20TemporaryFileManagerERKNS_23TemporaryFileIdentifierEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !3467

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.k) #44, !noalias !3467
  br label %common.resume

_ZN6duckdb9make_uniqINS_19TemporaryFileHandleEJRNS_20TemporaryFileManagerERKNS_23TemporaryFileIdentifierEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.k, ptr %2, align 8, !tbaa !1773, !alias.scope !3467
  %i.m = invoke { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_19TemporaryFileHandleESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJmS7_EEES0_INSA_14_Node_iteratorIS8_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE7emplaceIJmS5_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.c

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE7emplaceIJmS5_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZN6duckdb9make_uniqINS_19TemporaryFileHandleEJRNS_20TemporaryFileManagerERKNS_23TemporaryFileIdentifierEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !1773   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i: ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE7emplaceIJmS5_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb0EEEbEDpOT_.exit
  call void @_ZN6duckdb19TemporaryFileHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.n) #23
  call void @_ZdlPv(ptr noundef nonnull %i.n) #44
  br label %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_19TemporaryFileHandleESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE7emplaceIJmS5_EEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb0EEEbEDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i
  %.fca.0.extract = extractvalue { ptr, i8 } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  %i.p = call noundef nonnull align 8 dereferenceable(232) ptr @_ZNK6duckdb10unique_ptrINS_19TemporaryFileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  ret ptr %i.p

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_19TemporaryFileHandleEJRNS_20TemporaryFileManagerERKNS_23TemporaryFileIdentifierEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !1773   ; 3 uses
  %.not.i7 = icmp eq ptr %i.r, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i8: ; preds = %bb.c
  call void @_ZN6duckdb19TemporaryFileHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.r) #23
  call void @_ZdlPv(ptr noundef nonnull %i.r) #44
  br label %_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN6duckdb19TemporaryFileHandleESt14default_deleteIS1_EED2Ev.exit9: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb19TemporaryFileHandleEEclEPS1_.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(232) ptr @_ZNK6duckdb10unique_ptrINS_19TemporaryFileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1773   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_19TemporaryFileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.237, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !255    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_19TemporaryFileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16TemporaryFileMap9EraseFileERKNS_23TemporaryFileIdentifierE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !1772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !1769
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseIN6duckdb19TemporaryBufferSizeESt4pairIKS2_St13unordered_mapImNS1_10unique_ptrINS1_19TemporaryFileHandleESt14default_deleteIS7_ELb1EEESt4hashImESt8equal_toImESaIS3_IKmSA_EEEESaISJ_ENS_10_Select1stESD_IS2_ENS1_13EnumClassHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  store i64 %i.g, ptr %i.b, align 8, !tbaa !248
  %i.h = call noundef i64 @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_19TemporaryFileHandleESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34TemporaryFileCompressionAdaptivityC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb12RandomEngineC1El(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef -1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <6 x i64> splat (i64 50000), ptr %i.a, align 8, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 50000, ptr %i.b, align 8, !tbaa !248
  ret void
}

declare void @_ZN6duckdb12RandomEngineC1El(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN6duckdb34TemporaryFileCompressionAdaptivity19GetCurrentTimeNanosEv() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483642) i32 @_ZN6duckdb34TemporaryFileCompressionAdaptivity12IndexToLevelEm(i64 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %0)
  %i.b = shl nsw i32 %i.a, 1
  %i.c = add nsw i32 %i.b, -5
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb34TemporaryFileCompressionAdaptivity12LevelToIndexENS_25TemporaryCompressionLevelE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %0, 5
  %i.b = sdiv i32 %i.a, 2
  %i.c = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483648, 2147483643) i32 @_ZN6duckdb34TemporaryFileCompressionAdaptivity23MinimumCompressionLevelEv() local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483648, 2147483643) i32 @_ZN6duckdb34TemporaryFileCompressionAdaptivity23MaximumCompressionLevelEv() local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483642) i32 @_ZN6duckdb34TemporaryFileCompressionAdaptivity19GetCompressionLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !248  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %i.f = icmp slt i64 %i.e, %i.c
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %i.c) ; 2 uses
  %spec.select32 = zext i1 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !248  ; 2 uses
  %i.i = icmp slt i64 %i.h, %spec.select
  %spec.select.1 = tail call i64 @llvm.smin.i64(i64 %i.h, i64 %spec.select) ; 2 uses
  %spec.select32.1 = select i1 %i.i, i64 2, i64 %spec.select32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !248  ; 2 uses
  %i.l = icmp slt i64 %i.k, %spec.select.1
  %spec.select.2 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %spec.select.1) ; 2 uses
  %spec.select32.2 = select i1 %i.l, i64 3, i64 %spec.select32.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !248  ; 2 uses
  %i.o = icmp slt i64 %i.n, %spec.select.2
  %spec.select.3 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %spec.select.2) ; 2 uses
  %spec.select32.3 = select i1 %i.o, i64 4, i64 %spec.select32.2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !248  ; 2 uses
  %i.r = icmp slt i64 %i.q, %spec.select.3
  %spec.select32.4 = select i1 %i.r, i64 5, i64 %spec.select32.3 ; 4 uses
  %i.s = invoke noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %spec.select32.4)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %spec.select.4 = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %spec.select.3)
  %i.t = shl nsw i32 %i.s, 1
  %i.u = add nsw i32 %i.t, -5                     ; 2 uses
  %i.v = sitofp i64 %spec.select.4 to double
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3469
  %i.y = sitofp i64 %i.x to double
  %i.z = fdiv double %i.v, %i.y                   ; 2 uses
  %i.aa = fcmp uge double %i.z, 2.000000e+00      ; 3 uses
  %i.ab = invoke noundef double @_ZN6duckdb12RandomEngine10NextRandomEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef double @_ZN6duckdb12RandomEngine10NextRandomEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = fcmp olt double %i.ab, 5.000000e-01
  %i.ae = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  br i1 %i.ad, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = select i1 %i.aa, i32 0, i32 %i.u
  br label %bb.o

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.d, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  resume { ptr, i32 } %i.ag

bb.h:                                             ; preds = %bb.e
  %i.ai = fcmp olt double %i.ac, 5.000000e-01
  %brmerge = or i1 %i.aa, %i.ai
  %.mux = select i1 %i.aa, i32 -5, i32 0
  br i1 %brmerge, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i32 %i.u, 5
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i64 %spec.select32.4, -1
  %i.al = tail call noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %i.ak)
  %i.am = shl nsw i32 %i.al, 1
  %i.an = add nsw i32 %i.am, -5
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ao = fcmp olt double %i.z, 1.000000e+00
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = add nuw nsw i64 %spec.select32.4, 1
  %i.aq = tail call noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %i.ap)
  %i.ar = shl nsw i32 %i.aq, 1
  %i.as = add nsw i32 %i.ar, -5
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.at = icmp eq i32 %i.s, 0
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i64 %spec.select32.4, -1
  %i.av = tail call noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %i.au)
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = add nsw i32 %i.aw, -5
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n, %bb.m, %bb.j, %bb.l, %bb.f
  %.0 = phi i32 [ %i.af, %bb.f ], [ %i.an, %bb.j ], [ %i.as, %bb.l ], [ %.mux, %bb.h ], [ 0, %bb.m ], [ %i.ax, %bb.n ]
  ret i32 %.0
}

declare noundef double @_ZN6duckdb12RandomEngine10NextRandomEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34TemporaryFileCompressionAdaptivity6UpdateENS_25TemporaryCompressionLevelEl(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = add nsw i32 %1, 5
  %i.f = sdiv i32 %i.e, 2
  %i.g = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.d
  %i.k = sub i64 %i.a, %2
  %i.l = load i64, ptr %i.i, align 8, !tbaa !248
  %i.m = mul nsw i64 %i.l, 15
  %i.n = add nsw i64 %i.k, %i.m
end_hunk_1
