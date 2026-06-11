inline.NumInlined: 7661
inline.NumDeleted: 2990
begin_hunk_0_@_ZN6duckdb17DependencyManager4ScanERNS_13ClientContextERKSt8functionIFvRNS_12CatalogEntryES5_RKNS_24DependencyDependentFlagsEEE:bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !813  ; 2 uses
  %.not34 = icmp eq ptr %i.s, null
  br i1 %.not34, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN6duckdb16CatalogEntryInfoD2Ev.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !813 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #35
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !815

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit, %._crit_edge
  %i.aa = load ptr, ptr %4, align 8, !tbaa !816
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !817
  %i.ac = shl i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ac, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %4, align 8, !tbaa !816   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb12CatalogEntryEENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ad) #35
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb12CatalogEntryEENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS3_EED2Ev.exit

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb12CatalogEntryEENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS3_EED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb12CatalogEntryEES3_SaIS3_ENSt8__detail9_IdentityENS1_20CatalogEntryEqualityENS1_24CatalogEntryHashFunctionENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit18

bb.i:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !154 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit18 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit18:                 ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph, %_ZN6duckdb16CatalogEntryInfoD2Ev.exit
  %.sroa.024.035 = phi ptr [ %i.s, %.lr.ph ], [ %i.ax, %_ZN6duckdb16CatalogEntryInfoD2Ev.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !818
  invoke void @_ZN6duckdb17DependencyManager19GetLookupPropertiesERKNS_12CatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CatalogEntryInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(240) %i.an)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i64 0, ptr %i.y, align 8
  %i.ao = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.n unwind label %bb.s       ; 5 uses

bb.n:                                             ; preds = %bb.m
  store ptr %0, ptr %i.ao, align 16, !tbaa !692
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !693
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !1068
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.am, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !840
  store ptr %i.ao, ptr %7, align 8, !tbaa !193
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager4ScanERNS0_13ClientContextERKSt8functionIFvRNS0_12CatalogEntryES9_RKNS0_24DependencyDependentFlagsEEEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb15DependencyEntryEEZNS0_17DependencyManager4ScanERNS0_13ClientContextERKSt8functionIFvRNS0_12CatalogEntryES9_RKNS0_24DependencyDependentFlagsEEEE3$_1E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.t, align 8, !tbaa !193
  invoke void @_ZN6duckdb17DependencyManager15ScanSetInternalENS_18CatalogTransactionERKNS_16CatalogEntryInfoEbRKSt8functionIFvRNS_15DependencyEntryEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %6, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !154 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i19, label %_ZNSt14_Function_baseD2Ev.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit20 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit20:                 ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !63  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit20
  call void @_ZdlPv(ptr noundef %i.at) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !63  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.x
  br i1 %i.aw, label %_ZN6duckdb16CatalogEntryInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.av) #35
  br label %_ZN6duckdb16CatalogEntryInfoD2Ev.exit

_ZN6duckdb16CatalogEntryInfoD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ax = load ptr, ptr %.sroa.024.035, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %._crit_edge, label %bb.l

bb.r:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit22

