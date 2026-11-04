Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/organizer?download=true
inline.NumInlined: 8145
inline.NumDeleted: 3037
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIdEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !175
  ret void

bb.o:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  %i.cn = tail call ptr @__cxa_begin_catch(ptr %i.cm) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.s unwind label %bb.o

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ck

bb.r:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #28
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEdEEPKvNS_8internal11any_requestERKS1_S4_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !370    ; 4 uses
  switch i8 %0, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.f = load double, ptr %2, align 8, !tbaa !341
  store double %i.f, ptr %i.a, align 8, !tbaa !341
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.g = load double, ptr %2, align 8, !tbaa !341
  store double %i.g, ptr %i.a, align 8, !tbaa !341
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.h = load double, ptr %i.a, align 8, !tbaa !341
  %i.i = load double, ptr %2, align 8, !tbaa !341
  %i.j = fcmp oeq double %i.h, %i.i
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEdEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.l, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1595207928, ptr %i.m, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEdEEvRKS1_, ptr %i.n, align 8, !tbaa !174
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 1, ptr %i.o, align 4, !tbaa !369
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30, !inline_history !704 ; 2 uses
  %i.q = load double, ptr %i.a, align 8, !tbaa !341
  store double %i.q, ptr %i.p, align 8, !tbaa !341
  store ptr %i.p, ptr %2, align 8, !tbaa !370
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.h, %bb.a
  %i.r = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.k, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEdEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(29) %0) #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbST_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbST_m.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.e, %bb.d, %bb.c
  %i.f = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  %i.g = zext i1 %i.f to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbST_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbST_m.exit: ; preds = %bb.b, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i
  %i.h = phi i64 [ %i.a, %bb.b ], [ %i.g, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i ]
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENUlRS4_E_8__invokeESQ_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.entt::basic_view", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !707
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEDpNS8_IT0_S1_SaINSA_ISG_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISP_E4typeEEE4typeEEEEEENSO_IJDpSP_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0), !noalias !707
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !707
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESQ_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !707
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !707
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !707 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !707
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESQ_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !707
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !707 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !707
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS7_SaIS7_EEEEENS5_INS6_IcS7_SaIcEEESC_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESL_SM_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEENS4_INS5_IcS6_SaIcEEESB_EEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer21ro_int_rw_char_doubleESK_SL_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 846177720, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 282, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.172, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE20insert_or_do_nothingIRKjEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !83     ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !82 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !708

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !156
  %.pre28 = ptrtoint ptr %i.n to i64
  br label %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre28, %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.v, %bb.d ] ; 2 uses
  %i.y = phi ptr [ %.pre, %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.t, %bb.d ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.o, %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit.loopexit ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4entt9dense_setIjSt8identitySt8equal_toIvESaIjEE16constrained_findIjEEDaRKT_m.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196
  %.not.i12 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !82
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.ae, align 8, !tbaa !713
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !156
  br label %_ZNSt6vectorISt4pairImjESaIS1_EE12emplace_backIJRmRKjEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.ag, %.pre-phi                ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775792
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #29
  unreachable

_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 576460752303423487)
  %i.an = select i1 %i.al, i64 576460752303423487, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !82
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !199
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.at, ptr %i.as, align 8, !tbaa !713
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.ap, %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !714
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !712

