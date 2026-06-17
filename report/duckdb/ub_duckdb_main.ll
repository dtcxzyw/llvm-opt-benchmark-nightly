inline.NumInlined: 40819
inline.NumDeleted: 11673
begin_hunk_0_@_ZN6duckdb13ClientContext5QueryENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_15QueryParametersE:bb.a
  br label %_ZN6duckdb18PendingQueryResult7ExecuteEv.exit

bb.s:                                             ; preds = %bb.q, %.noexc20
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1479
  br label %.body

_ZN6duckdb18PendingQueryResult7ExecuteEv.exit:    ; preds = %bb.r, %_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1479
  br label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb18PendingQueryResult7ExecuteEv.exit, %_ZN6duckdb9ErrorDataD2Ev.exit
  %i.bf = load ptr, ptr %5, align 8, !tbaa !1247  ; 3 uses
  %.not.i21 = icmp eq ptr %i.bf, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i: ; preds = %bb.t
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(353) %i.bf) #28, !inline_history !1249
  br label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

.body:                                            ; preds = %bb.k, %bb.s, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.au, %bb.k ], [ %i.be, %bb.s ] ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !1247  ; 2 uses
  %.not.i22 = icmp eq ptr %i.bj, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16.sink.split

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16.sink.split: ; preds = %.body, %bb.j
  %.sink41 = phi ptr [ %i.at, %bb.j ], [ %i.bj, %.body ] ; 2 uses
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn.pn, %.body ]
  %i.bk = load ptr, ptr %.sink41, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(120) %.sink41) #28
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16.sink.split, %.body, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.as, %bb.j ], [ %.pn.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit16.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ClientContext12PendingQueryENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_15QueryParametersE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1509") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef captures(none) %2, i16 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unordered_map.1430", align 8 ; 13 uses
  %5 = alloca %"class.duckdb::unique_ptr.160", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !1205
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1206
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load i64, ptr %2, align 8, !tbaa !225
  store i64 %i.f, ptr %5, align 8, !tbaa !225
  store ptr null, ptr %2, align 8, !tbaa !225
  invoke void @_ZN6duckdb13ClientContext12PendingQueryENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSC_SD_EEENS_15QueryParametersE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1509") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(56) %4, i16 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !225    ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.g) #28, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1203 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.l, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.k, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %i.l = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !234 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 104
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #28
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(88) %i.n) #28
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.p) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #40
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1204

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !1205
  %i.t = load i64, ptr %i.b, align 8, !tbaa !1206
  %i.u = shl i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %4, align 8, !tbaa !1205   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.v) #40
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %5, align 8, !tbaa !225    ; 3 uses
  %.not.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.y) #28, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18PendingQueryResult7ExecuteEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1388") align 8 %0, ptr noundef nonnull align 8 dereferenceable(353) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1026", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6duckdb18PendingQueryResult11LockContextEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1026") align 8 %2, ptr noundef nonnull align 8 dereferenceable(353) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_17ClientContextLockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18PendingQueryResult15ExecuteInternalERNS_17ClientContextLockE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1388") align 8 %0, ptr noundef nonnull align 8 dereferenceable(353) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %2, align 8, !tbaa !309    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i: ; preds = %bb.c
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !311, !nonnull !51, !align !52
  %i.d = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #28 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.b) #40
  br label %_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ClientContext5QueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15QueryParametersE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1388") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i16 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.1026", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::vector.169", align 16 ; 16 uses
  %6 = alloca %"class.duckdb::vector.169", align 16 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.1556", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::ErrorData", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::StatementProperties", align 8 ; 22 uses
  %10 = alloca %"class.duckdb::vector.88", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  %12 = alloca %"class.duckdb::unique_ptr.1556", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %13 = alloca %"struct.duckdb::ClientProperties", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::optional_ptr.1583", align 8 ; 11 uses
  %15 = alloca %"struct.duckdb::PendingQueryParameters", align 8 ; 6 uses
  %16 = alloca %"class.duckdb::unique_ptr.1509", align 8 ; 10 uses
  %17 = alloca %"class.duckdb::unique_ptr.160", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.1556", align 8 ; 7 uses
  %19 = alloca %"class.duckdb::ErrorData", align 8 ; 14 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.duckdb::unique_ptr.1388", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41, !noalias !1488 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !307, !noalias !1488
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #28, !noalias !1488 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb13ClientContext11LockContextEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.d) #43
          to label %.noexc.i.i unwind label %bb.c, !noalias !1488

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.merged, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #40, !noalias !1488
  br label %common.resume

