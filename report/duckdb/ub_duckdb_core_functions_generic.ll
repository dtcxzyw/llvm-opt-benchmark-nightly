inline.NumInlined: 3289
inline.NumDeleted: 1424
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_7LeastOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE:bb.a
  %i.hp = icmp eq i32 %.0.i.i.i.i.i.i.i116, 1
  br i1 %i.hp, label %bb.ce, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, !prof !90

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

_ZN6duckdb11LogicalTypeaSERKS0_.exit117:          ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115, %bb.ce
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122 unwind label %bb.y

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit117
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hr = load i8, ptr %28, align 8, !tbaa !149
  store i8 %i.hr, ptr %i.hq, align 8, !tbaa !149
  %i.hs = getelementptr inbounds nuw i8, ptr %28, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !150
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !150
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.hx = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !13
  %i.hy = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !13
  store <2 x ptr> %i.hx, ptr %i.hv, align 8, !tbaa !13
  store <2 x ptr> %i.hy, ptr %i.hw, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #23
  store ptr null, ptr %0, align 8, !tbaa !152
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.cf:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.x, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.au, %bb.y ], [ %i.at, %bb.x ], [ %i.bd, %bb.aa ], [ %i.bm, %bb.ac ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %bb.w, %bb.l
  unreachable
}

declare void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.75", align 8    ; 9 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ENS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map") align 8 %6, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !701
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !516, !noalias !701 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !519, !noalias !701 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !520

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !516, !noalias !701
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !701
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !701
  invoke void @_ZN6duckdb15BinderExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %7, align 8, !tbaa !82     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !541  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !543 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i8
  call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !82   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !544

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %6, align 8, !tbaa !545
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !546
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !545   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #27
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ag) #27
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader83

.preheader83:                                     ; preds = %bb.a
  %.not95 = icmp eq ptr %i.c, %i.d
  br i1 %.not95, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.aj

._crit_edge:                                      ; preds = %.lr.ph, %.preheader83
  %.0.lcssa = phi i8 [ 2, %.preheader83 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not96 = icmp eq ptr %i.l, %i.m
  br i1 %.not96, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader83, %.lr.ph
  %.085 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader83 ]
  %.05584 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader83 ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05584)
  %i.t = load i8, ptr %i.s, align 8, !tbaa !104
  %.not = icmp eq i8 %i.t, 2
  %spec.select = select i1 %.not, i8 %.085, i8 0  ; 2 uses
  %i.u = add nuw i64 %.05584, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.w = load ptr, ptr %0, align 8, !tbaa !537
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 104
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !704

._crit_edge94:                                    ; preds = %bb.ah, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge94
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !381
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ak)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !128
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %bb.e ], [ %i.aj, %bb.d ]
  %i.am = lshr i64 %.01.i, 6
  %i.an = and i64 %.01.i, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !83
  %i.as = and i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %bb.c
  %i.at = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %i.ad
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %bb.c, !llvm.loop !705

_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit: ; preds = %bb.f, %._crit_edge94
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph93, %bb.ah
  %.05790 = phi i64 [ 0, %.lr.ph93 ], [ %i.eg, %bb.ah ] ; 4 uses
  %i.au = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05790)
  %i.av = load i8, ptr %i.au, align 8, !tbaa !104
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %bb.h, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05790)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.az, null
  br i1 %.not.i.i69, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !83
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ah

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05790)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !128
  %.not.i70 = icmp eq ptr %i.bf, null
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !103 ; 3 uses
  %.not98 = icmp eq i64 %i.bg, 0                  ; 2 uses
  br i1 %.not.i70, label %.preheader, label %.preheader81

.preheader81:                                     ; preds = %bb.k
  br i1 %.not98, label %.loopexit, label %.lr.ph87

.preheader:                                       ; preds = %bb.k
  br i1 %.not98, label %.loopexit, label %.lr.ph89