_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt4pairImjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImjESaIS1_EE17_M_realloc_insertIJRmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #27
  %.pre22.pre = load ptr, ptr %0, align 8, !tbaa !122 ; 2 uses
  %.pre23.pre = load ptr, ptr %i.c, align 8, !tbaa !121
  %.pre43 = ptrtoint ptr %.pre23.pre to i64
  %.pre44 = ptrtoint ptr %.pre22.pre to i64
  %.pre45 = sub i64 %.pre43, %.pre44
  br label %_ZNSt6vectorISt4pairImjESaIS1_EE17_M_realloc_insertIJRmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImjESaIS1_EE17_M_realloc_insertIJRmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %.pre35.pre-phi = phi i64 [ %.pre45, %bb.i ], [ %i.h, %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i ]
  %.pre22 = phi ptr [ %.pre22.pre, %bb.i ], [ %i.e, %_ZNSt6vectorISt4pairImjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i ]
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !157
end_hunk_0
begin_hunk_1_@_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSQ_m:bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.d, %bb.c, %bb.b
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i.i5.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i5.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.g, %bb.f, %bb.e
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.sink.split.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.sink.split.i: ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i
  %_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance.sink.i = phi ptr [ @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i ], [ @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i ]
  store ptr %_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance.sink.i, ptr %1, align 8, !tbaa !160
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit: ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.sink.split.i
  %.in.i = phi i64 [ 0, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit.i.i ], [ 0, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i ], [ 1, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.sink.split.i ]
  ret i64 %.in.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENUlRS4_E_8__invokeESN_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1471413475), !noalias !802 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !802
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESN_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !802
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESN_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !802
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !802 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !802
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESN_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJEEEvPKcENKUlRS4_E_clESN_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !802
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !802
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !802 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !802
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS7_SaIS7_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESI_SJ_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERdEXadL_ZN9Organizer17ro_char_rw_doubleESH_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1352603690, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 204, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.174, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENUlPKvRS4_E_8__invokeESP_SQ_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874), !noalias !805 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !805
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !805
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !805
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !805 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !805
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !805
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !805
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !805 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !805
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSR_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJidEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJidEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENUlRS4_E_8__invokeESO_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874), !noalias !808 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !808
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlRS4_E_clESO_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !808
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlRS4_E_clESO_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !808
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !808 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !808
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlRS4_E_clESO_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJEEEvPKcENKUlRS4_E_clESO_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !808
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !808
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !808 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !808
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS7_SaIS7_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESI_SK_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERKdEXadL_ZN9Organizer13ro_int_doubleESH_SJ_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -751392301, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 205, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.175, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 82351536043346212
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.d = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 112
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.0911.i.i.i, i64 64, i1 false), !tbaa.struct !161, !alias.scope !814
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !119, !alias.scope !813
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !119, !alias.scope !812
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !129, !alias.scope !813
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !813
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !122, !alias.scope !813
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !119, !alias.scope !813
  %i.z = insertelement <4 x ptr> poison, ptr %i.w, i64 0
  %i.aa = insertelement <4 x ptr> %i.z, ptr %i.x, i64 1
  %i.ab = shufflevector <2 x ptr> %i.y, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x ptr> %i.aa, <4 x ptr> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ac, ptr %i.s, align 8, !tbaa !119, !alias.scope !812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %.not.i.i.i = icmp eq ptr %i.ad, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !42

_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !81
  br label %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit

