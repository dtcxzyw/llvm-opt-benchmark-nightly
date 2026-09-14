Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parser?download=true
inline.NumInlined: 5612
inline.NumDeleted: 2717
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb6Parser15ParseColumnListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParserOptionsE:bb.a
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !301
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6duckdb10ColumnListC2EOS0_.exit
  %i.dl = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.de, %_ZN6duckdb10ColumnListC2EOS0_.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb6ParserD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #28
  br label %_ZN6duckdb6ParserD2Ev.exit

_ZN6duckdb6ParserD2Ev.exit:                       ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.dm = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.u
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN6duckdb6ParserD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZN6duckdb6ParserD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ak:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.ab, %bb.ak, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.s, %bb.q
  %.pn21.pn = phi { ptr, i32 } [ %.pn2145, %bb.s ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ax, %bb.q ], [ %.pn48, %bb.ad ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.do, %bb.ak ], [ %i.bl, %bb.ab ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @_ZN6duckdb6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.p
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.al ], [ %i.aw, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.dp = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.u
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn21.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn21.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

bb.an:                                            ; preds = %bb.aa, %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Parser21ParseColumnDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParserOptionsE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ColumnDefinition") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly byval(%"struct.duckdb::ParserOptions") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::ColumnList", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN6duckdb6Parser15ParseColumnListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParserOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnList") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull byval(%"struct.duckdb::ParserOptions") align 8 %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %3, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb16ColumnDefinition4CopyEv(ptr dead_on_unwind writable sret(%"class.duckdb::ColumnDefinition") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.c) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 4 uses
  %i.g = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.i) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #28
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !144
  %i.o = shl i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !171    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !170  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.s, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i) #27
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.w = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.s, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #28
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10ColumnListD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb13QualifiedName8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZN6duckdb9ParseInfo17QualifierToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret void
}

declare void @_ZN6duckdb9ParseInfo17QualifierToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13QualifiedName15ParseComponentsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 0, ptr %i.d, align 8, !tbaa !54
  store i8 0, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.i = phi i64 [ %i.f, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ] ; 2 uses
  %.12870 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.12870.be, %.lr.ph.backedge ] ; 5 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.12870
  %i.l = load i8, ptr %i.k, align 1, !tbaa !57    ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 34, label %.preheader
    i8 46, label %bb.e
  ]

.preheader:                                       ; preds = %.lr.ph
  %.272 = add nuw i64 %.12870, 1                  ; 3 uses
  %i.m = icmp ult i64 %.272, %i.i
  br i1 %i.m, label %.lr.ph75.preheader, label %.preheader._crit_edge

.lr.ph75.preheader:                               ; preds = %.preheader
  %i.n = load ptr, ptr %1, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.272
  %i.p = load i8, ptr %i.o, align 1, !tbaa !57    ; 2 uses
  %i.q = icmp eq i8 %i.p, 34
  br i1 %i.q, label %.lr.ph75._crit_edge, label %.lr.ph129