_ZN6duckdb13ClientContext11LockContextEv.exit:    ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !309, !alias.scope !1488
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_17ClientContextLockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZN6duckdb13ClientContext11LockContextEv.exit
  invoke void @_ZN6duckdb13ClientContext15CleanupInternalERNS_17ClientContextLockEPNS_15BaseQueryResultEb(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull readnone align 8 dereferenceable(8) %i.f, ptr noundef null, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store atomic i8 0, ptr %i.g seq_cst, align 8, !noalias !1489
  invoke void @_ZN6duckdb13ClientContext23ParseStatementsInternalERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.169") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.h = load ptr, ptr %5, align 16, !tbaa !156   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load <2 x ptr>, ptr %6, align 16, !tbaa !1268
  store <2 x ptr> %i.l, ptr %5, align 16, !tbaa !1268
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !1269
  store ptr %i.n, ptr %i.k, align 16, !tbaa !1269
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.h, %_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.o) #28, !inline_history !1492
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !230

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.h) #40
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.t = load ptr, ptr %5, align 16, !tbaa !1268
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1268
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.m, label %.lr.ph

bb.f:                                             ; preds = %.noexc, %bb.d, %_ZN6duckdb13ClientContext11LockContextEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.x = extractvalue { ptr, i32 } %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.y = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123

bb.g:                                             ; preds = %bb.f
  %i.aa = extractvalue { ptr, i32 } %i.w, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb13ClientContext11ErrorResultINS_23MaterializedQueryResultEEENS_10unique_ptrIT_St14default_deleteIS4_ELb1EEENS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1556") align 8 %7, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit unwind label %bb.j

_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h
  %i.ac = load ptr, ptr %7, align 8, !tbaa !1354
  store ptr null, ptr %7, align 8, !tbaa !1354
  store ptr %i.ac, ptr %0, align 8, !tbaa !1074
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126 unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123 unwind label %bb.bl

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123

bb.m:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !1493
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !1494
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !193
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !1495
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 1, ptr %i.an, align 8, !tbaa !1496
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 8, !tbaa !193
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.ar, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 0, ptr %i.as, align 8, !tbaa !1497
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i8 0, ptr %i.at, align 8, !tbaa !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %i.av = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41
          to label %.noexc55 unwind label %bb.u   ; 3 uses

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.p unwind label %bb.o, !noalias !1499

bb.o:                                             ; preds = %.noexc55
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.av) #40, !noalias !1499
  br label %.body

bb.p:                                             ; preds = %.noexc55
  store ptr %i.av, ptr %11, align 8, !tbaa !47, !alias.scope !1499
end_hunk_0
begin_hunk_1_@_ZN6duckdb13ClientContext5QueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15QueryParametersE:bb.a