_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit
  %i.af = phi ptr [ %.pre, %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %1
  store ptr %i.al, ptr %i.b, align 8, !tbaa !131
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt10basic_flowISaIjEE5graphEv(ptr dead_on_unwind noalias writable sret(%"class.entt::adjacency_matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = mul i64 %i.h, %i.h                       ; 5 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.165) #29
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %.noexc5

.noexc5:                                          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #30 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !122
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !129
  store i64 0, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.p = add nsw i64 %i.i, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc5
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.b
end_hunk_1
begin_hunk_2_@_ZN4entt10basic_flowISaIjEE5clearEv:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !200
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EE5clearEv.exit.i

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorImSaImEE5clearEv.exit.i3
  invoke void @_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i64 noundef 0)
          to label %_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EE5clearEv.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZN4entt9dense_mapIjSt6vectorISt4pairImbESaIS3_EESt8identitySt8equal_toIvESaIS2_IKjS5_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EE5clearEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.ac, align 8, !tbaa !155
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeESW_SX_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.entt::basic_view.449", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !885
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJKcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constISA_E4typeEEE4typeEDpNS9_IT0_S1_SaINSB_ISH_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IT1_S1_SaINSB_ISQ_E4typeEEE4typeEEEEEENSP_IJDpSQ_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.449") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %1), !noalias !885
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !885
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clESW_SX_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !885
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clESW_SX_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !885
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !885 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !885
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clESW_SX_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clESW_SX_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !885
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !885
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !885 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !885
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJKcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constISA_E4typeEEE4typeEDpNS9_IT0_S1_SaINSB_ISH_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IT1_S1_SaINSB_ISQ_E4typeEEE4typeEEEEEENSP_IJDpSQ_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::basic_view.449") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874)
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1471413475)
  store ptr %i.a, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !103
  %i.c = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i

_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr %i.g, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !365
  %i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !366 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !250
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !366    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !250
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.p, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4entt10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEEKNS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSB_RSF_.exit

bb.d:                                             ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i
  store i64 1, ptr %i.h, align 8, !tbaa !365
  br label %_ZN4entt10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEEKNS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSB_RSF_.exit

_ZN4entt10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEEKNS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSB_RSF_.exit: ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSY_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSY_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSY_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSY_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.f:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i10, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %bb.f, %bb.g
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.16..16..sroa_idx, align 16, !tbaa !160
  %i.n = tail call i64 @llvm.umin.i64(i64 %1, i64 3) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.o = shl nuw nsw i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.o, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENUlRS4_E_8__invokeESV_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.entt::basic_view.449", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !888
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJKcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constISA_E4typeEEE4typeEDpNS9_IT0_S1_SaINSB_ISH_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IT1_S1_SaINSB_ISQ_E4typeEEE4typeEEEEEENSP_IJDpSQ_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.449") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0), !noalias !888
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !888
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlRS4_E_clESV_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !888
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlRS4_E_clESV_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !888
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !888 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !888
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlRS4_E_clESV_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18ro_int_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJES8_EEvRT1_PKcENKUlRS4_E_clESV_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !888
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !888
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !888 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !888
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS4_18ro_int_char_doubleESO_SQ_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEKNS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERKdEXadL_ZNS3_18ro_int_char_doubleESN_SP_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -137525375, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 316, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.183, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeESP_SQ_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874), !noalias !891 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSR_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.d, %bb.c, %bb.b
  %i.e = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  %i.f = zext i1 %i.e to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit: ; preds = %bb.a, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i
  %i.g = phi i64 [ %i.f, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i ], [ 0, %bb.a ]
  ret i64 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz6rw_intENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlRS4_E_8__invokeESO_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874), !noalias !894 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS4_6rw_intESJ_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_6rw_intESI_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2018811043, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 201, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.184, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeESS_ST_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.496", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.491") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind noalias writable sret(%"class.entt::basic_view.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874)
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1471413475)
  store ptr %i.a, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !103
  %i.c = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i

_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr %i.g, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !365
  %i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !366 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !250
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !366    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !250
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.p, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit

bb.d:                                             ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i
  store i64 1, ptr %i.h, align 8, !tbaa !365
  br label %_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit

_ZN4entt10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS4_SaIS4_EEEEENS2_INS3_IcS4_SaIcEEES9_EEEEENS_9exclude_tIJEEEEC2ERSA_RSD_.exit: ; preds = %_ZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_v.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSU_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz11rw_int_charENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlRS4_E_8__invokeESR_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.496", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.491") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEENS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS4_11rw_int_charESM_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_11rw_int_charESL_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1776058171, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 281, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.185, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeEST_SU_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.entt::basic_view.491", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !897
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.491") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %1), !noalias !897
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !897
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clEST_SU_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !897
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clEST_SU_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !897
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !897 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !897
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clEST_SU_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlPKvRS4_E_clEST_SU_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !897
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !897
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !897 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !897
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSV_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSV_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSV_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSV_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENUlRS4_E_8__invokeESS_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.entt::basic_view.491", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !900
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS8_E4typeEEE4typeEDpNS7_IT0_S1_SaINS9_ISF_E4typeEEE4typeEEEENS_9exclude_tIJDpNS7_IT1_S1_SaINS9_ISO_E4typeEEE4typeEEEEEENSN_IJDpSO_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.491") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0), !noalias !900
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !900
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlRS4_E_clESS_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !900
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlRS4_E_clESS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !900
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !900 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !900
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlRS4_E_clESS_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz18rw_int_char_doubleENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSB_INSC_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJES8_EEvRT1_PKcENKUlRS4_E_clESS_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !900
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !900
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !900 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !900
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !900
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEENS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS4_18rw_int_char_doubleESM_SN_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIMN9Organizer5clazzEFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS8_SaIS8_EEEEENS6_INS7_IcS8_SaIcEEESD_EEEEENS_9exclude_tIJEEEEERdEXadL_ZNS3_18rw_int_char_doubleESL_SM_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 678565434, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 298, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.186, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz19ro_int_with_payloadERKS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeESS_ST_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874), !noalias !903 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz19ro_int_with_payloadERKS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSU_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz19ro_int_with_payloadERKS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.d, %bb.c, %bb.b
  %i.e = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  %i.f = zext i1 %i.e to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz19ro_int_with_payloadERKS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEEEEJES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit
