inline.NumInlined: 7661
inline.NumDeleted: 2990
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb7Catalog10GetSchemasERNS_21CatalogEntryRetrieverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.076.0130, i64 8 ; 2 uses
  %.not106 = icmp eq ptr %i.eu, %.sroa.11.2185
  br i1 %.not106, label %._crit_edge133, label %bb.ad

bb.an:                                            ; preds = %bb.ak
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %8, align 8, !tbaa !409   ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i67, label %.body63, label %.body63.sink.split

.body63.sink.split:                               ; preds = %bb.an, %_ZNSt14_Function_baseD2Ev.exit5.i
  %.sink = phi ptr [ %i.ek, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.ew, %bb.an ]
  %.pn.ph = phi { ptr, i32 } [ %i.ef, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.ev, %bb.an ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #35
  br label %.body63

.body63:                                          ; preds = %.body63.sink.split, %bb.an, %_ZNSt14_Function_baseD2Ev.exit5.i
  %.pn = phi { ptr, i32 } [ %i.ef, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.ev, %bb.an ], [ %.pn.ph, %.body63.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ex = load ptr, ptr %0, align 8, !tbaa !409   ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70, label %bb.ao

bb.ao:                                            ; preds = %.body63
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70: ; preds = %bb.ao, %.body63, %.body
  %.sroa.091.4 = phi ptr [ %.sroa.091.2, %.body ], [ %.sroa.091.3186, %.body63 ], [ %.sroa.091.3186, %bb.ao ] ; 2 uses
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %.body ], [ %.pn, %.body63 ], [ %.pn, %bb.ao ]
  %.not.i.i.i71 = icmp eq ptr %.sroa.091.4, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit72, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70
  call void @_ZdlPv(ptr noundef nonnull %.sroa.091.4) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit72

_ZNSt6vectorISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EED2Ev.exit72: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit70, %bb.ap
  resume { ptr, i32 } %.pn28.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb7CatalogEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !515  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #35
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !516

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !509
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !511
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #35
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Catalog10GetSchemasERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.981") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::CatalogEntryRetriever", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !219
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb7Catalog10GetSchemasERNS_21CatalogEntryRetrieverERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.duckdb::vector.981") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !198
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !338
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !338
  br label %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i, !prof !148

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN6duckdb21CatalogEntryRetrieverD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 3)
          to label %_ZN6duckdb21CatalogEntryRetrieverD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

_ZN6duckdb21CatalogEntryRetrieverD2Ev.exit:       ; preds = %_ZN6duckdb10shared_ptrINS_17CatalogSearchPathELb1EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.k:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21CatalogEntryRetrieverD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Catalog13GetAllSchemasERNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.981") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.1004", align 8 ; 10 uses
  %3 = alloca %"class.duckdb::vector.974", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::vector.981", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb15DatabaseManager3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN6duckdb15DatabaseManager12GetDatabasesERNS_13ClientContextENS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.974") align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 -1)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !401    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 2 uses
  %.not42 = icmp eq ptr %i.b, %i.d
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = ptrtoint ptr %4 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.z

._crit_edge:                                      ; preds = %bb.ao, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !412    ; 72 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !412  ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_T1_"(ptr %i.j, ptr %i.l, i64 noundef %i.s)
  %i.t = icmp sgt i64 %i.o, 128
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %.preheader.i14.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %.sroa.0.018.i.i.i.i = getelementptr i8, ptr %i.j, i64 8 ; 18 uses
  %i.v = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.018.i.i.i.i, ptr %i.j)
  br i1 %i.v, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.018.i.i.i.i)
  br label %.peel.next.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.06.0.copyload.peel.i.i.i.i = load ptr, ptr %.sroa.0.018.i.i.i.i, align 8
  %i.w = load i64, ptr %i.j, align 8
  store i64 %i.w, ptr %.sroa.0.018.i.i.i.i, align 8
  store ptr %.sroa.06.0.copyload.peel.i.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i, %bb.d
  %.sroa.0.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.x = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.i.i.i, ptr %i.j)
  br i1 %i.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i, label %bb.e

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i: ; preds = %.peel.next.i.i.i.i
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.1.i.i.i

bb.e:                                             ; preds = %.peel.next.i.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.i.i.i)
  br label %.peel.next.i.1.i.i.i