bb.l:                                             ; preds = %bb.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph87:                                         ; preds = %.preheader81, %bb.q
  %i.bj = phi i64 [ %i.cf, %bb.q ], [ %i.bg, %.preheader81 ] ; 2 uses
  %.05686 = phi i64 [ %i.cg, %bb.q ], [ 0, %.preheader81 ] ; 6 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %i.bk = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %.not.i71 = icmp eq ptr %i.bk, null
  br i1 %.not.i71, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph87
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.05686
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.n, %.lr.ph87
  %i.bo = phi i64 [ %i.bn, %bb.n ], [ %.05686, %.lr.ph87 ] ; 3 uses
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bp, null
  br i1 %.not.i72, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bq = lshr i64 %i.bo, 6
  %i.br = and i64 %i.bo, 63
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !83
  %i.bu = shl nuw i64 1, %i.br
  %i.bv = and i64 %i.bt, %i.bu
  %.not80 = icmp eq i64 %i.bv, 0
  br i1 %.not80, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !84  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05686 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05686
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  %i.cd = icmp sgt i8 %i.cc, %i.bx
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.by, align 1, !tbaa !131
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05686
  store i8 %i.bx, ptr %i.ce, align 1, !tbaa !84
  %.pre.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cf = phi i64 [ %i.bj, %bb.o ], [ %.pre.a, %bb.p ], [ %i.bj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.cg = add nuw i64 %.05686, 1                  ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  br i1 %i.ch, label %.lr.ph87, label %.loopexit, !llvm.loop !706

.lr.ph89:                                         ; preds = %.preheader, %bb.u
  %i.ci = phi i64 [ %i.cx, %bb.u ], [ %i.bg, %.preheader ]
  %.05488 = phi i64 [ %i.cy, %bb.u ], [ 0, %.preheader ] ; 6 uses
  %5 = load ptr, ptr %3, align 8, !tbaa !130
  %i.cj = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %.not.i73 = icmp eq ptr %i.cj, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.r

bb.r:                                             ; preds = %.lr.ph89
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.05488
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = zext i32 %i.cl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.r, %.lr.ph89
  %i.cn = phi i64 [ %i.cm, %bb.r ], [ %.05488, %.lr.ph89 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !84  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05488 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !131, !range !133, !noundef !76
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05488
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !84
  %i.cv = icmp sgt i8 %i.cu, %i.cp
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  store i8 1, ptr %i.cq, align 1, !tbaa !131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05488
  store i8 %i.cp, ptr %i.cw, align 1, !tbaa !84
  %.pre100.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = phi i64 [ %.pre100.a, %bb.t ], [ %i.ci, %bb.s ] ; 2 uses
  %i.cy = add nuw i64 %.05488, 1                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  br i1 %i.cz, label %.lr.ph89, label %.loopexit, !llvm.loop !707

.loopexit:                                        ; preds = %bb.q, %bb.u, %.preheader81, %.preheader
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !88
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !683
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %.loopexit
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dr, align 8, !tbaa !86
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !88
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !79
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !684
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.du, %bb.ae ], [ %i.ee, %bb.af ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ef, label %bb.ag, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.eg = add nuw i64 %.05790, 1                  ; 2 uses
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ei = load ptr, ptr %0, align 8, !tbaa !537
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 104
  %i.en = icmp ult i64 %i.eg, %i.em
  br i1 %i.en, label %bb.g, label %._crit_edge94, !llvm.loop !708

bb.ai:                                            ; preds = %bb.m, %bb.l
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %i.bi, %bb.m ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn65.pn.pn

bb.aj:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIsNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 13 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader82

.preheader82:                                     ; preds = %bb.a
  %.not94 = icmp eq ptr %i.c, %i.d
  br i1 %.not94, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.ax

._crit_edge:                                      ; preds = %.lr.ph, %.preheader82
  %.0.lcssa = phi i8 [ 2, %.preheader82 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not95 = icmp eq ptr %i.l, %i.m
  br i1 %.not95, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader82, %.lr.ph
  %.084 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader82 ]
  %.05583 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader82 ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05583)
  %i.t = load i8, ptr %i.s, align 8, !tbaa !104
  %.not = icmp eq i8 %i.t, 2
  %spec.select = select i1 %.not, i8 %.084, i8 0  ; 2 uses
  %i.u = add nuw i64 %.05583, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.w = load ptr, ptr %0, align 8, !tbaa !537
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 104
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !709

._crit_edge93:                                    ; preds = %bb.av, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge93
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.al

bb.r:                                             ; preds = %bb.p, %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.pre99 = load i64, ptr %i.p, align 8, !tbaa !103
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cj = phi i64 [ %.pre99, %bb.r ], [ %i.bl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.ck = add nuw i64 %.05684, 1                  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  br i1 %i.cl, label %.lr.ph86, label %.loopexit, !llvm.loop !728

.lr.ph88:                                         ; preds = %.preheader, %bb.x
  %.05487 = phi i64 [ %i.dc, %bb.x ], [ 0, %.preheader ] ; 6 uses
  %i.cm = load ptr, ptr %3, align 8, !tbaa !130
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !127 ; 2 uses
  %.not.i73 = icmp eq ptr %i.cn, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.t

bb.t:                                             ; preds = %.lr.ph88
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05487
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.t, %.lr.ph88
  %i.cr = phi i64 [ %i.cq, %bb.t ], [ %.05487, %.lr.ph88 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155 ; 2 uses
  store double %i.ct, ptr %i.c, align 8, !tbaa !155
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05487 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !131, !range !133, !noundef !76
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05487
  %i.cy = invoke noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75 unwind label %bb.w

_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75: ; preds = %bb.u
  br i1 %i.cy, label %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75._crit_edge, label %bb.x

_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75._crit_edge: ; preds = %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75
  %.pre100 = load double, ptr %i.c, align 8, !tbaa !155
  br label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75._crit_edge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.cz = phi double [ %.pre100, %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75._crit_edge ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74 ]
  store i8 1, ptr %i.cu, align 1, !tbaa !131
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05487
  store double %i.cz, ptr %i.da, align 8, !tbaa !155
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.al

bb.x:                                             ; preds = %bb.v, %_ZN6duckdb8LessThan9OperationIdEEbRKT_S4_.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.dc = add nuw i64 %.05487, 1                  ; 2 uses
  %i.dd = load i64, ptr %i.p, align 8, !tbaa !103
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph88, label %.loopexit, !llvm.loop !729

.loopexit:                                        ; preds = %bb.s, %bb.x, %.preheader79, %.preheader
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dg, align 8, !tbaa !86
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !88
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !683
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.ab ], [ %i.dt, %bb.ac ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.du, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %.loopexit
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.dw, align 8, !tbaa !86
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !88
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23, !inline_history !684
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dz, %bb.ah ], [ %i.ej, %bb.ai ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ek, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.el = add nuw i64 %.05789, 1                  ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !536
  %i.en = load ptr, ptr %0, align 8, !tbaa !537
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 104
  %i.es = icmp ult i64 %i.el, %i.er
  br i1 %i.es, label %bb.g, label %._crit_edge93, !llvm.loop !730

bb.al:                                            ; preds = %bb.m, %bb.q, %bb.w, %bb.l
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.db, %bb.w ], [ %i.bk, %bb.m ], [ %i.ci, %bb.q ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn65.pn.pn

bb.am:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader94

.preheader94:                                     ; preds = %bb.a
  %.not107 = icmp eq ptr %i.c, %i.d
  br i1 %.not107, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.am

._crit_edge:                                      ; preds = %.lr.ph, %.preheader94
  %.0.lcssa = phi i8 [ 2, %.preheader94 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not108 = icmp eq ptr %i.l, %i.m
  br i1 %.not108, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader94, %.lr.ph
  %.096 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader94 ]
  %.05895 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader94 ] ; 3 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05895)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !104
  %.not = icmp eq i8 %i.x, 2
  %spec.select = select i1 %.not, i8 %.096, i8 0  ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05895)
  tail call void @_ZN6duckdb12StringVector16AddHeapReferenceERNS_6VectorES2_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = add nuw i64 %.05895, 1                   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ab = load ptr, ptr %0, align 8, !tbaa !537
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 104
  %i.ag = icmp ult i64 %i.z, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !731

._crit_edge106:                                   ; preds = %bb.ak, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge106
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %bb.f ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !131, !range !133, !noundef !76
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !381
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.ap)
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !128
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.aq = phi ptr [ %.pre.i.i, %bb.e ], [ %i.ao, %bb.d ]
  %i.ar = lshr i64 %.01.i, 6
  %i.as = and i64 %.01.i, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !83
  %i.ax = and i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %bb.c
  %i.ay = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.ai
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %bb.c, !llvm.loop !732

_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit: ; preds = %bb.f, %._crit_edge106
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.am

bb.g:                                             ; preds = %.lr.ph105, %bb.ak
  %.060102 = phi i64 [ 0, %.lr.ph105 ], [ %i.fr, %bb.ak ] ; 4 uses
  %i.az = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !104
  %i.bb = icmp eq i8 %i.ba, 2
  br i1 %i.bb, label %bb.h, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bc = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.be, null
  br i1 %.not.i.i72, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.h
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !83
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ak

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bh, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !128
  %.not.i73 = icmp eq ptr %i.bk, null
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !103 ; 4 uses
  %.not110 = icmp eq i64 %i.bl, 0                 ; 2 uses
  br i1 %.not.i73, label %.preheader, label %.preheader92

.preheader92:                                     ; preds = %bb.k
  br i1 %.not110, label %.loopexit, label %.lr.ph99

.preheader:                                       ; preds = %bb.k
  br i1 %.not110, label %.loopexit, label %.lr.ph101

bb.l:                                             ; preds = %bb.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.m:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph99:                                         ; preds = %.preheader92, %bb.s
  %.pre113.a = phi i64 [ %.pre114.a, %bb.s ], [ %i.bl, %.preheader92 ] ; 3 uses
  %i.bo = phi i64 [ %i.da, %bb.s ], [ %i.bl, %.preheader92 ]
  %.05997 = phi i64 [ %i.db, %bb.s ], [ 0, %.preheader92 ] ; 6 uses
  %6 = load ptr, ptr %3, align 8, !tbaa !130
  %i.bp = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %.not.i74 = icmp eq ptr %i.bp, null
  br i1 %.not.i74, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph99
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05997
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.n, %.lr.ph99
  %i.bt = phi i64 [ %i.bs, %bb.n ], [ %.05997, %.lr.ph99 ] ; 3 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %.not.i75 = icmp eq ptr %i.bu, null
  br i1 %.not.i75, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bv = lshr i64 %i.bt, 6
  %i.bw = and i64 %i.bt, 63
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !83
  %i.bz = shl nuw i64 1, %i.bw
  %i.ca = and i64 %i.by, %i.bz
  %.not91 = icmp eq i64 %i.ca, 0
  br i1 %.not91, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !95
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05997 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.o, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.05997 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.cg, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.q, align 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.ci = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.cj = icmp ugt i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ck = load i32, ptr %4, align 8, !tbaa !84    ; 3 uses
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !84 ; 3 uses
  %i.cm = icmp ult i32 %i.ck, %i.cl
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.cl)
  %i.cn = icmp ult i32 %i.cl, 13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = select i1 %i.cn, ptr %i.cg, ptr %i.cp
  %i.cr = icmp ult i32 %i.ck, 13
  %i.cs = load ptr, ptr %i.r, align 8
  %i.ct = select i1 %i.cr, ptr %i.q, ptr %i.cs
  %i.cu = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.cv = call i32 @memcmp(ptr noundef %i.cq, ptr noundef %i.ct, i64 noundef %i.cu) #28 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = icmp eq i32 %i.cv, 0
  %i.cy = and i1 %i.cm, %i.cx
  %or.cond = or i1 %i.cw, %i.cy
  br i1 %or.cond, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.r