end_hunk_2
begin_hunk_3_@_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEE20insert_or_do_nothingIjJRS1_INS2_13group_handlerINS_16basic_sparse_setINS_6entityESaISG_EEELm1ELm0ELm0EEEEEEEDaOT_DpOT0_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !229    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #29
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !82
  store i64 %i.r, ptr %i.q, align 8, !tbaa !359
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %4, align 8, !tbaa !265
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %5, align 8, !tbaa !406
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !83
  store i32 %i.x, ptr %i.s, align 8, !tbaa !395
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !159
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !159
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !83
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !83
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !359, !alias.scope !949
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !359, !alias.scope !948
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !395, !alias.scope !949
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !395, !alias.scope !948
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !159, !alias.scope !949
  store ptr null, ptr %i.an, align 8, !tbaa !231, !alias.scope !949
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !159, !alias.scope !948
  store ptr null, ptr %i.am, align 8, !tbaa !376, !alias.scope !949
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEEE9constructIS6_JRmRKSt21piecewise_construct_tSt5tupleIJOjEESE_IJRS3_INS1_13group_handlerINS0_16basic_sparse_setINS0_6entityESaISJ_EEELm1ELm0ELm0EEEEEEEEEvRS7_PT_DpOT0_.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i30 ], [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  %.0911.i.i.i32 = phi ptr [ %i.ba, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.as = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !359, !alias.scope !951
  store i64 %i.as, ptr %.012.i.i.i31, align 8, !tbaa !359, !alias.scope !950
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !395, !alias.scope !951
  store i32 %i.av, ptr %i.at, align 8, !tbaa !395, !alias.scope !950
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 24
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !159, !alias.scope !951
  store ptr null, ptr %i.ay, align 8, !tbaa !231, !alias.scope !951
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !159, !alias.scope !950
  store ptr null, ptr %i.ax, align 8, !tbaa !376, !alias.scope !951
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !41

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ar, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bb, %.lr.ph.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !235
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !229
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !230
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !235
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz20ro_char_with_payloadERKS8_NS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEEJS9_ES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSW_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz20ro_char_with_payloadERKS8_NS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEEJS9_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSW_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz20ro_char_with_payloadERKS8_NS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEEJS9_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSW_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz20ro_char_with_payloadERKS8_NS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEEJS9_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSW_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IN9Organizer5clazzEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit: ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IN9Organizer5clazzEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIN9Organizer5clazzEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIN9Organizer5clazzEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIN9Organizer5clazzEE5valueEv.exit

_ZN4entt10type_indexIN9Organizer5clazzEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIN9Organizer5clazzEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -312431588, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 16, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.188, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz20ro_char_with_payloadERKS8_NS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEEJS9_ES8_EEvRT1_PKcENUlRS4_E_8__invokeEST_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE5groupIJKcEJEJEEENS_11basic_groupINS_7owned_tIJDpNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEEEENS_5get_tIJDpNS8_IT0_S1_SaINSA_ISJ_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISS_E4typeEEE4typeEEEEEENSI_IJDpSJ_EEENSR_IJDpSS_EEE(ptr noundef nonnull align 8 dereferenceable(336) %0), !noalias !954 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISB_SaISB_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS4_20ro_char_with_payloadES6_SO_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRKN9Organizer5clazzENS_11basic_groupINS_7owned_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcNS_6entityESaIcEEENS_14basic_registryISA_SaISA_EEEEEEEENS_5get_tIJEEENS_9exclude_tIJEEEEEEXadL_ZNS3_20ro_char_with_payloadES5_SN_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 573461558, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 248, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.189, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENUlPKvRS4_E_8__invokeESV_SW_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.597", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJKcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constISA_E4typeEEE4typeEDpNS9_IT0_S1_SaINSB_ISH_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IT1_S1_SaINSB_ISQ_E4typeEEE4typeEEEEEENSP_IJDpSQ_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.449") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSX_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IN9Organizer5clazzEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIN9Organizer5clazzEEERKNS_9type_infoEv.exit.i.i
  %i.f = zext i1 %i.e to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSX_m.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSX_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENKUlbPPKNS_9type_infoEmE_clEbSX_m.exit: ; preds = %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i, %bb.e
  %i.h = phi i64 [ %i.f, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJN9Organizer5clazzEEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i ], [ %i.g, %bb.e ]
  ret i64 %i.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz24ro_int_char_with_payloadERS8_NS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEKNSC_INSD_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEEEEJS8_ES8_EEvRT1_PKcENUlRS4_E_8__invokeESU_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.597", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJKcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constISA_E4typeEEE4typeEDpNS9_IT0_S1_SaINSB_ISH_E4typeEEE4typeEEEENS_9exclude_tIJDpNS9_IT1_S1_SaINSB_ISQ_E4typeEEE4typeEEEEEENSP_IJDpSQ_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view.449") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryISA_SaISA_EEEEEKNS8_INS9_IcSA_SaIcEEESF_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS4_24ro_int_char_with_payloadES5_SP_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRN9Organizer5clazzENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS9_SaIS9_EEEEEKNS7_INS8_IcS9_SaIcEEESE_EEEEENS_9exclude_tIJEEEEEEXadL_ZNS3_24ro_int_char_with_payloadES4_SO_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 425541843, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 308, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.190, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceIJiEEEvPFvPKvRS4_ES8_PKcENUlbPPKNS_9type_infoEmE_8__invokeEbSH_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceIJiEEEvPFvPKvRS4_ES8_PKcENKUlbPPKNS_9type_infoEmE_clEbSH_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.d, %bb.c, %bb.b
  %i.e = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