bb.t:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !154 ; 2 uses
  %.not.i21 = icmp eq ptr %i.bb, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit22 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit22:                 ; preds = %bb.u, %bb.t, %bb.s
  %.pn13 = phi { ptr, i32 } [ %i.az, %bb.s ], [ %i.ba, %bb.t ], [ %i.ba, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN6duckdb16CatalogEntryInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #34
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit22, %bb.r
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt14_Function_baseD2Ev.exit22 ], [ %i.ay, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt14_Function_baseD2Ev.exit18
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.w ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit18 ]
  call void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb12CatalogEntryEENS1_24CatalogEntryHashFunctionENS1_20CatalogEntryEqualityESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DependencyManager13PrintSubjectsENS_18CatalogTransactionERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly byval(%"struct.duckdb::CatalogTransaction") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::function.513", align 8 ; 12 uses
  %4 = alloca %"class.std::vector.1492", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.duckdb::MangledEntryName", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::DependencyCatalogSet", align 8 ; 14 uses
  %10 = alloca %"class.std::function.513", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb16MangledEntryNameC1ERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.75, i64 14, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 14, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i8 0, ptr %i.d, align 2, !tbaa !65
  %.val = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val15 = load i64, ptr %i.e, align 8, !tbaa !64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !62, !alias.scope !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !1070
  store i64 %.val15, ptr %i.a, align 8, !tbaa !138, !noalias !1070
  %i.g = icmp ugt i64 %.val15, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge.i.i
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.t   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %8, align 8, !tbaa !63, !alias.scope !1070
  %i.i = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !1070
  store i64 %i.i, ptr %i.f, align 8, !tbaa !65, !alias.scope !1070
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc16, %._crit_edge.i.i
  %i.j = phi ptr [ %i.h, %.noexc16 ], [ %i.f, %._crit_edge.i.i ] ; 2 uses
  switch i64 %.val15, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %.val, align 1, !tbaa !65, !noalias !1070
  store i8 %i.k, ptr %i.j, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr readonly align 1 %.val, i64 %.val15, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !1070 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !64, !alias.scope !1070
  %i.n = load ptr, ptr %8, align 8, !tbaa !63, !alias.scope !1070
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !1070
  %i.p = load i64, ptr %i.m, align 8, !tbaa !64, !alias.scope !1070 ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.d
  %11 = phi i64 [ %i.t, %bb.d ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %.01.i.a = phi i64 [ %i.u, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %12 = load ptr, ptr %8, align 8, !tbaa !63, !alias.scope !1070
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 %.01.i.a ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !65
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 95, ptr %i.q, align 1, !tbaa !65
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !64, !alias.scope !1070
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = phi i64 [ %11, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.u = add nuw i64 %.01.i.a, 1                  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %.lr.ph.i, label %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit, !llvm.loop !1073

_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1074
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1074
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !224, !noalias !1074 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !227, !noalias !1074 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.w, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aa) #35
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !224, !noalias !1074
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.ae = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #35
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1074
  br label %.body

bb.h:                                             ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1074
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.al = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZdlPv(ptr noundef %i.al) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %9, align 8, !tbaa !663
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  invoke void @_ZN6duckdb16CatalogEntryInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc23 unwind label %bb.v

.noexc23:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  invoke void @_ZN6duckdb16MangledEntryNameC1ERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc23
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16CatalogEntryInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ao) #34
  br label %.body24

_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit: ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_17DependencyManager13PrintSubjectsENS0_18CatalogTransactionERKNS0_16CatalogEntryInfoEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.as, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_17DependencyManager13PrintSubjectsENS0_18CatalogTransactionERKNS0_16CatalogEntryInfoEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ar, align 8, !tbaa !154
  %i.at = load ptr, ptr %9, align 8, !tbaa !934, !nonnull !82, !align !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %9, ptr %3, align 8, !tbaa !937
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %10, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !939
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20DependencyCatalogSet4ScanENS0_18CatalogTransactionERKSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.av, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20DependencyCatalogSet4ScanENS0_18CatalogTransactionERKSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.au, align 8, !tbaa !154
  invoke void @_ZN6duckdb10CatalogSet14ScanWithPrefixENS_18CatalogTransactionERKSt8functionIFvRNS_12CatalogEntryEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !154 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.q unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

bb.n:                                             ; preds = %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !154 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bb, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !154 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bf, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.w

bb.q:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !154 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bg, null
  br i1 %.not.i28, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN6duckdb16MangledEntryNameD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bk) #35
  br label %_ZN6duckdb16MangledEntryNameD2Ev.exit.i

_ZN6duckdb16MangledEntryNameD2Ev.exit.i:          ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN6duckdb16MangledEntryNameD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN6duckdb16MangledEntryNameD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !63 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN6duckdb20DependencyCatalogSetD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bs) #35
  br label %_ZN6duckdb20DependencyCatalogSetD2Ev.exit

_ZN6duckdb20DependencyCatalogSetD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.bv = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN6duckdb16MangledEntryNameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb20DependencyCatalogSetD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bv) #35
  br label %_ZN6duckdb16MangledEntryNameD2Ev.exit

_ZN6duckdb16MangledEntryNameD2Ev.exit:            ; preds = %_ZN6duckdb20DependencyCatalogSetD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.t:                                             ; preds = %.noexc.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.u:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ca) #35
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bz, %bb.u ] ; 2 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.f
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn, %.body ]
  %i.cf = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.b
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  call void @_ZdlPv(ptr noundef %i.cf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.y

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i
  %i.ci = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit39 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit39:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @_ZN6duckdb20DependencyCatalogSetD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %9) #34
  br label %.body24

.body24:                                          ; preds = %bb.v, %bb.j, %_ZNSt14_Function_baseD2Ev.exit39
  %.pn12 = phi { ptr, i32 } [ %i.ba, %_ZNSt14_Function_baseD2Ev.exit39 ], [ %i.ch, %bb.v ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.y

bb.y:                                             ; preds = %.body24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %.body24 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  %i.cl = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZN6duckdb16MangledEntryNameD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cl) #35
  br label %_ZN6duckdb16MangledEntryNameD2Ev.exit42