.peel.next.i.1.i.i.i:                             ; preds = %bb.e, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i
  %.sroa.0.021.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.y = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.1.i.i.i, ptr %i.j)
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i, label %bb.f

bb.f:                                             ; preds = %.peel.next.i.1.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.1.i.i.i)
  br label %.peel.next.i.2.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i: ; preds = %.peel.next.i.1.i.i.i
  %.sroa.06.0.copyload.i.1.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.1.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload.i.1.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.2.i.i.i

.peel.next.i.2.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i, %bb.f
  %.sroa.0.021.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.z = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.2.i.i.i, ptr %i.j)
  br i1 %i.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next.i.2.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.2.i.i.i)
  br label %.peel.next.i.3.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i: ; preds = %.peel.next.i.2.i.i.i
  %.sroa.06.0.copyload.i.2.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.2.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  store ptr %.sroa.06.0.copyload.i.2.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.3.i.i.i

.peel.next.i.3.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i, %bb.g
  %.sroa.0.021.i.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.aa = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.3.i.i.i, ptr %i.j)
  br i1 %i.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.3.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.3.i.i.i)
  br label %.peel.next.i.4.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i: ; preds = %.peel.next.i.3.i.i.i
  %.sroa.06.0.copyload.i.3.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.3.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  store ptr %.sroa.06.0.copyload.i.3.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.4.i.i.i

.peel.next.i.4.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i, %bb.h
  %.sroa.0.021.i.ptr.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.ab = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.4.i.i.i, ptr %i.j)
  br i1 %i.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i, label %bb.i

bb.i:                                             ; preds = %.peel.next.i.4.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.4.i.i.i)
  br label %.peel.next.i.5.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i: ; preds = %.peel.next.i.4.i.i.i
  %.sroa.06.0.copyload.i.4.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.4.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store ptr %.sroa.06.0.copyload.i.4.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.5.i.i.i

.peel.next.i.5.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i, %bb.i
  %.sroa.0.021.i.ptr.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  %i.ac = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.5.i.i.i, ptr %i.j)
  br i1 %i.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i, label %bb.j

bb.j:                                             ; preds = %.peel.next.i.5.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.5.i.i.i)
  br label %.peel.next.i.6.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i: ; preds = %.peel.next.i.5.i.i.i
  %.sroa.06.0.copyload.i.5.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.5.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store ptr %.sroa.06.0.copyload.i.5.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.6.i.i.i

.peel.next.i.6.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i, %bb.j
  %.sroa.0.021.i.ptr.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.ad = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.6.i.i.i, ptr %i.j)
  br i1 %i.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i, label %bb.k

bb.k:                                             ; preds = %.peel.next.i.6.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.6.i.i.i)
  br label %.peel.next.i.7.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i: ; preds = %.peel.next.i.6.i.i.i
  %.sroa.06.0.copyload.i.6.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.6.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  store ptr %.sroa.06.0.copyload.i.6.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.7.i.i.i

.peel.next.i.7.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i, %bb.k
  %.sroa.0.021.i.ptr.7.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  %i.ae = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.7.i.i.i, ptr %i.j)
  br i1 %i.ae, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i, label %bb.l

bb.l:                                             ; preds = %.peel.next.i.7.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.7.i.i.i)
  br label %.peel.next.i.8.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i: ; preds = %.peel.next.i.7.i.i.i
  %.sroa.06.0.copyload.i.7.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.7.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  store ptr %.sroa.06.0.copyload.i.7.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.8.i.i.i

.peel.next.i.8.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i, %bb.l
  %.sroa.0.021.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.af = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.8.i.i.i, ptr %i.j)
  br i1 %i.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i, label %bb.m

bb.m:                                             ; preds = %.peel.next.i.8.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.8.i.i.i)
  br label %.peel.next.i.9.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i: ; preds = %.peel.next.i.8.i.i.i
  %.sroa.06.0.copyload.i.8.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.8.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  store ptr %.sroa.06.0.copyload.i.8.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.9.i.i.i

.peel.next.i.9.i.i.i:                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i, %bb.m
  %.sroa.0.021.i.ptr.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.ag = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.9.i.i.i, ptr %i.j)
  br i1 %i.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i, label %bb.n

bb.n:                                             ; preds = %.peel.next.i.9.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.9.i.i.i)
  br label %.peel.next.i.10.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i: ; preds = %.peel.next.i.9.i.i.i
  %.sroa.06.0.copyload.i.9.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.9.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false)
  store ptr %.sroa.06.0.copyload.i.9.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.10.i.i.i