end_hunk_3
begin_hunk_4_@_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz21const_registry_secondERKS4_NS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS2_SaIdEEES4_EEEEENS_9exclude_tIJEEEEEEEJEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSR_m:bb.a

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit.i.i
  %i.f = zext i1 %i.e to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz21const_registry_secondERKS4_NS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS2_SaIdEEES4_EEEEENS_9exclude_tIJEEEEEEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz21const_registry_secondERKS4_NS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS2_SaIdEEES4_EEEEENS_9exclude_tIJEEEEEEEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit: ; preds = %bb.a, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i
  %i.g = phi i64 [ %i.f, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i ], [ 0, %bb.a ]
  ret i64 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer5clazz21const_registry_secondERKS4_NS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS2_SaIdEEES4_EEEEENS_9exclude_tIJEEEEEEEJEEEvPKcENUlRS4_E_8__invokeESO_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEdEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1595207928), !noalias !993 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS4_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS4_SaIdEEES6_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES8_SJ_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvRKNS_14basic_registryINS_6entityESaIS3_EEENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIdS3_SaIdEEES5_EEEEENS_9exclude_tIJEEEEEEXadL_ZN9Organizer5clazz21const_registry_secondES7_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1138066097, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 233, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.196, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENUlPKvRS4_E_8__invokeESS_ST_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.entt::basic_view", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !996
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEDpNS8_IT0_S1_SaINSA_ISG_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISP_E4typeEEE4typeEEEEEENSO_IJDpSP_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %1), !noalias !996
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !996
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlPKvRS4_E_clESS_ST_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !996
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlPKvRS4_E_clESS_ST_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !996
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !996 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !996
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlPKvRS4_E_clESS_ST_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlPKvRS4_E_clESS_ST_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !996
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !996 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !996
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENUlbPPKNS_9type_infoEmE_8__invokeEbSU_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicdcdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlbPPKNS_9type_infoEmE_clEbSU_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJicdcdEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.f:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i10, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %bb.f, %bb.g
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.16..16..sroa_idx, align 16, !tbaa !160
  %i.n = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12, !prof !132

bb.h:                                             ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i11 = icmp eq i32 %i.p, 0
  br i1 %.not.i11, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12:     ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, %bb.h, %bb.i
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %.24..24..sroa_idx, align 8, !tbaa !160
  %i.r = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.j, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14, !prof !132