_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread: ; preds = %bb.q, %bb.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.cc, align 1, !tbaa !131
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.05997
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  %.pre.pre = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread
  %.pre.a = phi i64 [ %.pre113.a, %bb.q ], [ %.pre113.a, %bb.p ], [ %.pre.pre, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre114.a = phi i64 [ %.pre.a, %bb.r ], [ %.pre113.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.da = phi i64 [ %.pre.a, %bb.r ], [ %i.bo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.db = add nuw i64 %.05997, 1                  ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  br i1 %i.dc, label %.lr.ph99, label %.loopexit, !llvm.loop !733

.lr.ph101:                                        ; preds = %.preheader, %bb.x
  %i.dd = phi i64 [ %i.ei, %bb.x ], [ %i.bl, %.preheader ] ; 2 uses
  %.057100 = phi i64 [ %i.ej, %bb.x ], [ 0, %.preheader ] ; 6 uses
  %7 = load ptr, ptr %3, align 8, !tbaa !130
  %i.de = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %.not.i76 = icmp eq ptr %i.de, null
  br i1 %.not.i76, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit77, label %bb.t

bb.t:                                             ; preds = %.lr.ph101
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.057100
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit77

_ZNK6duckdb15SelectionVector9get_indexEm.exit77:  ; preds = %bb.t, %.lr.ph101
  %i.di = phi i64 [ %i.dh, %bb.t ], [ %.057100, %.lr.ph101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.di ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !95
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.057100 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !131, !range !133, !noundef !76
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.u, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit77
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.057100 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i78 = load i32, ptr %i.do, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i79 = load i32, ptr %i.s, align 4 ; 2 uses
  %.not.i.i.i.i80 = icmp eq i32 %.0.copyload.i.i.i.i.i78, %.0.copyload.i11.i.i.i.i79
  br i1 %.not.i.i.i.i80, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i78)
  %i.dq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i79)
  %i.dr = icmp ugt i32 %i.dp, %i.dq
  br i1 %i.dr, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ds = load i32, ptr %5, align 8, !tbaa !84    ; 3 uses
  %i.dt = load i32, ptr %i.dn, align 8, !tbaa !84 ; 3 uses
  %i.du = icmp ult i32 %i.ds, %i.dt
  %.sroa.speculated.i.i.i.i82 = call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.dt)
  %i.dv = icmp ult i32 %i.dt, 13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = select i1 %i.dv, ptr %i.do, ptr %i.dx
  %i.dz = icmp ult i32 %i.ds, 13
  %i.ea = load ptr, ptr %i.t, align 8
  %i.eb = select i1 %i.dz, ptr %i.s, ptr %i.ea
  %i.ec = zext i32 %.sroa.speculated.i.i.i.i82 to i64
  %i.ed = call i32 @memcmp(ptr noundef %i.dy, ptr noundef %i.eb, i64 noundef %i.ec) #28 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = and i1 %i.du, %i.ef
  %or.cond90 = or i1 %i.ee, %i.eg
  br i1 %or.cond90, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread, label %bb.x

_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread: ; preds = %bb.w, %bb.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit77
  store i8 1, ptr %i.dk, align 1, !tbaa !131
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.057100
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  %.pre112.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread
  %i.ei = phi i64 [ %i.dd, %bb.w ], [ %i.dd, %bb.v ], [ %.pre112.a, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ej = add nuw i64 %.057100, 1                 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph101, label %.loopexit, !llvm.loop !734

.loopexit:                                        ; preds = %bb.s, %bb.x, %.preheader92, %.preheader
  %i.el = load ptr, ptr %i.u, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.em, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !88
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !683
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !79
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.ab ], [ %i.ez, %bb.ac ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %.loopexit
  %i.fb = load ptr, ptr %i.v, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.fc, align 8, !tbaa !86
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !88
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23, !inline_history !684
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ff, %bb.ah ], [ %i.fp, %bb.ai ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fq, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fr = add nuw i64 %.060102, 1                 ; 2 uses
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ft = load ptr, ptr %0, align 8, !tbaa !537
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 104
  %i.fy = icmp ult i64 %i.fr, %i.fx
  br i1 %i.fy, label %bb.g, label %._crit_edge106, !llvm.loop !735

bb.al:                                            ; preds = %bb.m, %bb.l
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bn, %bb.m ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn68.pn.pn

bb.am:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.699", align 8 ; 5 uses
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.d = load ptr, ptr %0, align 8, !tbaa !537
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !736
  %i.k = tail call fastcc noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb12_GLOBAL__N_120SortKeyLeastGreatest7PrepareERNS_9DataChunkERNS_15ExpressionStateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %.val) ; 10 uses
  %.val69 = load ptr, ptr %i.j, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.val69, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.l = load ptr, ptr %3, align 8, !tbaa !738    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !537
  %.not103 = icmp eq ptr %i.o, %i.p
  br i1 %.not103, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i8 [ 2, %bb.c ], [ %spec.select, %.lr.ph ]
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !537
  %.not104 = icmp eq ptr %i.s, %i.t
  br i1 %.not104, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.092 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %bb.c ]
  %.05591 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05591)
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !104
  %.not = icmp eq i8 %i.ae, 2
  %spec.select = select i1 %.not, i8 %.092, i8 0  ; 2 uses
  %i.af = add nuw i64 %.05591, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !537
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 104
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !740

._crit_edge102:                                   ; preds = %bb.ah, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !103
  %.val70 = load ptr, ptr %i.j, align 8, !tbaa !736
  call fastcc void @_ZN6duckdb12_GLOBAL__N_120SortKeyLeastGreatest14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE(i64 noundef %i.ao, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr %.val70)
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.d:                                             ; preds = %.lr.ph101, %bb.ah
  %.05798 = phi i64 [ 0, %.lr.ph101 ], [ %i.fh, %bb.ah ] ; 4 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !104
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.as = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.e
  %i.av = load i64, ptr %i.au, align 8, !tbaa !83
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ah

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.e, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  %i.ax = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.ay = load i64, ptr %i.u, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !129 ; 2 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.ba, null
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !103 ; 4 uses
  %.not106 = icmp eq i64 %i.bb, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader89

.preheader89:                                     ; preds = %bb.h
  br i1 %.not106, label %.loopexit, label %.lr.ph95

.preheader:                                       ; preds = %bb.h
  br i1 %.not106, label %.loopexit, label %.lr.ph97