_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit58: ; preds = %bb.q
  %i.ax = load ptr, ptr %12, align 8, !tbaa !1354
  store ptr null, ptr %12, align 8, !tbaa !1354
  store ptr %i.ax, ptr %0, align 8, !tbaa !1074
  %i.ay = load ptr, ptr %13, align 8, !tbaa !62   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit58
  call void @_ZdlPv(ptr noundef %i.ay) #40
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bb = load ptr, ptr %11, align 8, !tbaa !47   ; 3 uses
  %.not.i59 = icmp eq ptr %i.bb, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.bb) #28
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #40
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.bc = load ptr, ptr %10, align 8, !tbaa !124  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i60 = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i60, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i62 = phi ptr [ %i.bi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bc, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.bf = load ptr, ptr %.05.i.i.i62, align 8, !tbaa !62 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i61
  call void @_ZdlPv(ptr noundef %i.bf) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 32 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.bi, %i.be
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i61, !llvm.loop !128

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i64 = load ptr, ptr %10, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  %i.bj = phi ptr [ %.pr.i64, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bc, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i65 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i65, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !1503 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i ], [ %i.bk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.bl = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !234 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bn) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #40
  %.not.i.i.i.i.i66 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1504

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !1495
  %i.br = load i64, ptr %i.an, align 8, !tbaa !1496
  %i.bs = shl i64 %i.br, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bs, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !1495 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.am
  br i1 %i.bu, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bt) #40
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %bb.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !1505 ; 2 uses
  %.not5.i.i.i.i1.i = icmp eq ptr %i.bv, null
  br i1 %.not5.i.i.i.i1.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i

.lr.ph.i.i.i.i2.i:                                ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i
  %.06.i.i.i.i3.i = phi ptr [ %i.bw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i ], [ %i.bv, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i ] ; 4 uses
  %i.bw = load ptr, ptr %.06.i.i.i.i3.i, align 8, !tbaa !234 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3.i, i64 24
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i: ; preds = %.lr.ph.i.i.i.i2.i
  call void @_ZdlPv(ptr noundef %i.by) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i3.i) #40
  %.not.i.i.i.i5.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i5.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i, !llvm.loop !1506

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties16ModificationInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.cb = load ptr, ptr %9, align 8, !tbaa !1493
  %i.cc = load i64, ptr %i.ah, align 8, !tbaa !1494
  %i.cd = shl i64 %i.cc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %i.cd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ce = load ptr, ptr %9, align 8, !tbaa !1493  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZN6duckdb19StatementPropertiesD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ce) #40
  br label %_ZN6duckdb19StatementPropertiesD2Ev.exit

_ZN6duckdb19StatementPropertiesD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126

bb.u:                                             ; preds = %bb.n, %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit69

bb.w:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %13, align 8, !tbaa !62   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN6duckdb16ClientPropertiesD2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.cj) #40
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit69

