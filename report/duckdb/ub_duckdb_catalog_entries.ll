inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZNK6duckdb17TableCatalogEntry7GetInfoEv:bb.a
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11 unwind label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_ZNK6duckdb10ColumnList4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnList") align 8 %4, ptr noundef nonnull align 8 dereferenceable(105) %i.p)
          to label %bb.g unwind label %bb.ad

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.ae      ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 352 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !487  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !484  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x ptr>, ptr %4, align 16, !tbaa !530
  store <2 x ptr> %i.x, ptr %i.r, align 8, !tbaa !530
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !531
  store ptr %i.z, ptr %i.v, align 8, !tbaa !531
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %bb.h ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i.i.i.i) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #31
  br label %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i

_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #34
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i: ; preds = %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 432 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !159 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  %i.aj = load <2 x ptr>, ptr %i.ag, align 16, !tbaa !161
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !160
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !160
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.ah, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN6duckdb10ColumnListaSEOS0_.exit.thread, label %_ZN6duckdb10ColumnListaSEOS0_.exit

_ZN6duckdb10ColumnListaSEOS0_.exit.thread:        ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.an = load i8, ptr %i.am, align 8, !tbaa !537, !range !70, !noundef !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !537
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZN6duckdb10ColumnListaSEOS0_.exit:               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #31
  %.pr = load ptr, ptr %i.ag, align 16, !tbaa !159 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !537, !range !70, !noundef !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store i8 %i.aq, ptr %i.ar, align 8, !tbaa !537
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit.thread, %bb.k, %_ZN6duckdb10ColumnListaSEOS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !534 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.at, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 4 uses
  %i.au = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aw) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #31
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !603

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !532
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !533
  %i.bc = shl i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !532 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bd) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.l, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 16, !tbaa !487  ; 3 uses
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !484 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !487
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.bj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #31
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %.loopexit.split-lp ; 3 uses

bb.n:                                             ; preds = %_ZN6duckdb10ColumnListD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 464 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !300
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !303
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp ugt i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 480 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !544
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !303 ; 10 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 4 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 472 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !300 ; 4 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = sub i64 %i.cd, %i.by
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33
          to label %.noexc14 unwind label %.loopexit.split-lp ; 9 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.bw, %i.cc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i12.preheader:                     ; preds = %.noexc14
  %5 = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %5, %i.by
  %6 = add i64 %i.cg, -8                          ; 2 uses
  %i.ch = lshr i64 %6, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i12.preheader
  %i.cj = add i64 %i.cd, -8
  %i.ck = sub i64 %i.cj, %i.by
  %i.cl = and i64 %i.ck, -8
  %i.cm = add i64 %i.cl, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cm
  %scevgep54 = getelementptr i8, ptr %i.bw, i64 %i.cm
  %bound0 = icmp ult ptr %i.cf, %scevgep54
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cn = shl i64 %n.vec, 3                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.cf, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.bw, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bw, i64 %i.cq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.cr = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %wide.load56 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1470, !noalias !1467
  store <2 x i64> %wide.load56, ptr %i.cs, align 8, !tbaa !567, !alias.scope !1470, !noalias !1467
  %i.ct = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  store <2 x ptr> splat (ptr null), ptr %i.ct, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader83

.lr.ph.i.i.i.i.i12.preheader83:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i12.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.co, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i12

.lr.ph.i.i.i.i.i12:                               ; preds = %.lr.ph.i.i.i.i.i12.preheader83, %.lr.ph.i.i.i.i.i12
  %.012.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i12 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i12 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1465, !noalias !1462
  store i64 %i.cv, ptr %.012.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1462, !noalias !1465
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1465, !noalias !1462
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cw, %i.cc
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12, !llvm.loop !1473

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i12, %middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #31
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.cf, ptr %i.bl, align 8, !tbaa !303
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store ptr %i.cy, ptr %i.cb, align 8, !tbaa !300
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bs
  store ptr %i.cz, ptr %i.bu, align 8, !tbaa !544
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.p
  %i.da = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %i.db)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %.loopexit.split-lp

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.r, %bb.s
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !543 ; 2 uses
  %i.df = load ptr, ptr %i.bn, align 8, !tbaa !543 ; 2 uses
  %.not5.i = icmp eq ptr %i.de, %i.df
  br i1 %.not5.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"
  %.sroa.02.06.i = phi ptr [ %i.fh, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i" ], [ %i.de, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit ] ; 2 uses
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc18 unwind label %.loopexit ; 3 uses

.noexc18:                                         ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02.06.i)
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %i.di)
          to label %.noexc20 unwind label %.loopexit, !inline_history !1474