bb.i:                                             ; preds = %bb.f, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.j:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph95:                                         ; preds = %.preheader89, %bb.p
  %.pre109.a = phi i64 [ %.pre110.a, %bb.p ], [ %i.bb, %.preheader89 ] ; 3 uses
  %i.be = phi i64 [ %i.cq, %bb.p ], [ %i.bb, %.preheader89 ]
  %.05693 = phi i64 [ %i.cr, %bb.p ], [ 0, %.preheader89 ] ; 6 uses
  %7 = load ptr, ptr %4, align 8, !tbaa !130
  %i.bf = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %.not.i71 = icmp eq ptr %i.bf, null
  br i1 %.not.i71, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph95
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.05693
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.k, %.lr.ph95
  %i.bj = phi i64 [ %i.bi, %bb.k ], [ %.05693, %.lr.ph95 ] ; 3 uses
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !128 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bk, null
  br i1 %.not.i72, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bl = lshr i64 %i.bj, 6
  %i.bm = and i64 %i.bj, 63
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !83
  %i.bp = shl nuw i64 1, %i.bm
  %i.bq = and i64 %i.bo, %i.bp
  %.not88 = icmp eq i64 %i.bq, 0
  br i1 %.not88, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05693 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !131, !range !133, !noundef !76
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05693 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.bw, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i = load i32, ptr %i.x, align 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i11.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.by = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i)
  %i.bz = icmp ugt i32 %i.bx, %i.by
  br i1 %i.bz, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ca = load i32, ptr %5, align 8, !tbaa !84    ; 3 uses
  %i.cb = load i32, ptr %i.bv, align 8, !tbaa !84 ; 3 uses
  %i.cc = icmp ult i32 %i.ca, %i.cb
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ca, i32 %i.cb)
  %i.cd = icmp ult i32 %i.cb, 13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = select i1 %i.cd, ptr %i.bw, ptr %i.cf
  %i.ch = icmp ult i32 %i.ca, 13
  %i.ci = load ptr, ptr %i.y, align 8
  %i.cj = select i1 %i.ch, ptr %i.x, ptr %i.ci
  %i.ck = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.cl = call i32 @memcmp(ptr noundef %i.cg, ptr noundef %i.cj, i64 noundef %i.ck) #28 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = and i1 %i.cc, %i.cn
  %or.cond = or i1 %i.cm, %i.co
  br i1 %or.cond, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.o

_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread: ; preds = %bb.n, %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.bs, align 1, !tbaa !131
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05693
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %.pre.pre = load i64, ptr %i.u, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread
  %.pre.a = phi i64 [ %.pre109.a, %bb.n ], [ %.pre109.a, %bb.m ], [ %.pre.pre, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre110.a = phi i64 [ %.pre.a, %bb.o ], [ %.pre109.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.cq = phi i64 [ %.pre.a, %bb.o ], [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.cr = add nuw i64 %.05693, 1                  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph95, label %.loopexit, !llvm.loop !741

.lr.ph97:                                         ; preds = %.preheader, %bb.u
  %i.ct = phi i64 [ %i.dy, %bb.u ], [ %i.bb, %.preheader ] ; 2 uses
  %.05496 = phi i64 [ %i.dz, %bb.u ], [ 0, %.preheader ] ; 6 uses
  %8 = load ptr, ptr %4, align 8, !tbaa !130
  %i.cu = load ptr, ptr %8, align 8, !tbaa !127   ; 2 uses
  %.not.i73 = icmp eq ptr %i.cu, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.q

bb.q:                                             ; preds = %.lr.ph97
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.05496
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.q, %.lr.ph97
  %i.cy = phi i64 [ %i.cx, %bb.q ], [ %.05496, %.lr.ph97 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.cy ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !95
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05496 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !131, !range !133, !noundef !76
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.r, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05496 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i75 = load i32, ptr %i.de, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i76 = load i32, ptr %i.z, align 4 ; 2 uses
  %.not.i.i.i.i77 = icmp eq i32 %.0.copyload.i.i.i.i.i75, %.0.copyload.i11.i.i.i.i76
  br i1 %.not.i.i.i.i77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i75)
  %i.dg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i76)
  %i.dh = icmp ugt i32 %i.df, %i.dg
  br i1 %i.dh, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.di = load i32, ptr %6, align 8, !tbaa !84    ; 3 uses
  %i.dj = load i32, ptr %i.dd, align 8, !tbaa !84 ; 3 uses
  %i.dk = icmp ult i32 %i.di, %i.dj
  %.sroa.speculated.i.i.i.i79 = call i32 @llvm.umin.i32(i32 %i.di, i32 %i.dj)
  %i.dl = icmp ult i32 %i.dj, 13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = select i1 %i.dl, ptr %i.de, ptr %i.dn
  %i.dp = icmp ult i32 %i.di, 13
  %i.dq = load ptr, ptr %i.aa, align 8
  %i.dr = select i1 %i.dp, ptr %i.z, ptr %i.dq
  %i.ds = zext i32 %.sroa.speculated.i.i.i.i79 to i64
  %i.dt = call i32 @memcmp(ptr noundef %i.do, ptr noundef %i.dr, i64 noundef %i.ds) #28 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = and i1 %i.dk, %i.dv
  %or.cond87 = or i1 %i.du, %i.dw
  br i1 %or.cond87, label %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread, label %bb.u

_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread: ; preds = %bb.t, %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  store i8 1, ptr %i.da, align 1, !tbaa !131
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05496
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false)
  %.pre108.a = load i64, ptr %i.u, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread
  %i.dy = phi i64 [ %i.ct, %bb.t ], [ %i.ct, %bb.s ], [ %.pre108.a, %_ZN6duckdb8LessThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dz = add nuw i64 %.05496, 1                  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph97, label %.loopexit, !llvm.loop !742

.loopexit:                                        ; preds = %bb.p, %bb.u, %.preheader89, %.preheader
  %i.eb = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ec, align 8, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !88
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23, !inline_history !683
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ef, %bb.y ], [ %i.ep, %bb.z ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %.loopexit
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.es, align 8, !tbaa !86
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !88
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23, !inline_history !684
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ev, %bb.ae ], [ %i.ff, %bb.af ]
  %i.fg = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fg, label %bb.ag, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fh = add nuw i64 %.05798, 1                  ; 2 uses
  %i.fi = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.fj = load ptr, ptr %i.k, align 8, !tbaa !537
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 104
  %i.fo = icmp ult i64 %i.fh, %i.fn
  br i1 %i.fo, label %bb.d, label %._crit_edge102, !llvm.loop !743

bb.ai:                                            ; preds = %bb.j, %bb.i
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.bd, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn65.pn.pn

bb.aj:                                            ; preds = %._crit_edge102, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124LeastGreatestSortKeyInitINS0_7LeastOpEEENS_10unique_ptrINS_18FunctionLocalStateESt14default_deleteIS4_ELb1EEERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.690") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(481) %2, ptr nofree readnone captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateESt14default_deleteIS2_EED2Ev.exit:
  %4 = alloca %"class.duckdb::unique_ptr.704", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !509
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !511
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  call fastcc void @_ZN6duckdb9make_uniqINS_12_GLOBAL__N_125LeastGreatestSortKeyStateEJmNS_15OrderByNullTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable align 8 %4, i64 %i.h, i8 3)
  %i.i = load ptr, ptr %4, align 8, !tbaa !744
  store ptr %i.i, ptr %0, align 8, !tbaa !746
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