.peel.next.i.10.i.i.i:                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i, %bb.n
  %.sroa.0.021.i.ptr.10.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 3 uses
  %i.ah = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.10.i.i.i, ptr %i.j)
  br i1 %i.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i, label %bb.o

bb.o:                                             ; preds = %.peel.next.i.10.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.10.i.i.i)
  br label %.peel.next.i.11.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i: ; preds = %.peel.next.i.10.i.i.i
  %.sroa.06.0.copyload.i.10.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.10.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  store ptr %.sroa.06.0.copyload.i.10.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.11.i.i.i

.peel.next.i.11.i.i.i:                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i, %bb.o
  %.sroa.0.021.i.ptr.11.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 3 uses
  %i.ai = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.11.i.i.i, ptr %i.j)
  br i1 %i.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.11.i.i.i, label %bb.p

bb.p:                                             ; preds = %.peel.next.i.11.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.11.i.i.i)
  br label %.peel.next.i.12.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.11.i.i.i: ; preds = %.peel.next.i.11.i.i.i
  %.sroa.06.0.copyload.i.11.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.11.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  store ptr %.sroa.06.0.copyload.i.11.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.12.i.i.i

.peel.next.i.12.i.i.i:                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.11.i.i.i, %bb.p
  %.sroa.0.021.i.ptr.12.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 3 uses
  %i.aj = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.12.i.i.i, ptr %i.j)
  br i1 %i.aj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.12.i.i.i, label %bb.q

bb.q:                                             ; preds = %.peel.next.i.12.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.12.i.i.i)
  br label %.peel.next.i.13.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.12.i.i.i: ; preds = %.peel.next.i.12.i.i.i
  %.sroa.06.0.copyload.i.12.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.12.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store ptr %.sroa.06.0.copyload.i.12.i.i.i, ptr %i.j, align 8
  br label %.peel.next.i.13.i.i.i

.peel.next.i.13.i.i.i:                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.12.i.i.i, %bb.q
  %.sroa.0.021.i.ptr.13.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 3 uses
  %i.ak = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.13.i.i.i, ptr %i.j)
  br i1 %i.ak, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.13.i.i.i, label %bb.r

bb.r:                                             ; preds = %.peel.next.i.13.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.13.i.i.i)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i"

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.13.i.i.i: ; preds = %.peel.next.i.13.i.i.i
  %.sroa.06.0.copyload.i.13.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.13.i.i.i, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.018.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  store ptr %.sroa.06.0.copyload.i.13.i.i.i, ptr %i.j, align 8
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.13.i.i.i, %bb.r
  %.not6.i.i.i.i = icmp eq ptr %i.u, %i.l
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i", %.lr.ph.i12.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i12.i.i.i ], [ %i.u, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i" ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i13.i.i.i = icmp eq ptr %i.al, %i.l
  br i1 %.not.i13.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !536

.preheader.i14.i.i.i:                             ; preds = %bb.c
  %.sroa.0.018.i15.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %.not19.i16.i.i.i = icmp eq ptr %.sroa.0.018.i15.i.i.i, %i.l
  br i1 %.not19.i16.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.preheader.i14.i.i.i
  %i.am = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.018.i15.i.i.i, ptr %i.j)
  br i1 %i.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i27.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i17.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.018.i15.i.i.i)
  br label %bb.t

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i27.i.i.i: ; preds = %.lr.ph.i17.i.i.i
  %.sroa.06.0.copyload.peel.i28.i.i.i = load ptr, ptr %.sroa.0.018.i15.i.i.i, align 8
  %i.an = load i64, ptr %i.j, align 8
  store i64 %i.an, ptr %.sroa.0.018.i15.i.i.i, align 8
  store ptr %.sroa.06.0.copyload.peel.i28.i.i.i, ptr %i.j, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i27.i.i.i, %bb.s
  %.sroa.0.0.peel.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.not.peel.i19.i.i.i = icmp eq ptr %.sroa.0.0.peel.i18.i.i.i, %i.l
  br i1 %.not.peel.i19.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %.peel.next.i20.i.i.i

