Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_callbacks?download=true
inline.NumInlined: 558
inline.NumDeleted: 278
begin_hunk_0_@_ZN8nanobind6detail8accessorINS0_8str_attrEEaSINS_4dictEEERS3_OT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.a = load ptr, ptr %1, align 8, !tbaa !23, !noalias !122 ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !23, !noalias !122
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind4castINS_4dictEEENS_6objectEOT_NS_9rv_policyE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #25, !noalias !122
  unreachable

_ZN8nanobind4castINS_4dictEEENS_6objectEOT_NS_9rv_policyE.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !alias.scope !122
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !20
  invoke void @_ZN8nanobind6detail11setattr_strEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef %i.d, ptr noundef %i.b, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload, ptr noundef nonnull %i.a) #24
          to label %_ZN8nanobind6detail8str_attr3setEP7_objectNS0_7str_keyES3_.exit unwind label %bb.c

_ZN8nanobind6detail8str_attr3setEP7_objectNS0_7str_keyES3_.exit: ; preds = %_ZN8nanobind4castINS_4dictEEENS_6objectEOT_NS_9rv_policyE.exit
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %0

bb.c:                                             ; preds = %_ZN8nanobind4castINS_4dictEEENS_6objectEOT_NS_9rv_policyE.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN9publisher9subscribeE8callback(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.callback, align 8           ; 4 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !50
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.b, align 8, !tbaa !48
  br label %_ZNSt6vectorI8callbackSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6vectorI8callbackSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  br label %_ZNSt6vectorI8callbackSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8callbackSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN9publisher11unsubscribeE8callback(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.callback, align 8           ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = call ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIP8callbackSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_(ptr %i.b, ptr %i.d, ptr nonnull align 8 dereferenceable(16) %3) #24
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.g = call ptr @_ZNSt6vectorI8callbackSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.e, ptr %i.f) #24 ; 0 uses
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK9publisher4emitEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not7 = icmp eq ptr %i.a, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.04.08, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !40
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.0.0.copyload, i32 noundef %1) #24, !inline_history !123
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: optsize
declare ptr @PyDict_New() local_unnamed_addr #3

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @PyErr_Occurred() #24
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #24
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt8bad_cast, i64 16), ptr %i.c, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt8bad_cast, ptr nonnull @_ZNSt8bad_castD1Ev) #28
  unreachable
}

; Function Attrs: optsize
declare ptr @PyErr_Occurred() local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZNSt8bad_castD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN8nanobind6detail11setattr_strEPNS0_12nb_internalsEP7_objectPKcmS4_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyI13callback_dataEEvPvPKv(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  store i64 %i.g, ptr %i.e, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !57
  call void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveI13callback_dataEEvPvS3_(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EOSD_OSaINS3_10_Hash_nodeIS1_Lb1EEEESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructI13callback_dataEEvPv(ptr noundef %0) #2 comdat {
bb.a:
  tail call void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #26
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !55
  br label %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = call noundef ptr @_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.c, ptr noundef null) #24 ; 3 uses
  %i.g = shl i64 %i.c, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.g, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %4 = icmp eq ptr %i.f, null
  br label %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.c ], [ %4, %bb.d ]
  %.0.i.a = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  store ptr %.0.i.a, ptr %0, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.h = phi ptr [ %i.a, %bb.a ], [ %.0.i.a, %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.028 = phi i1 [ true, %bb.a ], [ %.0.i, %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 4 uses
  %.not29 = icmp eq ptr %i.j, null
  br i1 %.not29, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.l, align 8              ; 3 uses
  store i64 %i.n, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.q, ptr %i.o, align 8, !tbaa !21
  %.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g, %bb.h
  %i.s = phi ptr [ %i.h, %.noexc ], [ %i.h, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = urem i64 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !60
  %.02737 = load ptr, ptr %i.j, align 8, !tbaa !44 ; 2 uses
  %.not3038 = icmp eq ptr %.02737, null
  br i1 %.not3038, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %i.ab = phi ptr [ %i.al, %bb.m ], [ %i.s, %bb.i ] ; 2 uses
  %i.ac = phi i64 [ %i.am, %bb.m ], [ %i.y, %bb.i ] ; 2 uses
  %.02740 = phi ptr [ %.027, %bb.m ], [ %.02737, %bb.i ] ; 3 uses
  %.039 = phi ptr [ %i.ad, %bb.m ], [ %i.k, %bb.i ] ; 2 uses
  %i.ad = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc34:                                         ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.02740, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.ae, align 8            ; 3 uses
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i33, label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35, label %bb.j

bb.j:                                             ; preds = %.noexc34
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !21
  %.pre42 = load i64, ptr %i.x, align 8, !tbaa !32
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35: ; preds = %bb.k, %bb.j, %.noexc34
  %i.al = phi ptr [ %.pre43, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %.noexc34 ] ; 2 uses
  %i.am = phi i64 [ %.pre42, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %.noexc34 ] ; 2 uses
  store ptr %i.ad, ptr %.039, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.02740, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !59
  %i.aq = urem i64 %i.ap, %i.am
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  %.not32 = icmp eq ptr %i.as, null
  br i1 %.not32, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35
  store ptr %.039, ptr %i.ar, align 8, !tbaa !60
  br label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.f
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          catch ptr null
  %.026 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp49, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %.026) #23 ; 0 uses
  call void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #26
  br i1 %.028, label %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN8nanobind6objectELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit35
  %.027 = load ptr, ptr %.02740, align 8, !tbaa !44 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !124

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.au = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.az) #29
  br label %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.p:                                             ; preds = %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.o, %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #28
          to label %bb.s unwind label %bb.p

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.ba

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.e
  ret void

bb.r:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #27
  unreachable

bb.s:                                             ; preds = %_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef ptr @_ZNSt15__new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.e, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30
  ret ptr %i.d
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN8nanobind6objectES1_SaIS1_ENSt8__detail9_IdentityEN13callback_data5py_eqENS5_7py_hashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EOSD_OSaINS3_10_Hash_nodeIS1_Lb1EEEESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  store i64 %i.j, ptr %i.h, align 8, !tbaa !52
end_hunk_0