declare void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ENS_12optional_idxE(ptr dead_on_unwind writable sret(%"class.std::unordered_map") align 8, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !519  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !521
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !81
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !82
  %i.o = load i64, ptr %i.i, align 8, !tbaa !84
  store i64 %i.o, ptr %i.g, align 8, !tbaa !84
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !78
  store ptr %i.i, ptr %i.f, align 8, !tbaa !82
  store i64 0, ptr %i.q, align 8, !tbaa !78
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !519
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_9GreaterOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE:bb.a
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !150
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !85 ; 2 uses
  %i.fn = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !13
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i109 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i109, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bo, %bb.bn, %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.fn, ptr %i.fj, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.fv, align 8, !tbaa !86
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !88
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.br:                                            ; preds = %bb.bp
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.bs ], [ %i.gi, %bb.bt ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.bu, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !90

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.bk, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bu
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %12
  br i1 %i.gl, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, label %bb.bv

bb.bv:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.gm = load i8, ptr %12, align 8, !tbaa !149
  store i8 %i.gm, ptr %i.gk, align 8, !tbaa !149
  %i.gn = load i8, ptr %i.bn, align 1, !tbaa !150
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !150
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !85 ; 2 uses
  %i.gt = load <2 x ptr>, ptr %i.gq, align 8, !tbaa !13
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i.i110, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 3 uses
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i111 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i.i.i111, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

bb.by:                                            ; preds = %bb.bw
  %i.gy = atomicrmw volatile add ptr %i.gu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.gt, ptr %i.gp, align 8, !tbaa !13
  %.not.i.i.i.i.i113 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i113, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, label %bb.bz

bb.bz:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.hb, align 8, !tbaa !86
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !88
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !79
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #23, !inline_history !151
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !79
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #23, !inline_history !151
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

bb.cb:                                            ; preds = %bb.bz
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i114 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i.i5.i.i114, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

bb.cd:                                            ; preds = %bb.cb
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i116 = phi i32 [ %i.he, %bb.cc ], [ %i.ho, %bb.cd ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i.i.i116, 1
  br i1 %i.hp, label %bb.ce, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, !prof !90

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

_ZN6duckdb11LogicalTypeaSERKS0_.exit117:          ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115, %bb.ce
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122 unwind label %bb.y

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit117
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hr = load i8, ptr %28, align 8, !tbaa !149
  store i8 %i.hr, ptr %i.hq, align 8, !tbaa !149
  %i.hs = getelementptr inbounds nuw i8, ptr %28, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !150
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !150
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.hx = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !13
  %i.hy = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !13
  store <2 x ptr> %i.hx, ptr %i.hv, align 8, !tbaa !13
  store <2 x ptr> %i.hy, ptr %i.hw, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #23
  store ptr null, ptr %0, align 8, !tbaa !152
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.cf:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.x, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.au, %bb.y ], [ %i.at, %bb.x ], [ %i.bd, %bb.aa ], [ %i.bm, %bb.ac ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %bb.w, %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %.not90 = icmp eq ptr %i.c, %i.d
  br i1 %.not90, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.aj

._crit_edge:                                      ; preds = %.lr.ph, %.preheader78
  %.0.lcssa = phi i8 [ 2, %.preheader78 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not91 = icmp eq ptr %i.l, %i.m
  br i1 %.not91, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader78, %.lr.ph
  %.080 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader78 ]
  %.05579 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader78 ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05579)
  %i.t = load i8, ptr %i.s, align 8, !tbaa !104
  %.not = icmp eq i8 %i.t, 2
  %spec.select = select i1 %.not, i8 %.080, i8 0  ; 2 uses
  %i.u = add nuw i64 %.05579, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.w = load ptr, ptr %0, align 8, !tbaa !537
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 104
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !759

._crit_edge89:                                    ; preds = %bb.ah, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge89
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !381
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ak)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !128
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %bb.e ], [ %i.aj, %bb.d ]
  %i.am = lshr i64 %.01.i, 6
  %i.an = and i64 %.01.i, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !83
  %i.as = and i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %bb.c
  %i.at = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %i.ad
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %bb.c, !llvm.loop !705

_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit: ; preds = %bb.f, %._crit_edge89
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph88, %bb.ah
  %.05785 = phi i64 [ 0, %.lr.ph88 ], [ %i.eg, %bb.ah ] ; 4 uses
  %i.au = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
  %i.av = load i8, ptr %i.au, align 8, !tbaa !104
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %bb.h, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.az, null
  br i1 %.not.i.i64, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !83
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ah

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !128
  %.not.i65 = icmp eq ptr %i.bf, null
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !103 ; 3 uses
  %.not93 = icmp eq i64 %i.bg, 0                  ; 2 uses
  br i1 %.not.i65, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.k
  br i1 %.not93, label %.loopexit, label %.lr.ph82

.preheader:                                       ; preds = %bb.k
  br i1 %.not93, label %.loopexit, label %.lr.ph84