.noexc20:                                         ; preds = %.noexc19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 472 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !300 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 480 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !544
  %.not.i.i.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i.i.i, label %bb.t, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i: ; preds = %.noexc20
  %i.dq = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !567
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !300
  br label %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"

bb.t:                                             ; preds = %.noexc20
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !303 ; 10 uses
  %i.dt = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i.i16 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i16)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #33
          to label %.noexc3.i.i unwind label %.loopexit.i ; 10 uses

.noexc3.i.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  %i.ef = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !567
  store ptr null, ptr %2, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, %i.dn
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc3.i.i
  %i.eg = sub i64 %i.dt, %i.du
  %i.eh = add i64 %i.eg, -8                       ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.eh, 56
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep59 = getelementptr i8, ptr %i.ed, i64 8
  %i.ek = add i64 %i.dt, -8
  %i.el = sub i64 %i.ek, %i.du
  %i.em = and i64 %i.el, -8                       ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.em
  %scevgep61 = getelementptr i8, ptr %i.ds, i64 8
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.em
  %bound063 = icmp ult ptr %i.ed, %scevgep62
  %bound164 = icmp ult ptr %i.ds, %scevgep60
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck58
  %n.vec70 = and i64 %i.ej, 4611686018427387900   ; 3 uses
  %i.en = shl i64 %n.vec70, 3                     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ed, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ds, i64 %i.en
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.eq = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.ed, i64 %i.eq ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !118 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.f) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #31
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !603

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !532    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #31
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !120
  %i.n = load ptr, ptr %1, align 8, !tbaa !532    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !536
  store ptr %i.q, ptr %i.j, align 8, !tbaa !536
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.r = phi ptr [ %i.j, %bb.d ], [ %i.n, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !532
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !533  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !533
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !534  ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !534
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !535
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !535
  %.not.i12 = icmp eq ptr %i.w, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !506
  %i.ac = urem i64 %i.ab, %i.t
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !508
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !509
  store i64 1, ptr %i.s, align 8, !tbaa !533
  store ptr null, ptr %i.o, align 8, !tbaa !536
  store ptr %i.o, ptr %1, align 8, !tbaa !532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1533 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !647    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1194
  %i.i = load ptr, ptr %0, align 8, !tbaa !647    ; 11 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false), !tbaa !19
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !647
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1194
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1533 ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !162

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !647
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !19
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !162

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !647
  %.pre25 = load ptr, ptr %i.u, align 8, !tbaa !1533 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !647 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !1533
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !19
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.x, %bb.m ], [ 8, %bb.n ] ; 3 uses
  %i.ae = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.af = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.ag = phi ptr [ %.pre25, %bb.l ], [ %i.v, %bb.m ], [ %i.v, %bb.n ] ; 5 uses
  %i.ah = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 3 uses
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = ptrtoaddr ptr %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = add i64 %.pre-phi33, %i.am
  %2 = sub i64 %i.al, %i.an
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ao = lshr i64 %3, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aq = add nuw i64 %.pre-phi33, %i.aj
  %i.ar = sub i64 %i.aq, %i.ai
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.av ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !19
  %wide.load42 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19
  store <2 x i64> %wide.load42, ptr %i.ax, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.az = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !19
  store i64 %i.az, ptr %.011.i.i.i.i, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2027

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bc = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.af, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1533
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode.1602", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !509
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 6 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !287
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !286
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !286
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
  store ptr %i.u, ptr %2, align 8, !tbaa !2028
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.v, align 8, !tbaa !288
  store ptr null, ptr %i.t, align 8, !tbaa !290
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_17_ReuseOrAllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = icmp eq ptr %.0, %i.w
  %or.cond = select i1 %.not18, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %.0) #31
  br label %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aa = call ptr @__cxa_begin_catch(ptr %i.z) #30 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre21 = load i64, ptr %i.a, align 8, !tbaa !31
  br label %bb.n

_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !2028  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i
  %.06.i.i = phi ptr [ %i.ac, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb17LogicalDependencyELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i ], [ %i.ab, %_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit ] ; 8 uses
  %i.ac = load ptr, ptr %.06.i.i, align 8, !tbaa !118 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
end_hunk_1