.peel.next.i20.i.i.i:                             ; preds = %bb.t, %bb.x
  %.sroa.0.021.i21.i.i.i = phi ptr [ %.sroa.0.0.i23.i.i.i, %bb.x ], [ %.sroa.0.0.peel.i18.i.i.i, %bb.t ] ; 6 uses
  %.pn20.i22.i.i.i = phi ptr [ %.sroa.0.021.i21.i.i.i, %bb.x ], [ %.sroa.0.018.i15.i.i.i, %bb.t ]
  %i.ao = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %.sroa.0.021.i21.i.i.i, ptr %i.j)
  br i1 %i.ao, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.peel.next.i20.i.i.i
  %.sroa.06.0.copyload.i25.i.i.i = load ptr, ptr %.sroa.0.021.i21.i.i.i, align 8
  %i.ap = ptrtoint ptr %.sroa.0.021.i21.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.n                     ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i26.i.i.i, !prof !354

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20.i22.i.i.i, i64 16
  %i.au = sub nsw i64 0, %i.ar
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i26.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i26.i.i.i: ; preds = %bb.v, %bb.u
  store ptr %.sroa.06.0.copyload.i25.i.i.i, ptr %i.j, align 8
  br label %bb.x

bb.w:                                             ; preds = %.peel.next.i20.i.i.i
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021.i21.i.i.i)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i26.i.i.i
  %.sroa.0.0.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i21.i.i.i, i64 8 ; 2 uses
  %.not.i24.i.i.i = icmp eq ptr %.sroa.0.0.i23.i.i.i, %i.l
  br i1 %.not.i24.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", label %.peel.next.i20.i.i.i, !llvm.loop !537

bb.y:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.z:                                             ; preds = %.lr.ph, %bb.ao
  %.sroa.035.043 = phi ptr [ %i.b, %.lr.ph ], [ %i.ca, %bb.ao ] ; 3 uses
  %i.ax = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.035.043)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 324
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !539
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.ao, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa
  %i.bc = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.035.043)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.bd = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb16AttachedDatabase10GetCatalogEv(ptr noundef nonnull align 8 dereferenceable(408) %i.bc)
          to label %bb.ae unwind label %bb.ap     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !540
  store i64 0, ptr %i.g, align 8, !noalias !540
  store i64 %i.e, ptr %2, align 8, !tbaa !407, !noalias !540
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_7Catalog10GetSchemasERNS0_13ClientContextEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.f, align 8, !tbaa !193, !noalias !540
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !7, !noalias !540
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %2)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !154, !noalias !540 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i27, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.al unwind label %bb.ah     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #37
  unreachable

bb.ai:                                            ; preds = %bb.ae
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !154, !noalias !540 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bm, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.aj, %bb.ai
  %i.bq = load ptr, ptr %4, align 8, !tbaa !409, !alias.scope !540 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %.body, label %.body.sink.split

bb.al:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !412
  %i.bs = load ptr, ptr %4, align 8, !tbaa !412
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !412
  %i.bu = load ptr, ptr %0, align 8, !tbaa !412   ; 2 uses
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  invoke void @_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.by, ptr %i.bs, ptr %i.bt)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.bz = load ptr, ptr %4, align 8, !tbaa !409   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #35
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.035.043, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.d
  br i1 %.not, label %._crit_edge, label %bb.z

bb.ap:                                            ; preds = %bb.ad, %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aq:                                            ; preds = %bb.al
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !409   ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.aq, %_ZNSt14_Function_baseD2Ev.exit5.i
  %.sink = phi ptr [ %i.bq, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.cd, %bb.aq ]
  %.pn.ph = phi { ptr, i32 } [ %i.bl, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.cc, %bb.aq ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.aq, %_ZNSt14_Function_baseD2Ev.exit5.i
  %.pn = phi { ptr, i32 } [ %i.bl, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.cc, %bb.aq ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ay

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit": ; preds = %bb.x, %.lr.ph.i12.i.i.i, %bb.t, %.preheader.i14.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_.exit.i.i.i", %._crit_edge
  %i.ce = load ptr, ptr %3, align 8, !tbaa !450   ; 3 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !452 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit", %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cx, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i ], [ %i.ce, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEEZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EvT_SF_T0_.exit" ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !195 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ci, align 8, !tbaa !196
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !198
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !453
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !453
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.au ], [ %i.cv, %bb.av ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.aw, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_16AttachedDatabaseELb1EEEEvPT_.exit.i.i.i, !prof !148
end_hunk_0