_ZN6duckdb16ClientPropertiesD2Ev.exit69:          ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67, %bb.v
  %.pn50 = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67 ], [ %i.ci, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #28
  br label %.body

.body:                                            ; preds = %bb.u, %bb.o, %_ZN6duckdb16ClientPropertiesD2Ev.exit69
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %_ZN6duckdb16ClientPropertiesD2Ev.exit69 ], [ %i.cg, %bb.u ], [ %i.aw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN6duckdb19StatementPropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store ptr null, ptr %14, align 8, !tbaa !1507
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 24
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.bh
  %.034181 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.bh ] ; 2 uses
  %.035180 = phi i1 [ false, %.lr.ph ], [ %.237156, %bb.bh ] ; 2 uses
  %.sroa.0143.0179 = phi ptr [ null, %.lr.ph ], [ %.sroa.0143.1154, %bb.bh ] ; 9 uses
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.034181)
          to label %bb.y unwind label %bb.aa      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cy = add nuw i64 %.034181, 1                 ; 3 uses
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.da = load ptr, ptr %5, align 16, !tbaa !156
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr null, ptr %15, align 8, !tbaa !1110
  %i.df = icmp eq i64 %i.cy, %i.de
  store i16 %3, ptr %i.cm, align 8
  br i1 %i.df, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.cm, align 8, !tbaa !1239
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ab:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_17ClientContextLockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.di = load i64, ptr %i.cx, align 8, !tbaa !225
  store i64 %i.di, ptr %17, align 8, !tbaa !225
  store ptr null, ptr %i.cx, align 8, !tbaa !225
  invoke void @_ZN6duckdb13ClientContext20PendingQueryInternalERNS_17ClientContextLockENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS4_ELb1EEERKNS_22PendingQueryParametersEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1509") align 8 %16, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(10) %15, i1 noundef zeroext true)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load ptr, ptr %17, align 8, !tbaa !225  ; 3 uses
  %.not.i70 = icmp eq ptr %i.dj, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i: ; preds = %bb.ad
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dj) #28, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18PendingQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 131
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !1509
  %i.dq = icmp eq i8 %i.dp, 0                     ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !1074
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18PendingQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.af unwind label %bb.ap

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !357, !range !262, !noundef !51
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18PendingQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 208
  invoke void @_ZN6duckdb9ErrorDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %19, ptr noundef nonnull align 8 dereferenceable(128) %i.dw)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr %i.cn, ptr %20, align 8, !tbaa !95
  store i64 0, ptr %i.co, align 8, !tbaa !96
  store i8 0, ptr %i.cn, align 8, !tbaa !93
  invoke void @_ZN6duckdb9ErrorData13FinalizeErrorEv(ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %.noexc71 unwind label %bb.ar

.noexc71:                                         ; preds = %bb.ai
  %i.dx = invoke noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_19ErrorsAsJSONSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %.noexc72 unwind label %bb.ar

.noexc72:                                         ; preds = %.noexc71
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc72
  invoke void @_ZN6duckdb9ErrorData18ConvertErrorToJSONEv(ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %_ZNK6duckdb13ClientContext12ProcessErrorERNS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.ar

bb.ak:                                            ; preds = %.noexc72
  invoke void @_ZN6duckdb9ErrorData16AddErrorLocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNK6duckdb13ClientContext12ProcessErrorERNS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.ar

_ZNK6duckdb13ClientContext12ProcessErrorERNS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.ak, %bb.aj
  invoke void @_ZN6duckdb9make_uniqINS_23MaterializedQueryResultEJNS_9ErrorDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1556") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %_ZN6duckdb13ClientContext11ErrorResultINS_23MaterializedQueryResultEEENS_10unique_ptrIT_St14default_deleteIS4_ELb1EEENS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ar

_ZN6duckdb13ClientContext11ErrorResultINS_23MaterializedQueryResultEEENS_10unique_ptrIT_St14default_deleteIS4_ELb1EEENS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNK6duckdb13ClientContext12ProcessErrorERNS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dy = load ptr, ptr %18, align 8, !tbaa !1354
  store ptr null, ptr %18, align 8, !tbaa !1354
  %i.dz = load ptr, ptr %0, align 8, !tbaa !371   ; 3 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !371
  %.not.i.i.i.i.i76 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i76, label %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb13ClientContext11ErrorResultINS_23MaterializedQueryResultEEENS_10unique_ptrIT_St14default_deleteIS4_ELb1EEENS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(392) %i.dz) #28, !inline_history !1510
  %.pr = load ptr, ptr %18, align 8, !tbaa !1354  ; 3 uses
  %.not.i78 = icmp eq ptr %.pr, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80, label %_ZNKSt14default_deleteIN6duckdb23MaterializedQueryResultEEclEPS1_.exit.i79

_ZNKSt14default_deleteIN6duckdb23MaterializedQueryResultEEclEPS1_.exit.i79: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit
  %i.ed = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(553) %.pr) #28, !inline_history !1511
  br label %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80

_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80: ; preds = %_ZN6duckdb13ClientContext11ErrorResultINS_23MaterializedQueryResultEEENS_10unique_ptrIT_St14default_deleteIS4_ELb1EEENS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb23MaterializedQueryResultEEclEPS1_.exit.i79
  %i.eg = load ptr, ptr %20, align 8, !tbaa !62   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80
  call void @_ZdlPv(ptr noundef %i.eg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.ei = load ptr, ptr %i.cq, align 8, !tbaa !797 ; 2 uses
  %.not5.i.i.i.i.i81 = icmp eq ptr %i.ei, null
  br i1 %.not5.i.i.i.i.i81, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i82

.lr.ph.i.i.i.i.i82:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i83 = phi ptr [ %i.ej, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.ej = load ptr, ptr %.06.i.i.i.i.i83, align 8, !tbaa !234 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i83, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i83, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !62 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i83, i64 56
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i84: ; preds = %.lr.ph.i.i.i.i.i82
  call void @_ZdlPv(ptr noundef %i.em) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i84
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !62 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i83, i64 24
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ep) #40
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i83) #40
  %.not.i.i.i.i.i85 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i85, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i82, !llvm.loop !798

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load ptr, ptr %i.cp, align 8, !tbaa !799
  %i.et = load i64, ptr %i.cr, align 8, !tbaa !800
  %i.eu = shl i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.eu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !799 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.cs
  br i1 %i.ew, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ev) #40
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.al, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ex = load ptr, ptr %i.ct, align 8, !tbaa !62 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cu
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ex) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  %i.ez = load ptr, ptr %i.cv, align 8, !tbaa !62 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cw
  br i1 %i.fa, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ez) #40
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.ax

