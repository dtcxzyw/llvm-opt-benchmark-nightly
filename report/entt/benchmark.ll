Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/benchmark?download=true
inline.NumInlined: 13778
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE6rehashEm:bb.a
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !305
  %i.bt = zext i32 %i.bs to i64
  %i.bu = and i64 %i.ax, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !304
  store i64 %.022.epil.init, ptr %i.bv, align 8, !tbaa !304
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !439
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store i64 0, ptr %i.b, align 8, !tbaa !304
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !304
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !303
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !304
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !304
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !190
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !303
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS4_EEEEEPKvNS_8internal11any_requestERKS1_S8_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(37) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !422
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = select i1 %i.c, ptr %1, ptr %i.d         ; 2 uses
  switch i8 %0, label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit, !prof !276

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance) #23
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4entt9type_infoC2INS_14basic_registryINS_6entityESaIS3_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance) #23
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance) #23
  br label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(336) %i.e, ptr noundef nonnull align 8 dereferenceable(336) %2) #23, !inline_history !2030
  br label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit

bb.f:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %i.e, %2
  %i.k = select i1 %i.j, ptr %2, ptr null
  br label %_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.f, %bb.e
  %i.l = phi ptr [ %2, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.a ], [ @_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance, %bb.d ], [ @_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance, %bb.c ], [ @_ZZN4entt7type_idINS_14basic_registryINS_6entityESaIS2_EEEEERKNS_9type_infoEvE8instance, %bb.b ]
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9type_infoC2INS_14basic_registryINS_6entityESaIS3_EEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEv.exit, !prof !276

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !305 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN4entt8internal10type_index4nextEvE5value, align 4, !tbaa !305
  store i32 %i.d, ptr @_ZZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value, align 4, !tbaa !305
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value) #23
  br label %_ZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEv.exit

_ZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr @_ZZN4entt10type_indexINS_14basic_registryINS_6entityESaIS2_EEEE5valueEvE5value, align 4, !tbaa !305
  store i32 %i.g, ptr %0, align 8, !tbaa !431
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1058064444, ptr %i.h, align 4, !tbaa !432
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.200, i64 54), ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %3 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %4 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %5 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %6 = alloca %"class.entt::dense_map.21", align 16 ; 9 uses
  %7 = alloca %"class.entt::dense_map.12", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <2 x ptr>, ptr %0, align 8, !tbaa !454
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 24, i1 false)
  %i.h = load <2 x ptr>, ptr %i.c, align 8, !tbaa !455
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.j = load float, ptr %i.e, align 8, !tbaa !462
  %i.k = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #23 ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !190    ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !191
  store <2 x ptr> %i.g, ptr %1, align 8, !tbaa !454
  store ptr %i.b, ptr %i.f, align 8, !tbaa !191
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #26
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !187
  store <2 x ptr> %i.h, ptr %i.q, align 8, !tbaa !455
  store ptr %i.i, ptr %i.u, align 8, !tbaa !187
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.r, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(29) %i.y)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i4.i.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not.i.i.i.i.i.i.i4.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit.i.i
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt4swapIN4entt8internal16registry_contextISaINS0_6entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ae) #26
  br label %_ZSt4swapIN4entt8internal16registry_contextISaINS0_6entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN4entt8internal16registry_contextISaINS0_6entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.j, ptr %i.af, align 8, !tbaa !462
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !454
  store <2 x ptr> %i.ai, ptr %7, align 16, !tbaa !454
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %8 = load ptr, ptr %i.ak, align 8, !tbaa !191
  store ptr %8, ptr %i.aj, align 16, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ag, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load <2 x ptr>, ptr %10, align 8, !tbaa !463
  store <2 x ptr> %i.al, ptr %9, align 8, !tbaa !463
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %14 = load ptr, ptr %13, align 8, !tbaa !412
  store ptr %14, ptr %12, align 8, !tbaa !412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load float, ptr %i.an, align 8, !tbaa !453
  store float %i.ao, ptr %i.am, align 16, !tbaa !453
  %i.ap = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEEaSEOSE_(ptr noundef nonnull align 8 dereferenceable(52) %i.ag, ptr noundef nonnull align 8 dereferenceable(52) %i.ah) #23 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEEaSEOSE_(ptr noundef nonnull align 8 dereferenceable(52) %i.ah, ptr noundef nonnull align 8 dereferenceable(52) %7) #23 ; 0 uses
  call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !454
  store <2 x ptr> %i.at, ptr %6, align 16, !tbaa !454
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = load ptr, ptr %i.av, align 8, !tbaa !191
  store ptr %15, ptr %i.au, align 16, !tbaa !191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ar, i8 0, i64 24, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %17, align 8, !tbaa !464
  store <2 x ptr> %i.aw, ptr %16, align 8, !tbaa !464
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %20 = load ptr, ptr %19, align 8, !tbaa !411
  store ptr %20, ptr %18, align 8, !tbaa !411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load float, ptr %i.ay, align 8, !tbaa !471
  store float %i.az, ptr %i.ax, align 16, !tbaa !471
  %i.ba = call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(52) %i.ar, ptr noundef nonnull align 8 dereferenceable(52) %i.as) #23 ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(52) %i.as, ptr noundef nonnull align 8 dereferenceable(52) %6) #23 ; 0 uses
  call void @_ZN4entt9dense_mapIjSt10shared_ptrINS_8internal16group_descriptorEESt8identitySt8equal_toIvESaISt4pairIKjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  call void @_ZSt4swapIN4entt16basic_sigh_mixinINS0_13basic_storageINS0_6entityES3_SaIS3_EEENS0_14basic_registryIS3_S4_EEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISC_ESt18is_move_assignableISC_EEE5valueEvE4typeERSC_SL_(ptr noundef nonnull align 8 dereferenceable(168) %i.bc, ptr noundef nonnull align 8 dereferenceable(168) %i.bd) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS4_EEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.be, align 8, !tbaa !419, !alias.scope !2039
  store i32 -1058064444, ptr %i.bg, align 8, !tbaa !420, !alias.scope !2039
  store ptr null, ptr %i.bf, align 8, !tbaa !421, !alias.scope !2039
  store i8 3, ptr %i.bh, align 4, !tbaa !422, !alias.scope !2039
  store ptr %0, ptr %5, align 8, !tbaa !177, !alias.scope !2039
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !151
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %5) #23, !inline_history !48
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt4swapIN4entt8internal16registry_contextISaINS0_6entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(37) %5)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i unwind label %bb.g, !inline_history !49

