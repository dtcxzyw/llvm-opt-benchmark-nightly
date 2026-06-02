inline.NumInlined: 40819
inline.NumDeleted: 11673
begin_hunk_0_@_ZN6duckdb8DBConfig9CheckLockERKNS_6StringE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_24LockConfigurationSettingENS_8DBConfigEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(1360) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  %i.a = invoke noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_8DBConfigEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1360) %0, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.a, true
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !262
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.h = icmp eq ptr @.str.81, @.str.88
  br label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit

_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit:        ; preds = %bb.g, %bb.d
  %.04 = phi i1 [ %i.e, %bb.d ], [ %i.h, %bb.g ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.04

bb.h:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRKNS_6StringEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.2257", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1903
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_6StringEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !101, !noalias !1903 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !noalias !1903 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #40
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !101, !noalias !1903
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNS_6StringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #40
  br label %_ZN6duckdb9Exception16ConstructMessageIJNS_6StringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1903
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNS_6StringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1903
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_6StringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_6StringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1880 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !234 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #40
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1601

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !1877
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1878
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !1877   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #40
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 1, 0) i64 @_ZN6duckdb8DBConfig19GetSystemMaxThreadsERNS_10FileSystemE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  %i.b = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.405) #28 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #44 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  store i32 %i.f, ptr %.sroa.0, align 8, !tbaa !93
  %i.g = icmp ult i32 %i.f, 13
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.0.4..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx29, i8 0, i64 12, i1 false)
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %_ZN6duckdb8string_tC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.e, 15
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr nonnull align 1 %i.d, i64 %i.i, i1 false)
  %.sroa.0.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx.a, align 8
  br label %_ZN6duckdb8string_tC2EPKc.exit

bb.e:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.d, align 1
  %.sroa.0.4..sroa_idx28.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.j, ptr %.sroa.0.4..sroa_idx28.a, align 4
  br label %_ZN6duckdb8string_tC2EPKc.exit

_ZN6duckdb8string_tC2EPKc.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ null, %bb.c ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.d ], [ %i.d, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8
  %i.k = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b(i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %.sroa.0.8..sroa.0.8..sroa.0.8., ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.k, label %bb.f, label %.thread20

.thread20:                                        ; preds = %_ZN6duckdb8string_tC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.thread

bb.f:                                             ; preds = %_ZN6duckdb8string_tC2EPKc.exit
  %i.l = load i64, ptr %i.a, align 8, !tbaa !67
  %i.m = call noundef i64 @llvm.umax.i64(i64 %i.l, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.g

.thread:                                          ; preds = %bb.a, %.thread20
  %i.n = call noundef i64 @_ZN6duckdb7CGroups11GetCPULimitERNS_10FileSystemEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c)
  %i.o = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.3 = phi i64 [ %i.o, %.thread ], [ %i.m, %bb.f ]
  ret i64 %.3
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #26

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b(i64, ptr, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb7CGroups11GetCPULimitERNS_10FileSystemEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb8DBConfig21ParseMemoryLimitSlurmERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.duckdb::optional_idx", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96   ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !95
  %i.j = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.g, ptr %i.d, align 8, !tbaa !67
  %i.k = icmp ugt i64 %i.g, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !62
  %i.m = load i64, ptr %i.d, align 8, !tbaa !67
  store i64 %i.m, ptr %i.i, align 8, !tbaa !93
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i64 %i.g, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.j, align 1, !tbaa !93
  store i8 %i.n, ptr %i.i, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.l, %._crit_edge.i.i.thread ], [ %i.i, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !96
  %i.r = load ptr, ptr %2, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.t = load i64, ptr %i.f, align 8, !tbaa !96   ; 8 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !62     ; 7 uses
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !93
  switch i8 %i.x, label %bb.al [
    i8 75, label %bb.e
    i8 107, label %bb.e
    i8 77, label %bb.o
    i8 109, label %bb.o
    i8 71, label %bb.y
    i8 103, label %bb.y
    i8 84, label %bb.ai
    i8 116, label %bb.ai
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.y = add i64 %i.t, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !95, !alias.scope !1906
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.t) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !1906
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !67, !noalias !1906
  %i.aa = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aa, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.e
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.ab, ptr %3, align 8, !tbaa !62, !alias.scope !1906
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1906
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !93, !alias.scope !1906
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.ad = phi ptr [ %i.ab, %.noexc ], [ %i.z, %bb.e ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.u, align 1, !tbaa !93
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !93
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.u, i64 %spec.select.i.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.af = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1906 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !96, !alias.scope !1906
  %i.ah = load ptr, ptr %3, align 8, !tbaa !62, !alias.scope !1906
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !1906
  %i.aj = load ptr, ptr %2, align 8, !tbaa !62    ; 6 uses
  %i.ak = icmp eq ptr %i.aj, %i.i
  %i.al = load ptr, ptr %3, align 8, !tbaa !62    ; 5 uses
  %i.am = icmp eq ptr %i.al, %i.z                 ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.am, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !96 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !93
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  store i64 %i.aq, ptr %i.q, align 8, !tbaa !96
  %i.ar = load ptr, ptr %2, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !93
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.al, ptr %2, align 8, !tbaa !62
end_hunk_0