bb.am:                                            ; preds = %bb.ab
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91

bb.an:                                            ; preds = %bb.ac
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %17, align 8, !tbaa !225  ; 3 uses
  %.not.i89 = icmp eq ptr %i.fd, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i90

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i90: ; preds = %bb.an
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fd) #28, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117

bb.ap:                                            ; preds = %bb.bc, %bb.ax, %bb.ae
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aq:                                            ; preds = %bb.ah, %bb.ag
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZNK6duckdb13ClientContext12ProcessErrorERNS_9ErrorDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.ak, %bb.aj, %.noexc71, %bb.ai
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %20, align 8, !tbaa !62   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.cn
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.fl) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %19) #28
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.aq
  %.pn42 = phi { ptr, i32 } [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.fj, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.bi

bb.at:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_17ClientContextLockESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fo = invoke noundef nonnull align 8 dereferenceable(353) ptr @_ZNK6duckdb10unique_ptrINS_18PendingQueryResultESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb18PendingQueryResult15ExecuteInternalERNS_17ClientContextLockE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1388") align 8 %21, ptr noundef nonnull align 8 dereferenceable(353) %i.fo, ptr noundef nonnull readnone align 8 dereferenceable(8) %i.fn)
          to label %_ZN6duckdb13ClientContext27ExecutePendingQueryInternalERNS_17ClientContextLockERNS_18PendingQueryResultE.exit unwind label %bb.aw

_ZN6duckdb13ClientContext27ExecutePendingQueryInternalERNS_17ClientContextLockERNS_18PendingQueryResultE.exit: ; preds = %bb.av
  %i.fp = load ptr, ptr %21, align 8, !tbaa !371
  store ptr null, ptr %21, align 8, !tbaa !371
  %i.fq = load ptr, ptr %0, align 8, !tbaa !371   ; 3 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !371
  %.not.i.i.i.i.i96 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i96, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit101, label %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit98

_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit98: ; preds = %_ZN6duckdb13ClientContext27ExecutePendingQueryInternalERNS_17ClientContextLockERNS_18PendingQueryResultE.exit
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !7
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(392) %i.fq) #28, !inline_history !1510
  %.pr148 = load ptr, ptr %21, align 8, !tbaa !371 ; 3 uses
  %.not.i99 = icmp eq ptr %.pr148, null
  br i1 %.not.i99, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit101, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i100

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i100: ; preds = %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit98
  %i.fu = load ptr, ptr %.pr148, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(392) %.pr148) #28, !inline_history !373
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit101

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit101: ; preds = %_ZN6duckdb13ClientContext27ExecutePendingQueryInternalERNS_17ClientContextLockERNS_18PendingQueryResultE.exit, %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit98, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.bi

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit101, %_ZN6duckdb9ErrorDataD2Ev.exit
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ay unwind label %bb.ap

bb.ay:                                            ; preds = %bb.ax
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !357, !range !262, !noundef !51
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.az, label %22