bb.b:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %i.d, align 8, !tbaa !54   ; 4 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.v = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.c, align 8, !tbaa !57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.x = phi i64 [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.r, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.z = phi ptr [ %.pre.i.i, %.noexc ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 %i.l, ptr %i.aa, align 1, !tbaa !57
  store i64 %i.s, ptr %i.d, align 8, !tbaa !54
  %i.ab = load ptr, ptr %2, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store i8 0, ptr %i.ac, align 1, !tbaa !57
  %i.ad = add nuw i64 %.12870, 1                  ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %bb.d, %.backedge
  %.be = phi i64 [ %i.ae, %bb.d ], [ %6, %.backedge ]
  %.12870.be = phi i64 [ %i.ad, %bb.d ], [ %.027.be, %.backedge ]
  br label %.lr.ph, !llvm.loop !743

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.c
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.noexc.i.i, %bb.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i44, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !118 ; 8 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !119
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !55
  %i.aj = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !54  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !56
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc32:                                         ; preds = %.noexc.i.i
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !53
  %i.an = load i64, ptr %i.b, align 8, !tbaa !56
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !57
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc32, %bb.f
  %i.ao = phi ptr [ %i.am, %.noexc32 ], [ %i.ai, %bb.f ] ; 2 uses
  switch i64 %i.ak, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !57
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !54
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.av, ptr %i.g, align 8, !tbaa !118
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.i
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !54
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.18, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %5 = add nuw i64 %.12870, 1
  %.pre = load i64, ptr %i.e, align 8, !tbaa !54
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.lr.ph75._crit_edge
  %6 = phi i64 [ %.lcssa125, %.lr.ph75._crit_edge ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %.027.be = phi i64 [ %7, %.lr.ph75._crit_edge ], [ %5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.ay = icmp ult i64 %.027.be, %6
  br i1 %i.ay, label %.lr.ph.backedge, label %._crit_edge

.lr.ph75:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit40
  %i.az = load ptr, ptr %1, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !57  ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 34
  br i1 %i.bc, label %.lr.ph75._crit_edge, label %.lr.ph129

.lr.ph75._crit_edge:                              ; preds = %.lr.ph75, %.lr.ph75.preheader
  %.lcssa125 = phi i64 [ %i.i, %.lr.ph75.preheader ], [ %i.bq, %.lr.ph75 ]
  %.2.in73.lcssa = phi i64 [ %.12870, %.lr.ph75.preheader ], [ %.274128, %.lr.ph75 ]
  %7 = add nuw i64 %.2.in73.lcssa, 2
  br label %.backedge

.lr.ph129:                                        ; preds = %.lr.ph75.preheader, %.lr.ph75
  %i.bd = phi i8 [ %i.bb, %.lr.ph75 ], [ %i.p, %.lr.ph75.preheader ]
  %.274128 = phi i64 [ %.2, %.lr.ph75 ], [ %.272, %.lr.ph75.preheader ] ; 2 uses
  %i.be = load i64, ptr %i.d, align 8, !tbaa !54  ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i38: ; preds = %.lr.ph129
  %i.bi = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %.lr.ph129
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i38
  %i.bk = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i38 ]
  %i.bl = icmp ugt i64 %i.bf, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit40

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.be, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.j
  %.pre.i.i37 = load ptr, ptr %2, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36, %.noexc39
  %i.bm = phi ptr [ %.pre.i.i37, %.noexc39 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i36 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 %i.bd, ptr %i.bn, align 1, !tbaa !57
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !54
  %i.bo = load ptr, ptr %2, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bf
  store i8 0, ptr %i.bp, align 1, !tbaa !57
  %.2 = add nuw i64 %.274128, 1                   ; 3 uses
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %i.br = icmp ult i64 %.2, %i.bq
  br i1 %i.br, label %.lr.ph75, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit40
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %.preheader._crit_edge
  invoke void @_ZN6duckdb15ParserExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.t unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.preheader._crit_edge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.bv) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.n, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.n, label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56 = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bs) #27
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %.backedge, %bb.d
  %.pr = load i64, ptr %i.d, align 8, !tbaa !54   ; 5 uses
  %i.by = icmp eq i64 %.pr, 0
  br i1 %i.by, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !118 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !119
  %.not.i41 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i41, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !55
  %i.ce = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %.pr, ptr %i.a, align 8, !tbaa !56
  %i.cf = icmp ugt i64 %.pr, 15
  br i1 %i.cf, label %.noexc.i.i44, label %._crit_edge.i.i.i42

.noexc.i.i44:                                     ; preds = %bb.p
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i42.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge.i.i.i42.thread:                       ; preds = %.noexc.i.i44
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !53
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.ch, ptr %i.cd, align 8, !tbaa !57
  br label %bb.r

._crit_edge.i.i.i42:                              ; preds = %bb.p
  %cond = icmp eq i64 %.pr, 1
  br i1 %cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i42
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !57
  store i8 %i.ci, ptr %i.cd, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43

bb.r:                                             ; preds = %._crit_edge.i.i.i42.thread, %._crit_edge.i.i.i42
  %i.cj = phi ptr [ %i.cg, %._crit_edge.i.i.i42.thread ], [ %i.cd, %._crit_edge.i.i.i42 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ce, i64 %.pr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43: ; preds = %bb.r, %bb.q
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !54
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.co = load ptr, ptr %i.bz, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.cp, ptr %i.bz, align 8, !tbaa !118
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47

bb.s:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43, %bb.s, %._crit_edge
  %i.cq = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.c
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47
  call void @_ZdlPv(ptr noundef %i.cq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %.pn30 = phi { ptr, i32 } [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn56, %bb.n ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit60, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cs = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.c
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn30

bb.t:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13QualifiedName5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::QualifiedName") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::vector", align 8    ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !54
  store i8 0, ptr %i.d, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !54
  store i8 0, ptr %i.f, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !54
  store i8 0, ptr %i.h, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6duckdb13QualifiedName15ParseComponentsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !349    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !349  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.e, align 8, !tbaa !54
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.18, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !54
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull @.str.18, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15 unwind label %bb.e ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
end_hunk_0