bb.j:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i13 = icmp eq i32 %i.t, 0
  br i1 %.not.i13, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14:     ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit12, %bb.j, %bb.k
  %.32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.32..32..sroa_idx, align 16, !tbaa !160
  %i.v = tail call i64 @llvm.umin.i64(i64 %1, i64 5) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14
  %i.w = shl nuw nsw i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.w, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENUlRS4_E_8__invokeESR_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.entt::basic_view", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !999
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4viewIKiJcEJEEENS_10basic_viewINS_5get_tIJNS_11storage_forIT_S1_SaINSt12remove_constIS9_E4typeEEE4typeEDpNS8_IT0_S1_SaINSA_ISG_E4typeEEE4typeEEEENS_9exclude_tIJDpNS8_IT1_S1_SaINSA_ISP_E4typeEEE4typeEEEEEENSO_IJDpSP_EEE(ptr dead_on_unwind nonnull writable sret(%"class.entt::basic_view") align 8 %1, ptr noundef nonnull align 8 dereferenceable(336) %0), !noalias !999
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !999
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlRS4_E_clESR_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !999
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlRS4_E_clESR_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !999
  %i.e = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !999 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !999
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlRS4_E_clESR_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer21ro_int_rw_char_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EENSA_INSB_IcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKcKdEEEvPSO_ENKUlRS4_E_clESR_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !999
  store i32 %i.f, ptr %i.a, align 4, !tbaa !83, !noalias !999
  %i.g = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !999 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !999
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !999
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENUlPKvRS4_E_8__invokeESP_SQ_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1471413475), !noalias !1002 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !1002
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1002
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1002
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !1002 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1002
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !1002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1002
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !1002
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !1002 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1002
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSR_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcddEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJcddEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit

_ZN4entt7type_idIcEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIcEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11, !prof !132

bb.f:                                             ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i10, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11:     ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, %bb.f, %bb.g
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.16..16..sroa_idx, align 16, !tbaa !160
  %i.n = tail call i64 @llvm.umin.i64(i64 %1, i64 3) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11
  %i.o = shl nuw nsw i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.o, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENUlRS4_E_8__invokeESO_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1471413475), !noalias !1005 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !1005
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlRS4_E_clESO_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1005
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlRS4_E_clESO_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1005
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !1005 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1005
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlRS4_E_clESO_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17ro_char_rw_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIcS2_SaIcEEES4_EEEEENS_9exclude_tIJEEEEERdEEJKdEEEvPKcENKUlRS4_E_clESO_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1005
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !1005
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !1005 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1005
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENUlPKvRS4_E_8__invokeESP_SQ_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef -1779859874), !noalias !1008 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !1008
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1008
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1008
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !1008 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1008
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlPKvRS4_E_clESP_SQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !1008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1008
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !1008
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !1008 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1008
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSR_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJKddEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i:   ; preds = %bb.e, %bb.d, %bb.c
  %i.f = icmp ne i64 %2, 0                        ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.i, label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %1, align 8, !tbaa !160
  br label %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i

_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit.i.i
  %i.g = zext i1 %i.f to i64
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSR_m.exit: ; preds = %bb.b, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i
  %i.h = phi i64 [ %i.a, %bb.b ], [ %i.g, %_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJiEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm.exit.i ]
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJKddEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit:      ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit

_ZN4entt7type_idIdEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIKdEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idIdEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENUlRS4_E_8__invokeESO_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874), !noalias !1011 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !1011
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlRS4_E_clESO_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1011
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlRS4_E_clESO_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1011
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance), !noalias !1011 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26, !noalias !1011
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlRS4_E_clESO_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer13ro_int_doubleENS_10basic_viewINS_5get_tIJKNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERKdEEJdEEEvPKcENKUlRS4_E_clESO_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1011
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !1011
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIdEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeIdE), !noalias !1011 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1011
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIiE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIiE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIiE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIiE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexIiE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIiE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIiE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIiE5valueEv.exit

_ZN4entt10type_indexIiE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIiE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1779859874, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.197, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIcE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIcE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIcE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIcE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexIcE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIcE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIcE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIcE5valueEv.exit