bb.az:                                            ; preds = %bb.ay
  %i.gc = load ptr, ptr %14, align 8, !tbaa !1507
  %i.gd = icmp ne ptr %i.gc, null
  %or.cond = select i1 %i.gd, i1 %.035180, i1 false
  br i1 %or.cond, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ge = load ptr, ptr %0, align 8, !tbaa !371   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !371
  %.not.i.i.i.i.i102 = icmp eq ptr %.sroa.0143.0179, null
  br i1 %.not.i.i.i.i.i102, label %.sink.split, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103: ; preds = %bb.ba
  %i.gf = load ptr, ptr %.sroa.0143.0179, align 8, !tbaa !7
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0143.0179) #28, !inline_history !1510
  br label %.sink.split

bb.bb:                                            ; preds = %bb.az
  br i1 %i.dq, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK6duckdb12optional_ptrINS_11QueryResultELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bd unwind label %bb.ap

bb.bd:                                            ; preds = %bb.bc
  %i.gi = load ptr, ptr %14, align 8, !tbaa !1507
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 384 ; 2 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !371
  store ptr null, ptr %0, align 8, !tbaa !371
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !371 ; 3 uses
  store ptr %i.gk, ptr %i.gj, align 8, !tbaa !371
  %.not.i.i.i.i.i106 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i106, label %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit108, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i107

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i107: ; preds = %bb.bd
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(392) %i.gl) #28, !inline_history !1510
  br label %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit108

_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit108: ; preds = %bb.bd, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i107
  invoke void @_ZNK6duckdb12optional_ptrINS_11QueryResultELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit108
  %i.gp = load ptr, ptr %14, align 8, !tbaa !1507
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !371
  br label %.sink.split

bb.bf:                                            ; preds = %_ZN6duckdb10unique_ptrINS_11QueryResultESt14default_deleteIS1_ELb1EEaSEOS4_.exit108
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

22:                                               ; preds = %bb.ay
  store atomic i8 0, ptr %i.g seq_cst, align 8
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a

.sink.split:                                      ; preds = %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103, %bb.ba, %bb.be
  %.sink261 = phi ptr [ %i.gr, %bb.be ], [ %i.ge, %bb.ba ], [ %i.ge, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103 ]
  %.sroa.0143.1.ph.ph = phi ptr [ %.sroa.0143.0179, %bb.be ], [ %i.ge, %bb.ba ], [ %i.ge, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103 ]
  %.237.ph.ph = phi i1 [ true, %bb.be ], [ %i.dq, %bb.ba ], [ %i.dq, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i.i.i.i.i103 ]
  %i.gt = ptrtoint ptr %.sink261 to i64
  store i64 %i.gt, ptr %14, align 8, !tbaa !371
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.bb
  %.sroa.0143.1.ph = phi ptr [ %.sroa.0143.0179, %bb.bb ], [ %.sroa.0143.1.ph.ph, %.sink.split ] ; 2 uses
  %.237.ph = phi i1 [ true, %bb.bb ], [ %.237.ph.ph, %.sink.split ] ; 2 uses
  %.032.ph = phi i32 [ 4, %bb.bb ], [ 0, %.sink.split ] ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !371   ; 3 uses
  %.not.i111 = icmp eq ptr %i.gu, null
  br i1 %.not.i111, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112: ; preds = %bb.bg
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(392) %i.gu) #28, !inline_history !373
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a: ; preds = %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112, %bb.bg, %22
  %.032158 = phi i32 [ 1, %22 ], [ %.032.ph, %bb.bg ], [ %.032.ph, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112 ]
  %.237156 = phi i1 [ %.035180, %22 ], [ %.237.ph, %bb.bg ], [ %.237.ph, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112 ]
  %.sroa.0143.1154 = phi ptr [ %.sroa.0143.0179, %22 ], [ %.sroa.0143.1.ph, %bb.bg ], [ %.sroa.0143.1.ph, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i112 ] ; 5 uses
  %i.gy = load ptr, ptr %16, align 8, !tbaa !1247 ; 3 uses
  %.not.i114.a = icmp eq ptr %i.gy, null
  br i1 %.not.i114.a, label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a, label %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !7
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(353) %i.gy) #28, !inline_history !1249
  br label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a