bb.g:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #25, !inline_history !48
  unreachable

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i: ; preds = %bb.f, %_ZSt4swapIN4entt8internal16registry_contextISaINS0_6entityEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bo = load ptr, ptr %10, align 8, !tbaa !259  ; 2 uses
  %i.bp = load ptr, ptr %11, align 8, !tbaa !260  ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 36
  br label %bb.h

bb.h:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.cd, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS4_EEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.br, align 8, !tbaa !419, !alias.scope !2040
  store i32 -1058064444, ptr %i.bt, align 8, !tbaa !420, !alias.scope !2040
  store ptr null, ptr %i.bs, align 8, !tbaa !421, !alias.scope !2040
  store i8 3, ptr %i.bu, align 4, !tbaa !422, !alias.scope !2040
  store ptr %0, ptr %4, align 8, !tbaa !177, !alias.scope !2040
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !151
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !48
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i4.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(37) %4)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i unwind label %bb.j, !inline_history !49

bb.j:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #25, !inline_history !48
  unreachable

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 32 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bp
  br i1 %i.ce, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit, label %bb.h

_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS4_EEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.cf, align 8, !tbaa !419, !alias.scope !2041
  store i32 -1058064444, ptr %i.ch, align 8, !tbaa !420, !alias.scope !2041
  store ptr null, ptr %i.cg, align 8, !tbaa !421, !alias.scope !2041
  store i8 3, ptr %i.ci, align 4, !tbaa !422, !alias.scope !2041
  store ptr %1, ptr %3, align 8, !tbaa !177, !alias.scope !2041
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !151
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %3) #23, !inline_history !48
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i6, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i7, label %bb.k

bb.k:                                             ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(37) %3)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i7 unwind label %bb.l, !inline_history !49

bb.l:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #25, !inline_history !48
  unreachable

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i7: ; preds = %bb.k, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !259 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !260 ; 2 uses
  %i.ct = icmp eq ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit12, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i7
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.m

bb.m:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11, %.lr.ph.i8
  %.sroa.06.09.i9 = phi ptr [ %i.cq, %.lr.ph.i8 ], [ %i.dg, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i9, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedENS_14basic_registryINS_6entityESaIS4_EEEEEPKvNS_8internal11any_requestERKS1_S8_, ptr %i.cu, align 8, !tbaa !419, !alias.scope !2042
  store i32 -1058064444, ptr %i.cw, align 8, !tbaa !420, !alias.scope !2042
  store ptr null, ptr %i.cv, align 8, !tbaa !421, !alias.scope !2042
  store i8 3, ptr %i.cx, align 4, !tbaa !422, !alias.scope !2042
  store ptr %1, ptr %2, align 8, !tbaa !177, !alias.scope !2042
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !151
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %2) #23, !inline_history !48
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i4.i10 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i4.i10, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(37) %2)
          to label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11 unwind label %bb.o, !inline_history !49

bb.o:                                             ; preds = %bb.n
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #25, !inline_history !48
  unreachable

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i9, i64 32 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cs
  br i1 %i.dh, label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit12, label %bb.m