_ZN4entt10type_indexIcE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIcE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1471413475, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.198, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexIdE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexIdE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexIdE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexIdE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexIdE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexIdE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexIdE5valueEvE5value) #26
  br label %_ZN4entt10type_indexIdE5valueEv.exit

_ZN4entt10type_indexIdE5valueEv.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexIdE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1595207928, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.199, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIPKN4entt16basic_sigh_mixinINS2_13basic_storageIiNS2_6entityESaIiEEENS2_14basic_registryIS5_SaIS5_EEEEEDnEENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN7testing13PrintToStringIPKN4entt16basic_sigh_mixinINS1_13basic_storageIiNS1_6entityESaIiEEENS1_14basic_registryIS4_SaIS4_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing13PrintToStringIDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPKN4entt16basic_sigh_mixinINS2_13basic_storageIiNS2_6entityESaIiEEENS2_14basic_registryIS5_SaIS5_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIDnPKN4entt16basic_sigh_mixinINS2_13basic_storageIiNS2_6entityESaIiEEENS2_14basic_registryIS5_SaIS5_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPKN4entt16basic_sigh_mixinINS2_13basic_storageIiNS2_6entityESaIiEEENS2_14basic_registryIS5_SaIS5_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !100    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !103
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.f = load ptr, ptr %5, align 8, !tbaa !100    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !103
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPKN4entt16basic_sigh_mixinINS2_13basic_storageIiNS2_6entityESaIiEEENS2_14basic_registryIS5_SaIS5_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !100    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !103
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #28
  unreachable

_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %bb.l, %_ZSt12construct_atIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %.0913.i.i.i32, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 48 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40, label %.lr.ph.i.i.i30, !llvm.loop !32

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40: ; preds = %_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.bd, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ce, %_ZSt19__relocate_object_aIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !175
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ci) #27
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit40, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !169
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !170
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !175
  ret void

bb.o:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  %i.cn = tail call ptr @__cxa_begin_catch(ptr %i.cm) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.s unwind label %bb.o

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ck

bb.r:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #28
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEmEEPKvNS_8internal11any_requestERKS1_S4_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !370    ; 4 uses
  switch i8 %0, label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2ImEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !82
  store i64 %i.f, ptr %i.a, align 8, !tbaa !82
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !82
  store i64 %i.g, ptr %i.a, align 8, !tbaa !82
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

bb.g:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !82
  %i.i = load i64, ptr %2, align 8, !tbaa !82
  %i.j = icmp eq i64 %i.h, %i.i
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEmEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.l, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 983627388, ptr %i.m, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEmEEvRKS1_, ptr %i.n, align 8, !tbaa !174
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 1, ptr %i.o, align 4, !tbaa !369
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30, !inline_history !1052 ; 2 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.q, ptr %i.p, align 8, !tbaa !82
  store ptr %i.p, ptr %2, align 8, !tbaa !370
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

_ZN4entt7type_idImEERKNS_9type_infoEv.exit:       ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.h, %bb.a
  %i.r = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance, %bb.b ], [ %i.k, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEmEEvRKS1_(ptr noundef nonnull align 8 dereferenceable(29) %0) #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENUlbPPKNS_9type_infoEmE_8__invokeEbSQ_m(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2) #11 comdat align 2 {
bb.a:
  br i1 %0, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJimEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %1, i64 noundef %2)
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlbPPKNS_9type_infoEmE_clEbSQ_m.exit: ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE17fill_dependenciesIJimEEEmNS_9type_listIJDpT_EEEPPKNS_9type_infoEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.a, align 16, !tbaa !160
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit, !prof !132

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2ImEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt7type_idImEERKNS_9type_infoEv.exit

_ZN4entt7type_idImEERKNS_9type_infoEv.exit:       ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, %bb.d, %bb.e
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance, ptr %.8..8..sroa_idx, align 8, !tbaa !160
  %i.j = tail call i64 @llvm.umin.i64(i64 %1, i64 2) ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4entt7type_idImEERKNS_9type_infoEv.exit
  %i.k = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.k, i1 false), !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4entt7type_idImEERKNS_9type_infoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENUlSK_E_8__invokeESK_(ptr noundef nonnull align 8 dereferenceable(336) %0) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874), !noalias !1055 ; 0 uses
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance acquire, align 8, !noalias !1055
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlSK_E_clESK_.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26, !noalias !1055
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlSK_E_clESK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2ImEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26, !noalias !1055
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance), !noalias !1055 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idImEERKNS_9type_infoEvE8instance) #26, !noalias !1055
  br label %_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlSK_E_clESK_.exit