_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit113.a, %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  switch i32 %.032158, label %23 [
    i32 0, label %bb.bh
    i32 4, label %bb.bh
  ]

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a, %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.hd = load ptr, ptr %5, align 16, !tbaa !156
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = ashr exact i64 %i.hg, 3
  %.not = icmp ult i64 %i.cy, %i.hh
  br i1 %.not, label %bb.x, label %.thread159, !llvm.loop !1512

bb.bi:                                            ; preds = %bb.bf, %bb.aw, %bb.as, %bb.ap
  %.pn44 = phi { ptr, i32 } [ %i.gs, %bb.bf ], [ %i.fi, %bb.ap ], [ %.pn42, %bb.as ], [ %i.fx, %bb.aw ] ; 2 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !371   ; 3 uses
  %.not.i115 = icmp eq ptr %i.hi, null
  br i1 %.not.i115, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i116

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i116: ; preds = %bb.bi
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !7
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(392) %i.hi) #28, !inline_history !373
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117: ; preds = %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i116, %bb.bi, %bb.ao
  %.pn44.pn = phi { ptr, i32 } [ %i.fh, %bb.ao ], [ %.pn44, %bb.bi ], [ %.pn44, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i116 ] ; 2 uses
  %i.hm = load ptr, ptr %16, align 8, !tbaa !1247 ; 3 uses
  %.not.i118 = icmp eq ptr %i.hm, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i119

_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i119: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(353) %i.hm) #28, !inline_history !1249
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i119, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i90, %bb.an, %bb.am
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i90 ], [ %i.fb, %bb.am ], [ %i.fc, %bb.an ], [ %.pn44.pn, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit117 ], [ %.pn44.pn, %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91, %bb.aa
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit91 ], [ %i.dg, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %.not.i121 = icmp eq ptr %.sroa.0143.0179, null
  br i1 %.not.i121, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i122

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i122: ; preds = %bb.bj
  %i.hq = load ptr, ptr %.sroa.0143.0179, align 8, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0143.0179) #28, !inline_history !373
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123

.thread159:                                       ; preds = %bb.bh
  %i.ht = ptrtoint ptr %.sroa.0143.1154 to i64
  store i64 %i.ht, ptr %0, align 8, !tbaa !371
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126