bb.l:                                             ; preds = %bb.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph82:                                         ; preds = %.preheader76, %bb.q
  %i.bj = phi i64 [ %i.cf, %bb.q ], [ %i.bg, %.preheader76 ] ; 2 uses
  %.05681 = phi i64 [ %i.cg, %bb.q ], [ 0, %.preheader76 ] ; 6 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %i.bk = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %.not.i66 = icmp eq ptr %i.bk, null
  br i1 %.not.i66, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph82
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.05681
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.n, %.lr.ph82
  %i.bo = phi i64 [ %i.bn, %bb.n ], [ %.05681, %.lr.ph82 ] ; 3 uses
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %.not.i67 = icmp eq ptr %i.bp, null
  br i1 %.not.i67, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bq = lshr i64 %i.bo, 6
  %i.br = and i64 %i.bo, 63
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !83
  %i.bu = shl nuw i64 1, %i.br
  %i.bv = and i64 %i.bt, %i.bu
  %.not75 = icmp eq i64 %i.bv, 0
  br i1 %.not75, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !84  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05681 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05681
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  %i.cd = icmp sgt i8 %i.bx, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.by, align 1, !tbaa !131
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05681
  store i8 %i.bx, ptr %i.ce, align 1, !tbaa !84
  %.pre.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cf = phi i64 [ %i.bj, %bb.o ], [ %.pre.a, %bb.p ], [ %i.bj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.cg = add nuw i64 %.05681, 1                  ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  br i1 %i.ch, label %.lr.ph82, label %.loopexit, !llvm.loop !760

.lr.ph84:                                         ; preds = %.preheader, %bb.u
  %i.ci = phi i64 [ %i.cx, %bb.u ], [ %i.bg, %.preheader ]
  %.05483 = phi i64 [ %i.cy, %bb.u ], [ 0, %.preheader ] ; 6 uses
  %5 = load ptr, ptr %3, align 8, !tbaa !130
  %i.cj = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %.not.i68 = icmp eq ptr %i.cj, null
  br i1 %.not.i68, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit69, label %bb.r

bb.r:                                             ; preds = %.lr.ph84
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.05483
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = zext i32 %i.cl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit69

_ZNK6duckdb15SelectionVector9get_indexEm.exit69:  ; preds = %bb.r, %.lr.ph84
  %i.cn = phi i64 [ %i.cm, %bb.r ], [ %.05483, %.lr.ph84 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !84  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05483 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !131, !range !133, !noundef !76
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05483
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !84
  %i.cv = icmp sgt i8 %i.cp, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit69
  store i8 1, ptr %i.cq, align 1, !tbaa !131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05483
  store i8 %i.cp, ptr %i.cw, align 1, !tbaa !84
  %.pre95.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = phi i64 [ %.pre95.a, %bb.t ], [ %i.ci, %bb.s ] ; 2 uses
  %i.cy = add nuw i64 %.05483, 1                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  br i1 %i.cz, label %.lr.ph84, label %.loopexit, !llvm.loop !761

.loopexit:                                        ; preds = %bb.q, %bb.u, %.preheader76, %.preheader
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.db, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !88
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !683
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %.loopexit
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dr, align 8, !tbaa !86
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !88
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !79
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !684
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.du, %bb.ae ], [ %i.ee, %bb.af ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ef, label %bb.ag, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.eg = add nuw i64 %.05785, 1                  ; 2 uses
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ei = load ptr, ptr %0, align 8, !tbaa !537
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 104
  %i.en = icmp ult i64 %i.eg, %i.em
  br i1 %i.en, label %bb.g, label %._crit_edge89, !llvm.loop !762

bb.ai:                                            ; preds = %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %i.bi, %bb.m ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIsNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 13 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader77

.preheader77:                                     ; preds = %bb.a
  %.not89 = icmp eq ptr %i.c, %i.d
  br i1 %.not89, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.ax

._crit_edge:                                      ; preds = %.lr.ph, %.preheader77
  %.0.lcssa = phi i8 [ 2, %.preheader77 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not90 = icmp eq ptr %i.l, %i.m
  br i1 %.not90, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader77, %.lr.ph
  %.079 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader77 ]
  %.05578 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader77 ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05578)
  %i.t = load i8, ptr %i.s, align 8, !tbaa !104
  %.not = icmp eq i8 %i.t, 2
  %spec.select = select i1 %.not, i8 %.079, i8 0  ; 2 uses
  %i.u = add nuw i64 %.05578, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.w = load ptr, ptr %0, align 8, !tbaa !537
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 104
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !763

._crit_edge88:                                    ; preds = %bb.av, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge88
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.an

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.pre99 = load i64, ptr %i.p, align 8, !tbaa !103
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cj = phi i64 [ %.pre99, %bb.s ], [ %i.bl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.ck = add nuw i64 %.05683, 1                  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  br i1 %i.cl, label %.lr.ph85, label %.loopexit, !llvm.loop !780

.lr.ph87:                                         ; preds = %.preheader, %bb.z
  %.05486 = phi i64 [ %i.dc, %bb.z ], [ 0, %.preheader ] ; 6 uses
  %i.cm = load ptr, ptr %3, align 8, !tbaa !130
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !127 ; 2 uses
  %.not.i73 = icmp eq ptr %i.cn, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.u

bb.u:                                             ; preds = %.lr.ph87
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05486
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.u, %.lr.ph87
  %i.cr = phi i64 [ %i.cq, %bb.u ], [ %.05486, %.lr.ph87 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !155 ; 2 uses
  store double %i.ct, ptr %i.c, align 8, !tbaa !155
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05486 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !131, !range !133, !noundef !76
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05486
  %i.cy = invoke noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %i.cy, label %._crit_edge100, label %bb.z

._crit_edge100:                                   ; preds = %bb.w
  %.pre101 = load double, ptr %i.c, align 8, !tbaa !155
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge100, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.cz = phi double [ %.pre101, %._crit_edge100 ], [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74 ]
  store i8 1, ptr %i.cu, align 1, !tbaa !131
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05486
  store double %i.cz, ptr %i.da, align 8, !tbaa !155
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.an

bb.z:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.dc = add nuw i64 %.05486, 1                  ; 2 uses
  %i.dd = load i64, ptr %i.p, align 8, !tbaa !103
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph87, label %.loopexit, !llvm.loop !781

.loopexit:                                        ; preds = %bb.t, %bb.z, %.preheader78, %.preheader
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dg, align 8, !tbaa !86
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !88
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !683
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.ad ], [ %i.dt, %bb.ae ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.du, label %bb.af, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ab, %.loopexit
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dw, align 8, !tbaa !86
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !88
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23, !inline_history !684
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ak:                                            ; preds = %bb.ai
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dz, %bb.aj ], [ %i.ej, %bb.ak ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ek, label %bb.al, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.el = add nuw i64 %.05788, 1                  ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !536
  %i.en = load ptr, ptr %0, align 8, !tbaa !537
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 104
  %i.es = icmp ult i64 %i.el, %i.er
  br i1 %i.es, label %bb.g, label %._crit_edge92, !llvm.loop !782

bb.an:                                            ; preds = %bb.m, %bb.r, %bb.y, %bb.l
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.db, %bb.y ], [ %i.bk, %bb.m ], [ %i.ci, %bb.r ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn65.pn.pn

bb.ao:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader94

.preheader94:                                     ; preds = %bb.a
  %.not107 = icmp eq ptr %i.c, %i.d
  br i1 %.not107, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.am

._crit_edge:                                      ; preds = %.lr.ph, %.preheader94
  %.0.lcssa = phi i8 [ 2, %.preheader94 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not108 = icmp eq ptr %i.l, %i.m
  br i1 %.not108, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader94, %.lr.ph
  %.096 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader94 ]
  %.05895 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader94 ] ; 3 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05895)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !104
  %.not = icmp eq i8 %i.x, 2
  %spec.select = select i1 %.not, i8 %.096, i8 0  ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05895)
  tail call void @_ZN6duckdb12StringVector16AddHeapReferenceERNS_6VectorES2_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = add nuw i64 %.05895, 1                   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ab = load ptr, ptr %0, align 8, !tbaa !537
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 104
  %i.ag = icmp ult i64 %i.z, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !783

._crit_edge106:                                   ; preds = %bb.ak, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge106
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %bb.f ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !131, !range !133, !noundef !76
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !381
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.ap)
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !128
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.aq = phi ptr [ %.pre.i.i, %bb.e ], [ %i.ao, %bb.d ]
  %i.ar = lshr i64 %.01.i, 6
  %i.as = and i64 %.01.i, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !83
  %i.ax = and i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %bb.c
  %i.ay = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.ai
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %bb.c, !llvm.loop !732

_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit: ; preds = %bb.f, %._crit_edge106
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.am

bb.g:                                             ; preds = %.lr.ph105, %bb.ak
  %.060102 = phi i64 [ 0, %.lr.ph105 ], [ %i.fr, %bb.ak ] ; 4 uses
  %i.az = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !104
  %i.bb = icmp eq i8 %i.ba, 2
  br i1 %i.bb, label %bb.h, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bc = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.be, null
  br i1 %.not.i.i72, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.h
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !83
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ak

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.060102)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bh, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !128
  %.not.i73 = icmp eq ptr %i.bk, null
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !103 ; 4 uses
  %.not110 = icmp eq i64 %i.bl, 0                 ; 2 uses
  br i1 %.not.i73, label %.preheader, label %.preheader92

.preheader92:                                     ; preds = %bb.k
  br i1 %.not110, label %.loopexit, label %.lr.ph99

.preheader:                                       ; preds = %bb.k
  br i1 %.not110, label %.loopexit, label %.lr.ph101

bb.l:                                             ; preds = %bb.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.m:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph99:                                         ; preds = %.preheader92, %bb.s
  %.pre113.a = phi i64 [ %.pre114.a, %bb.s ], [ %i.bl, %.preheader92 ] ; 3 uses
  %i.bo = phi i64 [ %i.da, %bb.s ], [ %i.bl, %.preheader92 ]
  %.05997 = phi i64 [ %i.db, %bb.s ], [ 0, %.preheader92 ] ; 6 uses
  %6 = load ptr, ptr %3, align 8, !tbaa !130
  %i.bp = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %.not.i74 = icmp eq ptr %i.bp, null
  br i1 %.not.i74, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph99
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05997
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.n, %.lr.ph99
  %i.bt = phi i64 [ %i.bs, %bb.n ], [ %.05997, %.lr.ph99 ] ; 3 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %.not.i75 = icmp eq ptr %i.bu, null
  br i1 %.not.i75, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bv = lshr i64 %i.bt, 6
  %i.bw = and i64 %i.bt, 63
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !83
  %i.bz = shl nuw i64 1, %i.bw
  %i.ca = and i64 %i.by, %i.bz
  %.not91 = icmp eq i64 %i.ca, 0
  br i1 %.not91, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !95
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05997 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.o, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.05997 ; 3 uses
  %.0.copyload.i.i.i.i = load i32, ptr %i.q, align 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i = load i32, ptr %i.cg, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i, %.0.copyload.i11.i.i.i
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i)
  %i.ci = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i)
  %i.cj = icmp ugt i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ck = load i32, ptr %i.cf, align 8, !tbaa !84 ; 3 uses
  %i.cl = load i32, ptr %4, align 8, !tbaa !84    ; 3 uses
  %i.cm = icmp ult i32 %i.ck, %i.cl
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.cl)
  %i.cn = icmp ult i32 %i.cl, 13
  %i.co = load ptr, ptr %i.r, align 8
  %i.cp = select i1 %i.cn, ptr %i.q, ptr %i.co
  %i.cq = icmp ult i32 %i.ck, 13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = select i1 %i.cq, ptr %i.cg, ptr %i.cs
  %i.cu = zext i32 %.sroa.speculated.i.i.i to i64
  %i.cv = call i32 @memcmp(ptr noundef %i.cp, ptr noundef %i.ct, i64 noundef %i.cu) #28 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = icmp eq i32 %i.cv, 0
  %i.cy = and i1 %i.cm, %i.cx
  %or.cond = or i1 %i.cw, %i.cy
  br i1 %or.cond, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.r