_ZN6duckdb16MangledEntryNameD2Ev.exit42:          ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn12.pn
}

declare void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DependencyManager15PrintDependentsENS_18CatalogTransactionERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly byval(%"struct.duckdb::CatalogTransaction") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %3 = alloca %"class.std::function.513", align 8 ; 12 uses
  %4 = alloca %"class.std::vector.1492", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.duckdb::MangledEntryName", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::DependencyCatalogSet", align 8 ; 14 uses
  %10 = alloca %"class.std::function.513", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb16MangledEntryNameC1ERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 16, ptr %i.b, align 8, !tbaa !138
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %7, align 8, !tbaa !63
  %i.e = load i64, ptr %i.b, align 8, !tbaa !138  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.76, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !64
  %i.g = load ptr, ptr %7, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %.val = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val15 = load i64, ptr %i.i, align 8, !tbaa !64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !62, !alias.scope !1079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !1079
  store i64 %.val15, ptr %i.a, align 8, !tbaa !138, !noalias !1079
  %i.k = icmp ugt i64 %.val15, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.u   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i.i
  store ptr %i.l, ptr %8, align 8, !tbaa !63, !alias.scope !1079
  %i.m = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !1079
  store i64 %i.m, ptr %i.j, align 8, !tbaa !65, !alias.scope !1079
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc16, %.noexc
  %i.n = phi ptr [ %i.l, %.noexc16 ], [ %i.j, %.noexc ] ; 2 uses
  switch i64 %.val15, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %.val, align 1, !tbaa !65, !noalias !1079
  store i8 %i.o, ptr %i.n, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val, i64 %.val15, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !1079 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !64, !alias.scope !1079
  %i.r = load ptr, ptr %8, align 8, !tbaa !63, !alias.scope !1079
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !1079
  %i.t = load i64, ptr %i.q, align 8, !tbaa !64, !alias.scope !1079 ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.d
  %11 = phi i64 [ %i.x, %bb.d ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %.01.i.a = phi i64 [ %i.y, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %12 = load ptr, ptr %8, align 8, !tbaa !63, !alias.scope !1079
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 %.01.i.a ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !65
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 95, ptr %i.u, align 1, !tbaa !65
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !64, !alias.scope !1079
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.x = phi i64 [ %11, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.y = add nuw i64 %.01.i.a, 1                  ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %.lr.ph.i, label %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit, !llvm.loop !1073

_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1082
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1082
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !224, !noalias !1082 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !227, !noalias !1082 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ae) #35
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !224, !noalias !1082
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.ai = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #35
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdbL12FormatStringB5cxx11ERKNS_16MangledEntryNameE.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1082
  br label %.body

bb.h:                                             ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1082
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.ap = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZdlPv(ptr noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ar, ptr %9, align 8, !tbaa !663
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  invoke void @_ZN6duckdb16CatalogEntryInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc23 unwind label %bb.w

.noexc23:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  invoke void @_ZN6duckdb16MangledEntryNameC1ERKNS_16CatalogEntryInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc23
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16CatalogEntryInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.as) #34
  br label %.body24

_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit: ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_17DependencyManager15PrintDependentsENS0_18CatalogTransactionERKNS0_16CatalogEntryInfoEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.aw, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_17DependencyManager15PrintDependentsENS0_18CatalogTransactionERKNS0_16CatalogEntryInfoEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.av, align 8, !tbaa !154
  %i.ax = load ptr, ptr %9, align 8, !tbaa !934, !nonnull !82, !align !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %9, ptr %3, align 8, !tbaa !937
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %10, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !939
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20DependencyCatalogSet4ScanENS0_18CatalogTransactionERKSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.az, align 8, !tbaa !156
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20DependencyCatalogSet4ScanENS0_18CatalogTransactionERKSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.ay, align 8, !tbaa !154
  invoke void @_ZN6duckdb10CatalogSet14ScanWithPrefixENS_18CatalogTransactionERKSt8functionIFvRNS_12CatalogEntryEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !154 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.q unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

bb.n:                                             ; preds = %_ZN6duckdb20DependencyCatalogSetC2ERNS_10CatalogSetERKNS_16CatalogEntryInfoE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !154 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bf, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !154 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bj, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.x

bb.q:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !154 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bk, null
  br i1 %.not.i28, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN6duckdb16MangledEntryNameD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bo) #35
  br label %_ZN6duckdb16MangledEntryNameD2Ev.exit.i

_ZN6duckdb16MangledEntryNameD2Ev.exit.i:          ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !63 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

end_hunk_0