_ZN4entt14basic_registryINS_6entityESaIS1_EE6rebindEv.exit12: ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit5.i11, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4bindIRNS_14basic_registryIS1_S2_EEEEvOT_.exit.i7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN4entt16basic_sigh_mixinINS0_13basic_storageINS0_6entityES3_SaIS3_EEENS0_14basic_registryIS3_S4_EEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISC_ESt18is_move_assignableISC_EEE5valueEvE4typeERSC_SL_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::basic_sigh_mixin", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !406
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %i.e, align 8, !tbaa !409
  store ptr %3, ptr %i.d, align 8, !tbaa !409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = load <2 x ptr>, ptr %5, align 8, !tbaa !244
  store <2 x ptr> %i.f, ptr %4, align 8, !tbaa !244
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !408
  store ptr %9, ptr %7, align 8, !tbaa !408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !416
  store ptr %i.i, ptr %i.g, align 8, !tbaa !416
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8, !tbaa !246   ; 2 uses
  store i8 %i.l, ptr %i.j, align 8, !tbaa !246
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.l, 2
  %i.o = select i1 %.not.i.i.i.i, i64 0, i64 1048575
  %i.p = load i64, ptr %i.n, align 8, !tbaa !304
  store i64 %i.o, ptr %i.n, align 8, !tbaa !304
  store i64 %i.p, ptr %i.m, align 8, !tbaa !247
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !403
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEEE, i64 16), ptr %2, align 8, !tbaa !151
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.t, align 8, !tbaa !244
  %i.ah = load <2 x ptr>, ptr %i.w, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %10 = load ptr, ptr %i.aa, align 8, !tbaa !405
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.y, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !405
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  tail call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  %i.an = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !244
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !244
  store <2 x ptr> %i.an, ptr %i.s, align 8, !tbaa !244
  %i.ao = load <2 x ptr>, ptr %i.af, align 8, !tbaa !214
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !214
  store <2 x ptr> %i.ao, ptr %i.v, align 8, !tbaa !214
  %i.ap = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !214
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !214
  store <2 x ptr> %i.ap, ptr %i.x, align 8, !tbaa !214
  %i.aq = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !214
  store ptr %10, ptr %i.aj, align 8, !tbaa !405
  store <2 x ptr> %i.aq, ptr %i.z, align 8, !tbaa !214
  %14 = load <2 x ptr>, ptr %12, align 8, !tbaa !214
  store <2 x ptr> %i.am, ptr %11, align 8, !tbaa !214
  store ptr %i.al, ptr %13, align 8, !tbaa !405
  store <2 x ptr> %14, ptr %i.ac, align 8, !tbaa !214
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !406
  %i.av = load <2 x ptr>, ptr %i.a, align 8, !tbaa !406
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !406
  store <2 x ptr> %i.au, ptr %i.a, align 8, !tbaa !406
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.at, align 8, !tbaa !244
  %i.ay = load <2 x ptr>, ptr %i.d, align 8, !tbaa !244
  store <2 x ptr> %i.ay, ptr %i.at, align 8, !tbaa !244
  store <2 x ptr> %i.ax, ptr %i.d, align 8, !tbaa !244
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !244
  %i.ba = load <2 x ptr>, ptr %6, align 8, !tbaa !244
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !244
  store <2 x ptr> %i.az, ptr %6, align 8, !tbaa !244
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !472
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !472
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !472
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !472
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !473
  %i.bg = load i8, ptr %i.j, align 8, !tbaa !473
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !473
  store i8 %i.bf, ptr %i.j, align 8, !tbaa !473
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !304
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !304
  store i64 %i.r, ptr %i.ar, align 8, !tbaa !304
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !304
  store <2 x i64> %i.bj, ptr %i.m, align 8, !tbaa !304
  call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !454
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !454
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  store ptr %i.f, ptr %i.b, align 8, !tbaa !191
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #26
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !181  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !187
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !455
  store <2 x ptr> %i.q, ptr %i.j, align 8, !tbaa !455
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  store ptr %i.s, ptr %i.o, align 8, !tbaa !187
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !186  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(29) %i.v)
          to label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.y, %i.n
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEEvPT_.exit.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = ptrtoint ptr %i.l to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ab) #26
  br label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit

_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEESaIS6_EESt8equal_toIvEEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !462
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ad, ptr %i.ae, align 8, !tbaa !462
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEEaSEOSE_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !454
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !454
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  store ptr %i.f, ptr %i.b, align 8, !tbaa !191
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #26
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !259  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !412
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !463
  store <2 x ptr> %i.q, ptr %i.j, align 8, !tbaa !463
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !412
  store ptr %i.s, ptr %i.o, align 8, !tbaa !412
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !314
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !315
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !2043
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !2043
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !305
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityESaIS5_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
end_hunk_0