_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread: ; preds = %bb.q, %bb.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.cc, align 1, !tbaa !131
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.05997
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  %.pre.pre = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread
  %.pre.a = phi i64 [ %.pre113.a, %bb.q ], [ %.pre113.a, %bb.p ], [ %.pre.pre, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre114.a = phi i64 [ %.pre.a, %bb.r ], [ %.pre113.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.da = phi i64 [ %.pre.a, %bb.r ], [ %i.bo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.db = add nuw i64 %.05997, 1                  ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  br i1 %i.dc, label %.lr.ph99, label %.loopexit, !llvm.loop !784

.lr.ph101:                                        ; preds = %.preheader, %bb.x
  %i.dd = phi i64 [ %i.ei, %bb.x ], [ %i.bl, %.preheader ] ; 2 uses
  %.057100 = phi i64 [ %i.ej, %bb.x ], [ 0, %.preheader ] ; 6 uses
  %7 = load ptr, ptr %3, align 8, !tbaa !130
  %i.de = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %.not.i76 = icmp eq ptr %i.de, null
  br i1 %.not.i76, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit77, label %bb.t

bb.t:                                             ; preds = %.lr.ph101
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.057100
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit77

_ZNK6duckdb15SelectionVector9get_indexEm.exit77:  ; preds = %bb.t, %.lr.ph101
  %i.di = phi i64 [ %i.dh, %bb.t ], [ %.057100, %.lr.ph101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.di ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !95
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.057100 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !131, !range !133, !noundef !76
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.u, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit77
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.057100 ; 3 uses
  %.0.copyload.i.i.i.i78 = load i32, ptr %i.s, align 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i79 = load i32, ptr %i.do, align 1 ; 2 uses
  %.not.i.i.i80 = icmp eq i32 %.0.copyload.i.i.i.i78, %.0.copyload.i11.i.i.i79
  br i1 %.not.i.i.i80, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i78)
  %i.dq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i79)
  %i.dr = icmp ugt i32 %i.dp, %i.dq
  br i1 %i.dr, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ds = load i32, ptr %i.dn, align 8, !tbaa !84 ; 3 uses
  %i.dt = load i32, ptr %5, align 8, !tbaa !84    ; 3 uses
  %i.du = icmp ult i32 %i.ds, %i.dt
  %.sroa.speculated.i.i.i82 = call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.dt)
  %i.dv = icmp ult i32 %i.dt, 13
  %i.dw = load ptr, ptr %i.t, align 8
  %i.dx = select i1 %i.dv, ptr %i.s, ptr %i.dw
  %i.dy = icmp ult i32 %i.ds, 13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = select i1 %i.dy, ptr %i.do, ptr %i.ea
  %i.ec = zext i32 %.sroa.speculated.i.i.i82 to i64
  %i.ed = call i32 @memcmp(ptr noundef %i.dx, ptr noundef %i.eb, i64 noundef %i.ec) #28 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = and i1 %i.du, %i.ef
  %or.cond90 = or i1 %i.ee, %i.eg
  br i1 %or.cond90, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread, label %bb.x

_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread: ; preds = %bb.w, %bb.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit77
  store i8 1, ptr %i.dk, align 1, !tbaa !131
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.057100
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  %.pre112.a = load i64, ptr %i.n, align 8, !tbaa !103
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread
  %i.ei = phi i64 [ %i.dd, %bb.w ], [ %i.dd, %bb.v ], [ %.pre112.a, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit83.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ej = add nuw i64 %.057100, 1                 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph101, label %.loopexit, !llvm.loop !785

.loopexit:                                        ; preds = %bb.s, %bb.x, %.preheader92, %.preheader
  %i.el = load ptr, ptr %i.u, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.em, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !88
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !683
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !79
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.ab ], [ %i.ez, %bb.ac ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %.loopexit
  %i.fb = load ptr, ptr %i.v, align 8, !tbaa !85  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.fc, align 8, !tbaa !86
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !88
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23, !inline_history !684
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ff, %bb.ah ], [ %i.fp, %bb.ai ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fq, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fr = add nuw i64 %.060102, 1                 ; 2 uses
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.ft = load ptr, ptr %0, align 8, !tbaa !537
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 104
  %i.fy = icmp ult i64 %i.fr, %i.fx
  br i1 %i.fy, label %bb.g, label %._crit_edge106, !llvm.loop !786

bb.al:                                            ; preds = %bb.m, %bb.l
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bn, %bb.m ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn68.pn.pn

bb.am:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb1EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.699", align 8 ; 5 uses
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.d = load ptr, ptr %0, align 8, !tbaa !537
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !736
  %i.k = tail call fastcc noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb12_GLOBAL__N_120SortKeyLeastGreatest7PrepareERNS_9DataChunkERNS_15ExpressionStateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %.val) ; 10 uses
  %.val69 = load ptr, ptr %i.j, align 8, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.val69, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.l = load ptr, ptr %3, align 8, !tbaa !738    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !537
  %.not103 = icmp eq ptr %i.o, %i.p
  br i1 %.not103, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i8 [ 2, %bb.c ], [ %spec.select, %.lr.ph ]
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !537
  %.not104 = icmp eq ptr %i.s, %i.t
  br i1 %.not104, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.092 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %bb.c ]
  %.05591 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05591)
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !104
  %.not = icmp eq i8 %i.ae, 2
  %spec.select = select i1 %.not, i8 %.092, i8 0  ; 2 uses
  %i.af = add nuw i64 %.05591, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !537
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 104
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !787

._crit_edge102:                                   ; preds = %bb.ah, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !103
  %.val70 = load ptr, ptr %i.j, align 8, !tbaa !736
  call fastcc void @_ZN6duckdb12_GLOBAL__N_120SortKeyLeastGreatest14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE(i64 noundef %i.ao, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr %.val70)
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.d:                                             ; preds = %.lr.ph101, %bb.ah
  %.05798 = phi i64 [ 0, %.lr.ph101 ], [ %i.fh, %bb.ah ] ; 4 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !104
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.as = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.e
  %i.av = load i64, ptr %i.au, align 8, !tbaa !83
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ah

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.e, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  %i.ax = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.05798)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.ay = load i64, ptr %i.u, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !129 ; 2 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.ba, null
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !103 ; 4 uses
  %.not106 = icmp eq i64 %i.bb, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader89

.preheader89:                                     ; preds = %bb.h
  br i1 %.not106, label %.loopexit, label %.lr.ph95

.preheader:                                       ; preds = %bb.h
  br i1 %.not106, label %.loopexit, label %.lr.ph97