23:                                               ; preds = %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %.not.i124 = icmp eq ptr %.sroa.0143.1154, null
  br i1 %.not.i124, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i125

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i125: ; preds = %23
  %i.hu = load ptr, ptr %.sroa.0143.1154, align 8, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0143.1154) #28, !inline_history !373
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126: ; preds = %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i125, %23, %.thread159, %_ZNSt10unique_ptrIN6duckdb23MaterializedQueryResultESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb19StatementPropertiesD2Ev.exit
  %i.hx = load ptr, ptr %5, align 16, !tbaa !156  ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !153 ; 2 uses
  %.not4.i.i.i127 = icmp eq ptr %i.hx, %i.hz
  br i1 %.not4.i.i.i127, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i136, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132
  %.05.i.i.i129 = phi ptr [ %i.ie, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132 ], [ %i.hx, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126 ] ; 2 uses
  %i.ia = load ptr, ptr %.05.i.i.i129, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i130, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i131

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i128
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ia) #28, !inline_history !245
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i131, %.lr.ph.i.i.i128
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i129, i64 8 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.ie, %i.hz
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, label %.lr.ph.i.i.i128, !llvm.loop !230

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i132
  %.pr.i135 = load ptr, ptr %5, align 16, !tbaa !156
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i136

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i136: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126
  %i.if = phi ptr [ %.pr.i135, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134 ], [ %i.hx, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit126 ] ; 2 uses
  %.not.i.i1.i137 = icmp eq ptr %i.if, null
  br i1 %.not.i.i1.i137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit138, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i136
  call void @_ZdlPv(ptr noundef nonnull %i.if) #40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit138

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit138: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i136, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ig = load ptr, ptr %4, align 8, !tbaa !309   ; 3 uses
  %.not.i139 = icmp eq ptr %i.ig, null
  br i1 %.not.i139, label %_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit138
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !311, !nonnull !51, !align !52
  %i.ii = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ih) #28 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ig) #40
  br label %_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit138, %_ZNKSt14default_deleteIN6duckdb17ClientContextLockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit123: ; preds = %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i122, %bb.bj, %bb.l, %bb.k, %.body, %bb.f
  %.merged = phi { ptr, i32 } [ %.pn50.pn, %.body ], [ %.pn, %bb.k ], [ %i.w, %bb.f ], [ %i.af, %bb.l ], [ %.pn44.pn.pn.pn.pn, %bb.bj ], [ %.pn44.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i122 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZNSt10unique_ptrIN6duckdb17ClientContextLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.bl:                                            ; preds = %bb.k
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ClientContext15ParseStatementsERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.169") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb13ClientContext15CleanupInternalERNS_17ClientContextLockEPNS_15BaseQueryResultEb(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull readnone align 8 dereferenceable(8) %2, ptr noundef null, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store atomic i8 0, ptr %i.a seq_cst, align 8
  tail call void @_ZN6duckdb13ClientContext23ParseStatementsInternalERNS_17ClientContextLockERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.duckdb::vector.169") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_23MaterializedQueryResultEJNS_13StatementTypeERNS_19StatementPropertiesENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEENS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteISF_ELb1EEENS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1556") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::__detail::_AllocNode.3400", align 8 ; 4 uses
  %7 = alloca %"struct.std::__detail::_AllocNode.3399", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::StatementProperties", align 8 ; 20 uses
  %9 = alloca %"class.duckdb::vector.88", align 16 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::ClientProperties", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(560) ptr @_Znwm(i64 noundef 560) #41 ; 3 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !1502
  store ptr null, ptr %8, align 8, !tbaa !1493
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1494
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1494
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1513
  store i64 %i.i, ptr %i.g, align 8, !tbaa !1513
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !1049
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %8, ptr %7, align 8, !tbaa !1515
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties15CatalogIdentityEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSO_NSD_10_AllocNodeISaINSD_10_Hash_nodeISB_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.m, align 8, !tbaa !1495
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1496
  store i64 %i.q, ptr %i.o, align 8, !tbaa !1496
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1517
  store i64 %i.u, ptr %i.s, align 8, !tbaa !1517
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !1049
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.m, ptr %6, align 8, !tbaa !1519
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb19StatementProperties16ModificationInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSO_NSD_10_AllocNodeISaINSD_10_Hash_nodeISB_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(129) %8) #28
  br label %.body

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.z, ptr noundef nonnull align 8 dereferenceable(17) %i.aa, i64 17, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = load <2 x ptr>, ptr %3, align 8, !tbaa !342
  store <2 x ptr> %i.ac, ptr %9, align 16, !tbaa !342
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !323
  store ptr %i.af, ptr %i.ad, align 16, !tbaa !323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ag = load i64, ptr %4, align 8, !tbaa !47
  store i64 %i.ag, ptr %10, align 8, !tbaa !47
  store ptr null, ptr %4, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ah, ptr %11, align 8, !tbaa !95
  %i.ai = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN6duckdb16ClientPropertiesC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.ai, ptr %11, align 8, !tbaa !62
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !93
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !93
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %_ZN6duckdb16ClientPropertiesC2EOS0_.exit

_ZN6duckdb16ClientPropertiesC2EOS0_.exit:         ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !96
  store ptr %i.aj, ptr %5, align 8, !tbaa !62
  store i64 0, ptr %i.ar, align 8, !tbaa !96
  store i8 0, ptr %i.aj, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  invoke void @_ZN6duckdb23MaterializedQueryResultC1ENS_13StatementTypeENS_19StatementPropertiesENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEENS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteISD_ELb1EEENS_16ClientPropertiesE(ptr noundef nonnull align 8 dereferenceable(553) %i.a, i8 noundef zeroext %i.b, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN6duckdb16ClientPropertiesC2EOS0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !1354
  %i.av = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
end_hunk_1