_ZZN4entt15basic_organizerINS_14basic_registryINS_6entityESaIS2_EEEE7emplaceITnDaXadL_ZN9Organizer17to_args_integrityENS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiS2_SaIiEEES4_EEEEENS_9exclude_tIJEEEEERmRS4_EEJEEEvPKcENKUlSK_E_clESK_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idImEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !118, !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1055
  store i32 %i.g, ptr %i.a, align 4, !tbaa !83, !noalias !1055
  %i.h = call { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tImEEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt13in_place_typeImE), !noalias !1055 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1055
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2ISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS7_SaIS7_EEEEEEEENS_9exclude_tIJEEEEERmRSC_EXadL_ZN9Organizer17to_args_integrityESH_SI_SJ_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEv.exit, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !83
  store i32 %i.d, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value) #26
  br label %_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEv.exit

_ZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexISt17integral_constantIPFvNS_10basic_viewINS_5get_tIJNS_16basic_sigh_mixinINS_13basic_storageIiNS_6entityESaIiEEENS_14basic_registryIS6_SaIS6_EEEEEEEENS_9exclude_tIJEEEEERmRSB_EXadL_ZN9Organizer17to_args_integrityESG_SH_SI_EEEE5valueEvE5value, align 4, !tbaa !83
  store i32 %i.g, ptr %0, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -249988028, ptr %i.h, align 4, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 230, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.200, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tImEjEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.185", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.696", align 8    ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !83     ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !82 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !170
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %i.y = phi ptr [ %i.t, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 10 uses
  %.sroa.0.1.i = phi ptr [ %i.x, %bb.d ], [ %i.o, %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %1, ptr %4, align 8, !tbaa !265, !alias.scope !1060
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %3, ptr %5, align 8, !tbaa !265, !alias.scope !1061
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !408, !alias.scope !1061
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !175
  %.not.i14 = icmp eq ptr %i.y, %i.ad
  br i1 %.not.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !82
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !353
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.af, align 8, !tbaa !367
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i64 0, ptr %i.ag, align 8
  store ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEmEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ah, align 8, !tbaa !180
  store i32 983627388, ptr %i.aj, align 8, !tbaa !368
  store ptr @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEmEEvRKS1_, ptr %i.ai, align 8, !tbaa !174
  store i8 1, ptr %i.ak, align 4, !tbaa !369
  %i.al = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  %i.am = load i32, ptr %3, align 4, !tbaa !83
  %i.an = zext i32 %i.am to i64
  store i64 %i.an, ptr %i.al, align 8, !tbaa !82
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !370
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.z, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEOjEEEEERS5_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEOjEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.pre22 = load ptr, ptr %i.z, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEOjEEEEERS5_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEOjEEEEERS5_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ %.pre22, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !169 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = sdiv exact i64 %i.au, 48                ; 2 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = load ptr, ptr %0, align 8, !tbaa !122   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.k
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !82
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = uitofp i64 %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !307
  %i.bh = fmul float %i.bg, %i.be
  %i.bi = fptoui float %i.bh to i64
  %i.bj = icmp ugt i64 %i.av, %i.bi
  br i1 %i.bj, label %bb.h, label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE18rehash_if_requiredEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tImEOjEEEEERS5_DpOT_.exit
  %i.bk = ashr exact i64 %i.bc, 2
  call void @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bk)
  %.pre23 = load ptr, ptr %i.m, align 8, !tbaa !169 ; 2 uses
  %.pre24 = load ptr, ptr %i.z, align 8, !tbaa !170
  %.pre25 = ptrtoint ptr %.pre24 to i64
  %.pre26 = ptrtoint ptr %.pre23 to i64
  %.pre28 = sub i64 %.pre25, %.pre26
end_hunk_5
