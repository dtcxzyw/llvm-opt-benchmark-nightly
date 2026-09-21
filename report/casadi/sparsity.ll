Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity?download=true
inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_:bb.a
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !627

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIxEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #31
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i:     ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !39
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #29
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !39
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !39
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE10_M_emplaceIJS0_ImS3_EEEENS6_14_Node_iteratorIS4_Lb0ELb0EEENS6_20_Node_const_iteratorIS4_Lb0ELb0EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, casadi::WeakRef>, std::allocator<std::pair<const unsigned long, casadi::WeakRef>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !630
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !29
  store i64 %i.c, ptr %i.b, align 8, !tbaa !632
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  store ptr %i.f, ptr %i.d, align 8, !tbaa !20
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS0_ImS3_EEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS0_ImS3_EEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.m, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78
  %.not.not.i = icmp eq i64 %i.o, 0
  %.pre38.i = load i64, ptr %i.b, align 8         ; 3 uses
  br i1 %.not.not.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS0_ImS3_EEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.sroa.011.032.i = phi ptr [ %i.s, %bb.h ], [ %1, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.032.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp eq i64 %.pre38.i, %i.q
  br i1 %i.r, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %.sroa.011.032.i, align 8, !tbaa !77 ; 2 uses
  %.not26.i = icmp eq ptr %i.s, null
  br i1 %.not26.i, label %.thread.i, label %bb.g, !llvm.loop !628

.thread.i:                                        ; preds = %bb.h, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.thread.i
  %.sroa.0.0.in.i = phi ptr [ %i.t, %.thread.i ], [ %.sroa.0.0.i, %bb.j ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !77 ; 4 uses
  %.not27.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not27.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29
  %i.w = icmp eq i64 %.pre38.i, %i.v
  br i1 %i.w, label %.loopexit, label %bb.i, !llvm.loop !629

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.i, %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS0_ImS3_EEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  %.sroa.019.3.i = phi ptr [ %.sroa.0.0.i, %bb.j ], [ %1, %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS0_ImS3_EEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit ], [ %1, %bb.i ], [ %.sroa.011.032.i, %bb.g ]
  %i.x = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS6_10_Hash_nodeIS4_Lb0EEEmSK_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %.sroa.019.3.i, i64 noundef %.pre38.i, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.k

_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %i.x

bb.k:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS6_10_Hash_nodeIS4_Lb0EEEmSK_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !633
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !633
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !74   ; 4 uses
  %i.t = urem i64 %2, %i.s                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !54

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, label %bb.i

_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41: ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.y, ptr %3, align 8, !tbaa !77
  store ptr %3, ptr %1, align 8, !tbaa !77
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !29  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ah = icmp eq i64 %i.ad, %i.ak
  br i1 %i.ah, label %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.020.i = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %.020.i, align 8, !tbaa !77 ; 4 uses
  %.not18.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = urem i64 %i.ak, %i.s
  %.not19.i = icmp eq i64 %i.al, %i.t
  br i1 %.not19.i, label %bb.k, label %..loopexit_crit_edge21.i, !llvm.loop !2

..loopexit_crit_edge21.i:                         ; preds = %bb.l
  br label %.loopexit, !llvm.loop !2

_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ]
  %i.an = phi ptr [ %i.ab, %bb.j ], [ %.020.i, %bb.k ] ; 2 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !77
  store ptr %3, ptr %i.an, align 8, !tbaa !77
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %bb.m, label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit, !prof !41

bb.m:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.ap = phi i64 [ %i.v, %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41 ], [ %i.ad, %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %.not36 = icmp eq ptr %i.aq, null
  br i1 %.not36, label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.at = icmp eq i64 %i.ap, %i.as
  br i1 %i.at, label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = urem i64 %i.as, %i.s                    ; 2 uses
  %.not37 = icmp eq i64 %i.au, %i.t
  br i1 %.not37, label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %3, ptr %i.aw, align 8, !tbaa !79
  br label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !77
  store ptr %i.ax, ptr %3, align 8, !tbaa !77
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !79
  store ptr %3, ptr %i.ay, align 8, !tbaa !77
  br label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  store ptr %i.ba, ptr %3, align 8, !tbaa !77
  store ptr %3, ptr %i.az, align 8, !tbaa !76
  %i.bb = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %.not11.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !29
  %i.be = urem i64 %i.bd, %i.s
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.be
  store ptr %3, ptr %i.bf, align 8, !tbaa !79
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.thread
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !79
  br label %_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit: ; preds = %bb.r, %.loopexit, %bb.o, %bb.p, %_ZNKSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, %bb.n, %bb.m
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !78
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6casadi7WeakRefEELb0EEEEE18_M_deallocate_nodeEPS7_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
end_hunk_0