bb.i:                                             ; preds = %bb.f, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.j:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph95:                                         ; preds = %.preheader89, %bb.p
  %.pre109.a = phi i64 [ %.pre110.a, %bb.p ], [ %i.bb, %.preheader89 ] ; 3 uses
  %i.be = phi i64 [ %i.cq, %bb.p ], [ %i.bb, %.preheader89 ]
  %.05693 = phi i64 [ %i.cr, %bb.p ], [ 0, %.preheader89 ] ; 6 uses
  %7 = load ptr, ptr %4, align 8, !tbaa !130
  %i.bf = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %.not.i71 = icmp eq ptr %i.bf, null
  br i1 %.not.i71, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph95
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.05693
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.k, %.lr.ph95
  %i.bj = phi i64 [ %i.bi, %bb.k ], [ %.05693, %.lr.ph95 ] ; 3 uses
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !128 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bk, null
  br i1 %.not.i72, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bl = lshr i64 %i.bj, 6
  %i.bm = and i64 %i.bj, 63
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !83
  %i.bp = shl nuw i64 1, %i.bm
  %i.bq = and i64 %i.bo, %i.bp
  %.not88 = icmp eq i64 %i.bq, 0
  br i1 %.not88, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05693 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !131, !range !133, !noundef !76
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05693 ; 3 uses
  %.0.copyload.i.i.i.i = load i32, ptr %i.x, align 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i = load i32, ptr %i.bw, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i, %.0.copyload.i11.i.i.i
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i)
  %i.by = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i)
  %i.bz = icmp ugt i32 %i.bx, %i.by
  br i1 %i.bz, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ca = load i32, ptr %i.bv, align 8, !tbaa !84 ; 3 uses
  %i.cb = load i32, ptr %5, align 8, !tbaa !84    ; 3 uses
  %i.cc = icmp ult i32 %i.ca, %i.cb
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.ca, i32 %i.cb)
  %i.cd = icmp ult i32 %i.cb, 13
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = select i1 %i.cd, ptr %i.x, ptr %i.ce
  %i.cg = icmp ult i32 %i.ca, 13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = select i1 %i.cg, ptr %i.bw, ptr %i.ci
  %i.ck = zext i32 %.sroa.speculated.i.i.i to i64
  %i.cl = call i32 @memcmp(ptr noundef %i.cf, ptr noundef %i.cj, i64 noundef %i.ck) #28 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = and i1 %i.cc, %i.cn
  %or.cond = or i1 %i.cm, %i.co
  br i1 %or.cond, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread, label %bb.o

_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread: ; preds = %bb.n, %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.bs, align 1, !tbaa !131
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05693
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %.pre.pre = load i64, ptr %i.u, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread
  %.pre.a = phi i64 [ %.pre109.a, %bb.n ], [ %.pre109.a, %bb.m ], [ %.pre.pre, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre110.a = phi i64 [ %.pre.a, %bb.o ], [ %.pre109.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.cq = phi i64 [ %.pre.a, %bb.o ], [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.cr = add nuw i64 %.05693, 1                  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph95, label %.loopexit, !llvm.loop !788

.lr.ph97:                                         ; preds = %.preheader, %bb.u
  %i.ct = phi i64 [ %i.dy, %bb.u ], [ %i.bb, %.preheader ] ; 2 uses
  %.05496 = phi i64 [ %i.dz, %bb.u ], [ 0, %.preheader ] ; 6 uses
  %8 = load ptr, ptr %4, align 8, !tbaa !130
  %i.cu = load ptr, ptr %8, align 8, !tbaa !127   ; 2 uses
  %.not.i73 = icmp eq ptr %i.cu, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.q

bb.q:                                             ; preds = %.lr.ph97
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.05496
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.q, %.lr.ph97
  %i.cy = phi i64 [ %i.cx, %bb.q ], [ %.05496, %.lr.ph97 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.cy ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !95
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05496 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !131, !range !133, !noundef !76
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.r, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05496 ; 3 uses
  %.0.copyload.i.i.i.i75 = load i32, ptr %i.z, align 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i76 = load i32, ptr %i.de, align 1 ; 2 uses
  %.not.i.i.i77 = icmp eq i32 %.0.copyload.i.i.i.i75, %.0.copyload.i11.i.i.i76
  br i1 %.not.i.i.i77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i75)
  %i.dg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i76)
  %i.dh = icmp ugt i32 %i.df, %i.dg
  br i1 %i.dh, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !84 ; 3 uses
  %i.dj = load i32, ptr %6, align 8, !tbaa !84    ; 3 uses
  %i.dk = icmp ult i32 %i.di, %i.dj
  %.sroa.speculated.i.i.i79 = call i32 @llvm.umin.i32(i32 %i.di, i32 %i.dj)
  %i.dl = icmp ult i32 %i.dj, 13
  %i.dm = load ptr, ptr %i.aa, align 8
  %i.dn = select i1 %i.dl, ptr %i.z, ptr %i.dm
  %i.do = icmp ult i32 %i.di, 13
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = select i1 %i.do, ptr %i.de, ptr %i.dq
  %i.ds = zext i32 %.sroa.speculated.i.i.i79 to i64
  %i.dt = call i32 @memcmp(ptr noundef %i.dn, ptr noundef %i.dr, i64 noundef %i.ds) #28 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = and i1 %i.dk, %i.dv
  %or.cond87 = or i1 %i.du, %i.dw
  br i1 %or.cond87, label %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread, label %bb.u

_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread: ; preds = %bb.t, %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  store i8 1, ptr %i.da, align 1, !tbaa !131
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05496
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false)
  %.pre108.a = load i64, ptr %i.u, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread
  %i.dy = phi i64 [ %i.ct, %bb.t ], [ %i.ct, %bb.s ], [ %.pre108.a, %_ZN6duckdb11GreaterThan9OperationINS_8string_tEEEbRKT_S5_.exit80.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dz = add nuw i64 %.05496, 1                  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph97, label %.loopexit, !llvm.loop !789

.loopexit:                                        ; preds = %bb.p, %bb.u, %.preheader89, %.preheader
  %i.eb = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ec, align 8, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !88
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23, !inline_history !683
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23, !inline_history !683
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ef, %bb.y ], [ %i.ep, %bb.z ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.aa, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !90

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %.loopexit
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.es, align 8, !tbaa !86
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !88
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23, !inline_history !684
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23, !inline_history !684
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ev, %bb.ae ], [ %i.ff, %bb.af ]
  %i.fg = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fg, label %bb.ag, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !90

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fh = add nuw i64 %.05798, 1                  ; 2 uses
  %i.fi = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.fj = load ptr, ptr %i.k, align 8, !tbaa !537
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 104
  %i.fo = icmp ult i64 %i.fh, %i.fn
  br i1 %i.fo, label %bb.d, label %._crit_edge102, !llvm.loop !790

bb.ai:                                            ; preds = %bb.j, %bb.i
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.bd, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn65.pn.pn

bb.aj:                                            ; preds = %._crit_edge102, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124LeastGreatestSortKeyInitINS0_9GreaterOpEEENS_10unique_ptrINS_18FunctionLocalStateESt14default_deleteIS4_ELb1EEERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.690") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(481) %2, ptr nofree readnone captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateESt14default_deleteIS2_EED2Ev.exit:
  %4 = alloca %"class.duckdb::unique_ptr.704", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !509
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !511
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  call fastcc void @_ZN6duckdb9make_uniqINS_12_GLOBAL__N_125LeastGreatestSortKeyStateEJmNS_15OrderByNullTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable align 8 %4, i64 %i.h, i8 2)
  %i.i = load ptr, ptr %4, align 8, !tbaa !744
  store ptr %i.i, ptr %0, align 8, !tbaa !746
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(read) }

end_hunk_3
